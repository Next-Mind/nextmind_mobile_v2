import 'package:nextmind_mobile_v2/data/services/local_storage.dart';
import 'package:result_dart/result_dart.dart';

const _userKey = String.fromEnvironment(
  'LOCAL_STORAGE_USER_KEY',
  defaultValue: '_userKey',
);

class AuthLocalStorage {
  final LocalStorage _localStorage;

  AuthLocalStorage(this._localStorage);

  // AsyncResult<LoggedUser> getUser() {
  //   return _localStorage //
  //   .getData(_userKey)
  //   .map((json) => LoggedUser.fromJson(json));
  // }
}
