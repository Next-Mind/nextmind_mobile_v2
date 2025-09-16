import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:nextmind_mobile_v2/data/services/client_http.dart';
import 'package:nextmind_mobile_v2/domain/models/users/user.dart';
import 'package:result_dart/result_dart.dart';

class AuthClientHttp {
  final ClientHttp _clientHttp;
  final Logger _log;

  AuthClientHttp(this._clientHttp, this._log);

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
