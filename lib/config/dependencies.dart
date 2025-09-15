import 'package:auto_injector/auto_injector.dart';
import 'package:logger/web.dart';
import 'package:nextmind_mobile_v2/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile_v2/data/repositories/auth/remote_auth_repository.dart';
import 'package:nextmind_mobile_v2/data/services/auth/auth_client_http.dart';
import 'package:nextmind_mobile_v2/data/services/auth/auth_local_storage.dart';
import 'package:nextmind_mobile_v2/data/services/auth/auth_service.dart';
import 'package:nextmind_mobile_v2/data/services/client_http.dart';
import 'package:nextmind_mobile_v2/data/services/local_storage.dart';
import 'package:nextmind_mobile_v2/ui/auth/sign_in/viewmodels/signin_viewmodel.dart';

final injector = AutoInjector();

void setupDependencies() {
  injector.addSingleton(Logger.new);
  injector.addSingleton(LocalStorage.new);
  injector.addSingleton(ClientHttp.new);
  injector.addSingleton(AuthLocalStorage.new);
  injector.addSingleton(AuthClientHttp.new);
  injector.addSingleton(AuthService.new);
  injector.addSingleton<AuthRepository>(RemoteAuthRepository.new);
  injector.addSingleton(SigninViewmodel.new);

  injector.commit();
}
