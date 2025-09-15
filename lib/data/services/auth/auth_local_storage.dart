import 'dart:convert';

import 'package:logger/logger.dart';
import 'package:nextmind_mobile_v2/data/services/local_storage.dart';
import 'package:nextmind_mobile_v2/domain/models/users/user.dart';
import 'package:result_dart/result_dart.dart';

const _userKey = String.fromEnvironment(
  'LOCAL_STORAGE_USER_KEY',
  defaultValue: '_userKey',
);

class AuthLocalStorage {
  final LocalStorage _localStorage;
  final Logger _log;

  AuthLocalStorage(this._localStorage, this._log);

  AsyncResult<LoggedUser> getUser() {
    return _localStorage //
        .getData(_userKey)
        .map((json) => LoggedUser.fromJson(jsonDecode(json)));
  }

  AsyncResult<String> getUserAccessToken() async {
    LoggedUser user =
        await _localStorage //
            .getData(_userKey)
            .map((json) => LoggedUser.fromJson(jsonDecode(json)))
            .getOrThrow();

    return Success(user.token);
  }

  AsyncResult<LoggedUser> saveUser(LoggedUser user) {
    _log.d("Salvando usuário no local storage");
    return _localStorage //
        .saveData(_userKey, jsonEncode(user.toJson()))
        .pure(user);
  }

  AsyncResult<Unit> removeUser() {
    return _localStorage.removeData(_userKey);
  }
}
