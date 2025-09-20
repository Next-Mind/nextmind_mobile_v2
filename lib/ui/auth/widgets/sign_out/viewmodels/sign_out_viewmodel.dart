import 'package:logger/web.dart';
import 'package:nextmind_mobile_v2/data/repositories/auth/auth_repository.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class SignOutViewmodel {
  final AuthRepository _authRepository;
  final Logger _log;
  SignOutViewmodel(this._authRepository, this._log) {
    _log.d("Iniciando $runtimeType");
  }

  late final logoutCommand = Command0(_logout);

  AsyncResult<Unit> _logout() {
    return _authRepository.logout();
  }
}
