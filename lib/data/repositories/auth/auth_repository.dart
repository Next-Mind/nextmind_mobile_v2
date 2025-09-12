import 'package:nextmind_mobile_v2/domain/models/users/user.dart';
import 'package:result_dart/result_dart.dart';

abstract interface class AuthRepository {
  AsyncResult<LoggedUser> getUser();
  AsyncResult<LoggedUser> login(String token);
  AsyncResult<Unit> logout();
  Stream<User> userObserver();
}
