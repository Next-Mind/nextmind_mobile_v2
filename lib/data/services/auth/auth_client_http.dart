import 'package:nextmind_mobile_v2/data/services/client_http.dart';
import 'package:nextmind_mobile_v2/domain/models/users/user.dart';
import 'package:result_dart/result_dart.dart';

class AuthClientHttp {
  final ClientHttp _clientHttp;

  AuthClientHttp(this._clientHttp);

  AsyncResult<LoggedUser> login(String token) async {
    final response = await _clientHttp.post('/auth/google/token', {
      'token': token,
    });
    return response.map((response) => LoggedUser.fromJson(response.data));
  }
}
