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
  String get settingsSecurityChangePassword => 'Change Password';

  @override
  String get settingsSecuritySectionApp => 'App Settings';

  @override
  String get settingsSecurityRequirePasswordOnOpen =>
      'Require password on launch';

  @override
  String get settingsSecuritySetPassword => 'Set Password';

  @override
  String get settingsHelpCentralTitle => 'Help Center';

  @override
  String get settingsHelpCentralIntro1 =>
      '\nIf you’re experiencing issues or have questions about how to use the app, we’re here to help!';

  @override
  String get settingsHelpCentralIntro2 =>
      '\nVisit our Help Center to find answers to frequently asked questions, tutorials, and step-by-step guides. If you need additional support, you can also contact our team directly from here.';

  @override
  String get settingsHelpCentralConfirm => 'Confirm';

  @override
  String get settingsHelpCentralEmailLaunchError =>
      'Couldn\'t open the email app.';

  @override
  String get settingsHelpCentralEmailSubject => 'Help with the App';

  @override
  String get settingsHelpCentralEmailBody => 'Describe your need here...';

  @override
  String get settingsFeedbackTitle => 'Report a Problem';

  @override
  String get settingsFeedbackIntro1 =>
      '\nIf you encountered any issue while using the app, we apologize for the inconvenience. Your feedback is very important to help us continuously improve your experience. Please describe the error you found with as much detail as possible.';

  @override
  String get settingsFeedbackIntro2 =>
      '\nOur team will review your report as quickly as possible and work to fix the issue. Thank you for your help!';

  @override
  String get settingsLegalInformationTitle => 'Legal Information';

  @override
  String get settingsLegalInformationItemProject => 'Project Legal Information';

  @override
  String get settingsLegalInformationItemGoogle => 'Google Legal Information';

  @override
  String get settingsLegalInformationItemTermsPolicy => 'Terms & Policy';

  @override
  String get settingsLegalInformationItemTermsOfUse => 'Terms of Use';

  @override
  String get settingsLegalInformationItemPrivacyPolicy => 'Privacy Policy';

  @override
  String get settingsLegalInformationDetailProjectTitle =>
      'Project Information';

  @override
  String get settingsLegalInformationDetailProjectContent =>
      'This app was developed to make users’ lives easier through technology, in compliance with data protection laws and guidelines for the use of free and proprietary software.\n\nAll trademarks, logos, and content used in the app belong to their respective owners. The project upholds the principles of transparency, accountability, and digital ethics.';

  @override
  String get settingsLegalInformationDetailGoogleTitle => 'Google Information';

  @override
  String get settingsLegalInformationDetailGoogleContent =>
      'This app may use APIs and services provided by Google, including Firebase, Google Maps, Google Sign-In, among others.\n\nUse of these services is subject to Google’s Terms of Service and Google’s Privacy Policy. Using the app implies acceptance of these conditions, as well as compliance with the practices required by Google APIs.';

  @override
  String get settingsLegalInformationDetailTermsPolicyTitle => 'Terms & Policy';

  @override
  String get settingsLegalInformationDetailTermsPolicyContent =>
      'By using this app, you agree to our Terms of Use and Privacy Policy.\n\nOur commitment is to ensure transparency in the processing of your data, respecting your privacy and protecting your personal information.\n\nWe recommend reading the full terms and policies to understand your rights and responsibilities as a user.';

  @override
  String get settingsLegalInformationDetailTermsOfUseTitle => 'Terms of Use';

  @override
  String get settingsLegalInformationDetailTermsOfUseContent =>
      'Use of this app is allowed only for lawful purposes and as provided in these Terms of Use.\n\nThe user agrees to:\n- Use the app ethically;\n- Not share malicious or illegal content;\n- Respect other users and the system’s features.\n\nFailure to comply with these terms may result in account suspension or deletion.';

  @override
  String get settingsLegalInformationDetailPrivacyPolicyTitle =>
      'Privacy Policy';

  @override
  String get settingsLegalInformationDetailPrivacyPolicyContent =>
      'We collect and use your personal information only when necessary to provide and improve our services.\n\nYour data is handled securely and is not shared with third parties without your permission, except when required by law.\n\nYou may request deletion or modification of your data at any time, as provided for by the Brazilian General Data Protection Law (LGPD).';

  @override
  String get chatAppBarTitle => 'Messages';

  @override
  String get chatSearchHint => 'Search...';

  @override
  String get chatAddButton => 'Add';

  @override
  String get chatEditNameTitle => 'Edit Name';

  @override
  String get chatNameLabel => 'Name';

  @override
  String get chatCancel => 'Cancel';

  @override
  String get chatSave => 'Save';

  @override
  String get chatEmptyTitle => 'You don’t have any conversations yet.';

  @override
  String get chatEmptySubtitle => 'Add contacts to start chatting.';

  @override
  String get chatEmptyAddContact => 'Add contact';

  @override
  String get chatConfirm => 'Confirm';

  @override
  String get chatConfirmDeleteMessage =>
      'Are you sure you want to delete this contact?';

  @override
  String get chatDelete => 'Delete';

  @override
  String get chatEmptyCta => 'Add contact';

  @override
  String get genericErrorLabel => 'An error has occurred';

  @override
  String get reloadLabel => 'Reload';

  @override
  String get chatEditTitle => 'Edit name';

  @override
  String get chatEditFieldLabel => 'Name';

  @override
  String get confirmLabel => 'Confirm';

  @override
  String get chatDeleteConfirm =>
      'Are you sure you want to delete this contact?';

  @override
  String get cancelLabel => 'Cancel';

  @override
  String get saveLabel => 'Save';

  @override
  String get deleteLabel => 'Delete';

  @override
  String get fieldNotEmpty => 'This field can’t be empty';

  @override
  String get appointmentsTitle => 'Appointments';

  @override
  String get categoriesLabel => 'Categories';

  @override
  String get doctorsLabel => 'All Doctors';

  @override
  String get seeAllLabel => 'See All';

  @override
  String get bookNowLabel => 'Book';

  @override
  String get banner1Title => 'Medical Center';

  @override
  String get banner1Subtitle =>
      'Book with qualified professionals and receive fast care.';

  @override
  String get banner2Title => 'Take care of yourself';

  @override
  String get banner2Subtitle =>
      'Teleconsultation available 24/7 with specialists.';

  @override
  String get doctorLabel => 'Dr.';

  @override
  String get specialtyCardio => 'Cardiologist';

  @override
  String get doctorScheduleDescription => 'Available Mon-Fri – 9am to 6pm';

  @override
  String get accountAppointmentHistory => 'Appointment History';
}
