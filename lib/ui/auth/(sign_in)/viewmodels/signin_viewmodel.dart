import 'package:flutter/material.dart';
import 'package:logger/web.dart';
import 'package:nextmind_mobile_v2/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile_v2/domain/dtos/credentials.dart';
import 'package:nextmind_mobile_v2/domain/models/users/user.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class SigninViewmodel extends ChangeNotifier {
  final AuthRepository _authRepository;
  final Logger _log;

  SigninViewmodel(this._authRepository, this._log) {
    _log.d("Iniciando $runtimeType");
  }

  late final loginWithGoogleCommand = Command0(_loginWithGoogle);
  late final loginWithEmailCommand = Command1(_loginWithEmail);
  late final logoutCommand = Command0(_logout);

  Stream<User> userObserver() {
    return _authRepository.userObserver();
  }

  AsyncResult<User> _loginWithGoogle() async {
    final user = await _authRepository.signInWithGoogle().getOrThrow();
    return Success(user);
  }

  AsyncResult<User> _loginWithEmail(Credentials credentials) async {
    final user = await _authRepository
        .signInWithEmail(credentials)
        .getOrThrow();
    return Success(user);
  }

  AsyncResult<Unit> _logout() async {
    return _authRepository.logout();
  }
}
