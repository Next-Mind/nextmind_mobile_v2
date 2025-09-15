import 'dart:async';

import 'package:logger/logger.dart';
import 'package:nextmind_mobile_v2/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile_v2/data/services/auth/auth_client_http.dart';
import 'package:nextmind_mobile_v2/data/services/auth/auth_local_storage.dart';
import 'package:nextmind_mobile_v2/data/services/auth/auth_service.dart';
import 'package:nextmind_mobile_v2/domain/dtos/credentials.dart';
import 'package:nextmind_mobile_v2/domain/models/users/user.dart';
import 'package:nextmind_mobile_v2/domain/validators/credentials_validator.dart';
import 'package:nextmind_mobile_v2/utils/extensions/lucid_validator_extension.dart';
import 'package:result_dart/result_dart.dart';

class RemoteAuthRepository implements AuthRepository {
  final AuthLocalStorage _authLocalStorage;
  final AuthClientHttp _authClientHttp;
  final AuthService _authService;
  final Logger _log;

  RemoteAuthRepository(
    this._authLocalStorage,
    this._authClientHttp,
    this._authService,
    this._log,
  );

  final _streamController = StreamController<User>.broadcast();

  @override
  AsyncResult<LoggedUser> getUser() {
    return _authLocalStorage.getUser();
  }

  @override
  AsyncResult<LoggedUser> signUpWithEmail(Credentials credentials) {
    final validator = CredentialsValidator();

    return validator //
        .validateResult(credentials)
        .flatMap(_authService.signUpWithEmail)
        .flatMap(_authClientHttp.login)
        .flatMap(_authLocalStorage.saveUser)
        .onSuccess(_streamController.add);
  }

  @override
  AsyncResult<LoggedUser> signInWithEmail(Credentials credentials) {
    final validator = CredentialsValidator();

    return validator //
        .validateResult(credentials)
        .flatMap(_authService.signInWithEmail)
        .flatMap(_authClientHttp.login)
        .flatMap(_authLocalStorage.saveUser)
        .onSuccess(_streamController.add);
  }

  @override
  AsyncResult<LoggedUser> signInWithGoogle() {
    return _authService //
        .signInWithGoogle()
        .flatMap(_authClientHttp.login)
        .flatMap(_authLocalStorage.saveUser)
        .onSuccess((loggedUser) => _streamController.add(loggedUser));
  }

  @override
  AsyncResult<Unit> logout() {
    return _authService //
        .signOut()
        .flatMap((_) => _authLocalStorage.removeUser())
        .onSuccess((_) => _streamController.add(NotLoggedUser()));
  }

  @override
  Stream<User> userObserver() {
    return _streamController.stream;
  }
}
