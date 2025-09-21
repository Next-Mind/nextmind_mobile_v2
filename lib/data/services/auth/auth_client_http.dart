import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:nextmind_mobile_v2/data/services/auth/auth_local_storage.dart';
import 'package:nextmind_mobile_v2/data/services/client_http.dart';
import 'package:nextmind_mobile_v2/domain/models/users/user.dart';
import 'package:result_dart/result_dart.dart';

class AuthClientHttp {
  final ClientHttp _clientHttp;
  final AuthLocalStorage _authLocalStorage;
  final Logger _log;

  AuthClientHttp(this._clientHttp, this._log, this._authLocalStorage);

  AsyncResult<LoggedUser> getUserDetails() async {
    try {
      final response = _clientHttp.get(
        "/users/me?with[]=addresses&with[]=phones&with[]=studentProfile",
      );
      return response.map((response) async {
        response.data['data']['token'] = await _authLocalStorage
            .getUserAccessToken()
            .getOrThrow();
        final user = LoggedUser.fromJson(response.data['data']);
        return user;
      });
    } catch (e) {
      return Failure(Exception(e.toString()));
    }
  }

  AsyncResult<LoggedUser> login(UserCredential userCredential) async {
    try {
      final accessToken = await userCredential.user!.getIdToken();
      _log.d("Id Token: $accessToken");

      _log.d("Tentando autenticar na API");
      final response = await _clientHttp.post('/auth/google/token', {
        'id_token': accessToken,
      });
      return response.map((response) {
        _log.d('tentando converter o json');
        final user = LoggedUser.fromJson(response.data);
        _log.d('USUÁRIO: ${user.toString()}');
        return user;
      });
    } catch (e) {
      _log.e('Erro na request: ${e.toString()}');
      return Failure(Exception('Erro no auth_client_http'));
    }
  }
}
