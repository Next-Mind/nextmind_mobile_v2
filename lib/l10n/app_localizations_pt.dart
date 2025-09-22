// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get fieldHintTextEmail => 'E-mail';

  @override
  String get fieldHintTextPassword => 'Senha';

  @override
  String get forgotPassword => 'Esqueci minha senha';

  @override
  String get signIn => 'Entrar';

  @override
  String get signInWithGoogle => 'Entrar com o Google';

  @override
  String get createAccount => 'Crie uma conta';

  @override
  String failureWithReason(String reason) {
    return 'Falha: $reason';
  }

  @override
  String get fieldHintTextName => 'Nome completo';

  @override
  String get fieldHintTextBirthday => 'Data de nascimento';

  @override
  String get fieldHintTextRa => 'RA';

  @override
  String get signUp => 'Cadastrar';

  @override
  String get textSendButton => 'Enviar';

  @override
  String get successSendEmail => 'Sucesso! Por favor, verifique seu email';

  @override
  String get forgotPasswordPageTitle => 'Esqueci minha senha';

  @override
  String get titleLastPosts => 'Últimas publicações';

  @override
  String get nextAppointmentEmptyTitle => 'Não há consultas agendadas';

  @override
  String get nextAppointmentEmptyHint => 'Agende uma consulta';

  @override
  String get nextAppointmentEmptyButton => 'Agendar';

  @override
  String get nextAppointmentTitleUpcoming => 'Próxima consulta em';

  @override
  String nextAppointmentDateRelative(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dias',
      one: '$days dia',
      zero: 'Hoje',
    );
    return '$_temp0';
  }

  @override
  String get nextAppointmentHint =>
      'Confirme sua presença ou cancele a consulta';

  @override
  String get nextAppointmentButtonConfirm => 'Confirmar Presença';

  @override
  String get unknownAppointmentType => 'Tipo de consulta desconhecido';

  @override
  String get navHome => 'Início';

  @override
  String get navAppointment => 'Consultas';

  @override
  String get navChat => 'Chat';

  @override
  String get navSettings => 'Configs.';

  @override
  String get settingsPageTitle => 'Configurações';

  @override
  String get settingsPageSubtitle => 'Configurações e Preferências';

  @override
  String get settingsLabelNotifications => 'Notificações';

  @override
  String get settingsLabelSecurity => 'Segurança';

  @override
  String get settingsLabelDarkMode => 'Modo escuro';

  @override
  String get settingsLabelLanguage => 'Idioma';

  @override
  String get settingsLabelSupport => 'Suporte';

  @override
  String get settingsLabelHelpCenter => 'Central de ajuda';

  @override
  String get settingsLabelFeedback => 'Feedback';

  @override
  String get settingsLabelAbout => 'Sobre o aplicativo';

  @override
  String get settingsLegalInformation => 'Informações legais';

  @override
  String get settingsSoftwareInformation => 'Informações do software';

  @override
  String get settingsUserAccountTitle => 'Minha Conta';

  @override
  String get settingsUserAccountUnauthenticated => 'Usuário não autenticado';

  @override
  String get settingsUserAccountSectionProfileInfo => 'Informações de Perfil';

  @override
  String get settingsUserAccountFieldName => 'Nome';

  @override
  String get settingsUserAccountFieldBirthDate => 'Data';

  @override
  String get settingsUserAccountFieldEmail => 'Email';

  @override
  String get settingsUserAccountFieldRA => 'RA';

  @override
  String get settingsUserAccountNotProvided => 'Não informado';

  @override
  String get settingsUserAccountSignOut => 'Sair da Conta';

  @override
  String get settingsNotificationsTitle => 'Notificações';

  @override
  String get settingsNotificationsAllowNotifications => 'Permitir Notificações';

  @override
  String get settingsNotificationsSectionAlerts => 'Alertas';

  @override
  String get settingsNotificationsAllowAlarmReminder =>
      'Permitir lembrete do Alarme';

  @override
  String get settingsNotificationsSilent => 'Silencioso';

  @override
  String get settingsNotificationsSectionMessages => 'Mensagens';

  @override
  String get settingsNotificationsConversationSounds => 'Sons de Conversa';

  @override
  String get settingsNotificationsOptionAll => 'Todos';

  @override
  String get settingsNotificationsOptionNone => 'Nenhum';

  @override
  String get settingsSecurityTitle => 'Segurança';

  @override
  String get settingsSecurityChangePassword => 'Alterar a senha da conta';

  @override
  String get settingsSecuritySectionApp => 'Config. do App';

  @override
  String get settingsSecurityRequirePasswordOnOpen => 'Senha ao Abrir o App';

  @override
  String get settingsSecuritySetPassword => 'Definir Senha';
}
