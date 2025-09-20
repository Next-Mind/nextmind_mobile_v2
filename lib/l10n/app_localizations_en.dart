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
}
