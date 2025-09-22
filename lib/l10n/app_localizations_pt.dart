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

  @override
  String get settingsHelpCentralTitle => 'Central de Ajuda';

  @override
  String get settingsHelpCentralIntro1 =>
      '\nSe você estiver enfrentando problemas ou tiver dúvidas sobre como usar o aplicativo, estamos aqui para ajudar!';

  @override
  String get settingsHelpCentralIntro2 =>
      '\nAcesse nossa Central de Ajuda para encontrar respostas para perguntas frequentes, tutoriais e orientações passo a passo. Caso precise de suporte adicional, você também poderá entrar em contato com a nossa equipe diretamente por aqui.';

  @override
  String get settingsHelpCentralConfirm => 'Confirmar';

  @override
  String get settingsHelpCentralEmailLaunchError =>
      'Não foi possível abrir o aplicativo de e-mail.';

  @override
  String get settingsHelpCentralEmailSubject => 'Ajuda com o Aplicativo';

  @override
  String get settingsHelpCentralEmailBody =>
      'Descreva aqui a sua necessidade...';

  @override
  String get settingsFeedbackTitle => 'Relatar um problema';

  @override
  String get settingsFeedbackIntro1 =>
      '\nSe você encontrou algum problema enquanto usava o aplicativo, pedimos desculpas pelo transtorno. Sua colaboração é muito importante para que possamos melhorar continuamente a sua experiência. Por favor, descreva o erro encontrado com o máximo de detalhes possível.';

  @override
  String get settingsFeedbackIntro2 =>
      '\nNossa equipe analisará o seu relato o mais rápido possível e trabalhará para corrigir o problema. Agradecemos pela sua ajuda!';

  @override
  String get settingsLegalInformationTitle => 'Informações Legais';

  @override
  String get settingsLegalInformationItemProject =>
      'Informações Legais do Projeto';

  @override
  String get settingsLegalInformationItemGoogle =>
      'Informações Legais do Google';

  @override
  String get settingsLegalInformationItemTermsPolicy => 'Termos e Política';

  @override
  String get settingsLegalInformationItemTermsOfUse => 'Termos de Uso';

  @override
  String get settingsLegalInformationItemPrivacyPolicy =>
      'Política de Privacidade';

  @override
  String get settingsLegalInformationDetailProjectTitle =>
      'Informações do Projeto';

  @override
  String get settingsLegalInformationDetailProjectContent =>
      'Este aplicativo foi desenvolvido com o propósito de facilitar a vida dos usuários através da tecnologia, respeitando as leis de proteção de dados e diretrizes de uso de software livre e proprietário.\n\nTodas as marcas, logos e conteúdos utilizados no aplicativo pertencem aos seus respectivos proprietários. O projeto respeita os princípios de transparência, responsabilidade e ética digital.';

  @override
  String get settingsLegalInformationDetailGoogleTitle =>
      'Informações do Google';

  @override
  String get settingsLegalInformationDetailGoogleContent =>
      'Este aplicativo pode utilizar APIs e serviços fornecidos pelo Google, incluindo Firebase, Google Maps, Google Sign-In, entre outros.\n\nA utilização desses serviços está sujeita aos Termos de Serviço do Google e à Política de Privacidade do Google. O uso do aplicativo implica na aceitação dessas condições, bem como no cumprimento das práticas exigidas pelas APIs do Google.';

  @override
  String get settingsLegalInformationDetailTermsPolicyTitle =>
      'Termos e Política';

  @override
  String get settingsLegalInformationDetailTermsPolicyContent =>
      'Ao utilizar este aplicativo, você concorda com nossos Termos de Uso e Política de Privacidade.\n\nNosso compromisso é garantir a transparência no tratamento dos seus dados, respeitando sua privacidade e protegendo suas informações pessoais.\n\nRecomendamos a leitura completa dos termos e políticas para compreender seus direitos e deveres como usuário.';

  @override
  String get settingsLegalInformationDetailTermsOfUseTitle => 'Termos de Uso';

  @override
  String get settingsLegalInformationDetailTermsOfUseContent =>
      'O uso deste aplicativo é permitido apenas para fins lícitos e conforme previsto nestes Termos de Uso.\n\nO usuário compromete-se a:\n- Utilizar o aplicativo de forma ética;\n- Não compartilhar conteúdos maliciosos ou ilegais;\n- Respeitar os demais usuários e as funcionalidades do sistema.\n\nO descumprimento destes termos poderá resultar em suspensão ou exclusão da conta.';

  @override
  String get settingsLegalInformationDetailPrivacyPolicyTitle =>
      'Política de Privacidade';

  @override
  String get settingsLegalInformationDetailPrivacyPolicyContent =>
      'Coletamos e utilizamos suas informações pessoais apenas quando necessário para fornecer e melhorar nossos serviços.\n\nSeus dados são tratados com segurança e não são compartilhados com terceiros sem sua permissão, exceto quando exigido por lei.\n\nVocê pode, a qualquer momento, solicitar a exclusão ou alteração dos seus dados, conforme previsto na Lei Geral de Proteção de Dados (LGPD).';
}
