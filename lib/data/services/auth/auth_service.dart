import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/logger.dart';
import 'package:nextmind_mobile_v2/domain/dtos/credentials.dart';
import 'package:result_dart/result_dart.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn.instance;
  final Logger _log;
  bool _initialized = false;

  final List<String> authorizationScopes = ['openid', 'email', 'profile'];

  AuthService(this._log);

  Future<void> _setupGoogleSignIn() async {
    if (!_initialized) {
      _log.d('Iniciando Google Sign In');
      await _googleSignIn.initialize();
      _initialized = true;
    }
  }

  AsyncResult<UserCredential> signUpWithEmail(Credentials credentials) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(
            email: credentials.email,
            password: credentials.password,
          );
      return Success(userCredential);
    } on FirebaseAuthException catch (e) {
      return Failure(Exception(e));
    }
  }

  AsyncResult<UserCredential> signInWithEmail(Credentials credentials) async {
    try {
      _log.d("Tentando logar no firebase");
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(
            email: credentials.email,
            password: credentials.password,
          );
      return Success(userCredential);
    } on FirebaseAuthException catch (e) {
      return Failure(Exception(e));
    }
  }

  AsyncResult<UserCredential> signInWithGoogle() async {
    try {
      await _setupGoogleSignIn();
      final GoogleSignInAccount user = await _googleSignIn.authenticate();

      final idToken = user.authentication.idToken;

      GoogleSignInClientAuthorization? auth = await user.authorizationClient
          .authorizationForScopes(authorizationScopes);

      auth ??= await user.authorizationClient.authorizeScopes(
        authorizationScopes,
      );

      final accessToken = auth.accessToken;
      _log.d("Access token: $accessToken");

      final googleAuthCredential = GoogleAuthProvider.credential(
        accessToken: accessToken,
        idToken: idToken,
      );
      final userCredential = await _firebaseAuth.signInWithCredential(
        googleAuthCredential,
      );

      _log.d("Id Token: ${userCredential.user!.getIdToken()}");
      return Success(userCredential);
    } on GoogleSignInException catch (e) {
      return Failure(e);
    } catch (e) {
      return Failure(Exception('unexpected: $e'));
    } finally {
      _initialized = false;
    }
  }

  AsyncResult<Unit> signOut() async {
    await _firebaseAuth.signOut();
    await _googleSignIn.signOut();
    return Success(unit);
  }
}
