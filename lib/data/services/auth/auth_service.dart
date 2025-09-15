import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/logger.dart';
import 'package:nextmind_mobile_v2/domain/dtos/credentials.dart';
import 'package:result_dart/result_dart.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn.instance;
  final Logger _log;

  final List<String> authorizationScopes = ['openid', 'email', 'profile'];

  AuthService(this._log) {
    _setupGoogleSignIn();
  }

  void _setupGoogleSignIn() async {
    _log.d('Iniciando Google Sign In');
    await _googleSignIn.initialize();
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
      final GoogleSignInAccount user = await _googleSignIn.authenticate();

      final idToken = user.authentication.idToken;
      _log.d("Id Token: $idToken");

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

      return Success(userCredential);
    } on GoogleSignInException catch (e) {
      return Failure(e);
    } catch (e) {
      return Failure(Exception('unexpected: $e'));
    }
  }

  AsyncResult<Unit> signOut() async {
    await _firebaseAuth.signOut();
    await _googleSignIn.signOut();
    return Success(unit);
  }
}
