import 'package:auto_injector/auto_injector.dart';
import 'package:logger/web.dart';
import 'package:nextmind_mobile_v2/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile_v2/data/repositories/auth/remote_auth_repository.dart';
import 'package:nextmind_mobile_v2/data/services/auth/auth_client_http.dart';
import 'package:nextmind_mobile_v2/data/services/auth/auth_local_storage.dart';
import 'package:nextmind_mobile_v2/data/services/auth/auth_service.dart';
import 'package:nextmind_mobile_v2/data/services/client_http.dart';
import 'package:nextmind_mobile_v2/data/services/local_storage.dart';
import 'package:nextmind_mobile_v2/main_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/auth/(sign_in)/viewmodels/forgot_password_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/auth/(sign_in)/viewmodels/signin_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/auth/(sign_up)/viewmodels/signup_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/auth/widgets/password_field/viewmodels/password_field_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/auth/widgets/sign_out/viewmodels/sign_out_viewmodel.dart';

final injector = AutoInjector();

void setupDependencies() {
  injector.addSingleton(Logger.new);
  injector.addSingleton(LocalStorage.new);
  injector.addSingleton(ClientHttp.new);
  injector.addSingleton(AuthLocalStorage.new);
  injector.addSingleton(AuthClientHttp.new);
  injector.addSingleton(AuthService.new);
  injector.addSingleton<AuthRepository>(RemoteAuthRepository.new);
  injector.addSingleton(PasswordFieldViewmodel.new);
  injector.addSingleton(ForgotPasswordViewmodel.new);
  injector.addSingleton(SigninViewmodel.new);
  injector.addSingleton(MainViewmodel.new);
  injector.addSingleton(SignOutViewmodel.new);
  injector.addSingleton(SignupViewmodel.new);

  injector.commit();
}
