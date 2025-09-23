import 'package:auto_injector/auto_injector.dart';
import 'package:logger/web.dart';
import 'package:nextmind_mobile_v2/data/repositories/appointments/appointment_repository.dart';
import 'package:nextmind_mobile_v2/data/repositories/appointments/local_appointment_repository.dart';
import 'package:nextmind_mobile_v2/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile_v2/data/repositories/auth/remote_auth_repository.dart';
import 'package:nextmind_mobile_v2/data/repositories/contact/contact_repository.dart';
import 'package:nextmind_mobile_v2/data/repositories/contact/remote_contact_repository.dart';
import 'package:nextmind_mobile_v2/data/repositories/posts/posts_repository.dart';
import 'package:nextmind_mobile_v2/data/repositories/posts/remote_posts_repository.dart';
import 'package:nextmind_mobile_v2/data/services/appointment/appointment_local_storage.dart';
import 'package:nextmind_mobile_v2/data/services/auth/auth_client_http.dart';
import 'package:nextmind_mobile_v2/data/services/auth/auth_local_storage.dart';
import 'package:nextmind_mobile_v2/data/services/auth/auth_service.dart';
import 'package:nextmind_mobile_v2/data/services/client_http.dart';
import 'package:nextmind_mobile_v2/data/services/contact/contact_client_http.dart';
import 'package:nextmind_mobile_v2/data/services/local_storage.dart';
import 'package:nextmind_mobile_v2/data/services/post/post_client_http.dart';
import 'package:nextmind_mobile_v2/main_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/app/chat/viewmodels/chat_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/app/home/viewmodels/home_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/app/home/viewmodels/linear_calendar_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/app/home/viewmodels/next_appointment_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/app/home/viewmodels/post_carousel_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/viewmodels/feedback_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/viewmodels/help_central_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/viewmodels/language_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/viewmodels/notifications_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/viewmodels/security_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/viewmodels/settings_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/viewmodels/user_account_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/app/widgets/viewmodels/bottom_navbar_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/auth/(sign_in)/viewmodels/forgot_password_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/auth/(sign_in)/viewmodels/signin_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/auth/(sign_up)/viewmodels/signup_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/auth/widgets/password_field/viewmodels/password_field_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/auth/widgets/sign_out/viewmodels/sign_out_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/core/widgets/user_avatar/viewmodels/user_avatar_viewmodel.dart';

final injector = AutoInjector();

void setupDependencies() {
  injector.addSingleton(Logger.new);
  injector.addSingleton(LocalStorage.new);
  injector.addSingleton(ClientHttp.new);
  injector.addSingleton(AuthLocalStorage.new);
  injector.addSingleton(AuthClientHttp.new);
  injector.addSingleton(AuthService.new);
  injector.addSingleton<AuthRepository>(RemoteAuthRepository.new);
  injector.addLazySingleton(PasswordFieldViewmodel.new);
  injector.addLazySingleton(ForgotPasswordViewmodel.new);
  injector.addLazySingleton(SigninViewmodel.new);
  injector.addSingleton(MainViewmodel.new);
  injector.addLazySingleton(SignOutViewmodel.new);
  injector.addLazySingleton(SignupViewmodel.new);
  injector.addLazySingleton(BottomNavbarViewmodel.new);
  injector.addLazySingleton(HomeViewmodel.new);
  injector.addLazySingleton(UserAvatarViewmodel.new);
  injector.addLazySingleton(LinearCalendarViewmodel.new);
  injector.addLazySingleton(AppointmentLocalStorage.new);
  injector.addLazySingleton<AppointmentRepository>(
    LocalAppointmentRepository.new,
  );
  injector.addLazySingleton(NextAppointmentViewmodel.new);

  injector.addLazySingleton(PostClientHttp.new);
  injector.addLazySingleton<PostsRepository>(RemotePostsRepository.new);
  injector.addLazySingleton(PostCarouselViewmodel.new);

  injector.addLazySingleton(SettingsViewmodel.new);

  injector.addLazySingleton(UserAccountViewmodel.new);

  injector.addLazySingleton(LanguageViewmodel.new);

  injector.addLazySingleton(NotificationsViewmodel.new);

  injector.addLazySingleton(SecurityViewmodel.new);

  injector.addLazySingleton(HelpCentralViewmodel.new);
  injector.addLazySingleton(FeedbackViewmodel.new);

  injector.addLazySingleton(ContactClientHttp.new);
  injector.addLazySingleton<ContactRepository>(RemoteContactRepository.new);
  injector.addLazySingleton(ChatViewmodel.new);

  injector.commit();
}
