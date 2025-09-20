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
  String get navSettings => 'Configurações';
}
