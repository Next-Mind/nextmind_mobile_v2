// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get fieldHintTextEmail => 'Email';

  @override
  String get fieldHintTextPassword => 'Password';

  @override
  String get forgotPassword => 'Forgot password';

  @override
  String get signIn => 'Sign in';

  @override
  String get signInWithGoogle => 'Sign in with Google';

  @override
  String get createAccount => 'Create an account';

  @override
  String failureWithReason(String reason) {
    return 'Failure: $reason';
  }

  @override
  String get fieldHintTextName => 'Full name';

  @override
  String get fieldHintTextBirthday => 'Birthday';

  @override
  String get fieldHintTextRa => 'Student ID (RA)';

  @override
  String get signUp => 'Sign up';

  @override
  String get textSendButton => 'Send';

  @override
  String get successSendEmail => 'Success! Please check your email';

  @override
  String get forgotPasswordPageTitle => 'Forgot Password';

  @override
  String get titleLastPosts => 'Latest posts';

  @override
  String get nextAppointmentEmptyTitle => 'No appointments scheduled';

  @override
  String get nextAppointmentEmptyHint => 'Schedule an appointment';

  @override
  String get nextAppointmentEmptyButton => 'Schedule';

  @override
  String get nextAppointmentTitleUpcoming => 'Next appointment in';

  @override
  String nextAppointmentDateRelative(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days days',
      one: '$days day',
      zero: 'Today',
    );
    return '$_temp0';
  }

  @override
  String get nextAppointmentHint =>
      'Confirm your attendance or cancel the appointment';

  @override
  String get nextAppointmentButtonConfirm => 'Confirm attendance';

  @override
  String get unknownAppointmentType => 'Unknown appointment type';

  @override
  String get navHome => 'Home';

  @override
  String get navAppointment => 'Appointments';

  @override
  String get navChat => 'Chat';

  @override
  String get navSettings => 'Settings';

  @override
  String get settingsPageTitle => 'Settings';

  @override
  String get settingsPageSubtitle => 'Settings and Preferences';

  @override
  String get settingsLabelNotifications => 'Notifications';

  @override
  String get settingsLabelSecurity => 'Security';

  @override
  String get settingsLabelDarkMode => 'Dark Mode';

  @override
  String get settingsLabelLanguage => 'Language';

  @override
  String get settingsLabelSupport => 'Support';

  @override
  String get settingsLabelHelpCenter => 'Help Center';

  @override
  String get settingsLabelFeedback => 'Feedback';

  @override
  String get settingsLabelAbout => 'About App';

  @override
  String get settingsLegalInformation => 'Legal Information';

  @override
  String get settingsSoftwareInformation => 'Software Information';

  @override
  String get settingsUserAccountTitle => 'My Account';

  @override
  String get settingsUserAccountUnauthenticated => 'User not authenticated';

  @override
  String get settingsUserAccountSectionProfileInfo => 'Profile information';

  @override
  String get settingsUserAccountFieldName => 'Name';

  @override
  String get settingsUserAccountFieldBirthDate => 'Date of birth';

  @override
  String get settingsUserAccountFieldEmail => 'Email';

  @override
  String get settingsUserAccountFieldRA => 'Academic ID';

  @override
  String get settingsUserAccountNotProvided => 'Not provided';

  @override
  String get settingsUserAccountSignOut => 'Sign out';

  @override
  String get settingsNotificationsTitle => 'Notifications';

  @override
  String get settingsNotificationsAllowNotifications => 'Allow Notifications';

  @override
  String get settingsNotificationsSectionAlerts => 'Alerts';

  @override
  String get settingsNotificationsAllowAlarmReminder => 'Allow Alarm Reminder';

  @override
  String get settingsNotificationsSilent => 'Silent';

  @override
  String get settingsNotificationsSectionMessages => 'Messages';

  @override
  String get settingsNotificationsConversationSounds => 'Conversation Sounds';

  @override
  String get settingsNotificationsOptionAll => 'All';

  @override
  String get settingsNotificationsOptionNone => 'None';

  @override
  String get settingsSecurityTitle => 'Security';

  @override
  String get settingsSecurityChangePassword => 'Change account password';

  @override
  String get settingsSecuritySectionApp => 'App Settings';

  @override
  String get settingsSecurityRequirePasswordOnOpen =>
      'Require password on launch';

  @override
  String get settingsSecuritySetPassword => 'Set Password';
}
