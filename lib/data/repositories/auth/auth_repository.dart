import 'package:nextmind_mobile_v2/domain/dtos/credentials.dart';
import 'package:nextmind_mobile_v2/domain/models/users/user.dart';
import 'package:result_dart/result_dart.dart';

abstract interface class AuthRepository {
  AsyncResult<LoggedUser> getUser();
  Stream<User> userObserver();

  AsyncResult<LoggedUser> signUpWithEmail(Credentials credentials);
  AsyncResult<LoggedUser> signInWithEmail(Credentials credentials);
  AsyncResult<LoggedUser> signInWithGoogle();
  AsyncResult<Unit> logout();
}
