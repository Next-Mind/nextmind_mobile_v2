import 'package:nextmind_mobile_v2/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile_v2/domain/models/users/user.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class UserAccountViewmodel {
  final AuthRepository _authRepository;
  User user = NotLoggedUser();
  LoggedUser get userLogged => user as LoggedUser;

  late final fetchUserCommand = Command0(_fetchUser);
  UserAccountViewmodel(this._authRepository) {
    fetchUserCommand.execute();
  }

  AsyncResult<LoggedUser> _fetchUser() async {
    final result = await _authRepository.getUser();

    return result.fold(
      (user) {
        this.user = user;
        return Success(user as LoggedUser);
      },
      (failure) {
        return Failure(failure);
      },
    );
  }
}
