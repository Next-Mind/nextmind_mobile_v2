import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_pt.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('pt'),
  ];

  /// Label for the email input field on the sign-in form
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get fieldHintTextEmail;

  /// Label for the password input field on the sign-in form
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get fieldHintTextPassword;

  /// Text of the button that navigates to the Forgot Password screen
  ///
  /// In en, this message translates to:
  /// **'Forgot password'**
  String get forgotPassword;

  /// Primary button text to submit the sign-in form
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get signIn;

  /// Button text to start Google OAuth sign-in
  ///
  /// In en, this message translates to:
  /// **'Sign in with Google'**
  String get signInWithGoogle;

  /// Text of the button/link that navigates to the sign-up screen
  ///
  /// In en, this message translates to:
  /// **'Create an account'**
  String get createAccount;

  /// Error message shown in the SnackBar when login fails. Includes the failure reason.
  ///
  /// In en, this message translates to:
  /// **'Failure: {reason}'**
  String failureWithReason(String reason);

  /// Placeholder for the name input on the sign-up form
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get fieldHintTextName;

  /// Placeholder for the birthday input (use local date format, e.g., MM/DD/YYYY or DD/MM/YYYY)
  ///
  /// In en, this message translates to:
  /// **'Birthday'**
  String get fieldHintTextBirthday;

  /// Placeholder for the RA/Student ID field
  ///
  /// In en, this message translates to:
  /// **'Student ID (RA)'**
  String get fieldHintTextRa;

  /// Primary button text to submit the sign-up form
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get signUp;

  /// Send button label
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get textSendButton;

  /// Success sending email
  ///
  /// In en, this message translates to:
  /// **'Success! Please check your email'**
  String get successSendEmail;

  /// Title of forgot password page
  ///
  /// In en, this message translates to:
  /// **'Forgot Password'**
  String get forgotPasswordPageTitle;

  /// Section title for the recent posts on the home screen
  ///
  /// In en, this message translates to:
  /// **'Latest posts'**
  String get titleLastPosts;

  /// Title shown when there is no upcoming appointment
  ///
  /// In en, this message translates to:
  /// **'No appointments scheduled'**
  String get nextAppointmentEmptyTitle;

  /// Call to action when there are no appointments
  ///
  /// In en, this message translates to:
  /// **'Schedule an appointment'**
  String get nextAppointmentEmptyHint;

  /// Button to start scheduling when there are no appointments
  ///
  /// In en, this message translates to:
  /// **'Schedule'**
  String get nextAppointmentEmptyButton;

  /// Title shown before the relative date text of the next appointment
  ///
  /// In en, this message translates to:
  /// **'Next appointment in'**
  String get nextAppointmentTitleUpcoming;

  /// Relative text for the next appointment. 0 = Today; 1 = 1 day; >1 = N days.
  ///
  /// In en, this message translates to:
  /// **'{days, plural, =0 {Today} one {{days} day} other {{days} days}}'**
  String nextAppointmentDateRelative(int days);

  /// Helper text for an upcoming appointment
  ///
  /// In en, this message translates to:
  /// **'Confirm your attendance or cancel the appointment'**
  String get nextAppointmentHint;

  /// Button to confirm attendance for the next appointment
  ///
  /// In en, this message translates to:
  /// **'Confirm attendance'**
  String get nextAppointmentButtonConfirm;

  /// Error message for an unrecognized appointment type (internal/developer use)
  ///
  /// In en, this message translates to:
  /// **'Unknown appointment type'**
  String get unknownAppointmentType;

  /// Label for the Home item in the bottom navigation bar
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// Label for the Appointments/Schedule item in the bottom navigation bar
  ///
  /// In en, this message translates to:
  /// **'Appointments'**
  String get navAppointment;

  /// Label for the Chat/Messages item in the bottom navigation bar
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get navChat;

  /// Label for the Settings item in the bottom navigation bar
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get navSettings;

  /// Label for the Settings item in the bottom navigation bar
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsPageTitle;

  /// Label for the Settings item in the bottom navigation bar
  ///
  /// In en, this message translates to:
  /// **'Settings and Preferences'**
  String get settingsPageSubtitle;

  /// Label for the Notification Settings
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get settingsLabelNotifications;

  /// Label for the Security Settings
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get settingsLabelSecurity;

  /// Label for the Dark Mode Settings
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get settingsLabelDarkMode;

  /// Label for the Language Settings
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingsLabelLanguage;

  /// Label for the Support Settings
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get settingsLabelSupport;

  /// Label for the Help Center Settings
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get settingsLabelHelpCenter;

  /// Label for the Feedback Settings
  ///
  /// In en, this message translates to:
  /// **'Feedback'**
  String get settingsLabelFeedback;

  /// Label for the About Settings
  ///
  /// In en, this message translates to:
  /// **'About App'**
  String get settingsLabelAbout;

  /// Label for the Legal Information Settings
  ///
  /// In en, this message translates to:
  /// **'Legal Information'**
  String get settingsLegalInformation;

  /// Label for the Software Information Settings
  ///
  /// In en, this message translates to:
  /// **'Software Information'**
  String get settingsSoftwareInformation;

  /// AppBar title on the user account screen
  ///
  /// In en, this message translates to:
  /// **'My Account'**
  String get settingsUserAccountTitle;

  /// Message shown when the user is not logged in
  ///
  /// In en, this message translates to:
  /// **'User not authenticated'**
  String get settingsUserAccountUnauthenticated;

  /// Header for the profile information section
  ///
  /// In en, this message translates to:
  /// **'Profile information'**
  String get settingsUserAccountSectionProfileInfo;

  /// Label for the Name field
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get settingsUserAccountFieldName;

  /// Label for the birth date field
  ///
  /// In en, this message translates to:
  /// **'Date of birth'**
  String get settingsUserAccountFieldBirthDate;

  /// Label for the Email field
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get settingsUserAccountFieldEmail;

  /// Label for the RA (academic registration) field
  ///
  /// In en, this message translates to:
  /// **'Academic ID'**
  String get settingsUserAccountFieldRA;

  /// Text shown when a field is missing
  ///
  /// In en, this message translates to:
  /// **'Not provided'**
  String get settingsUserAccountNotProvided;

  /// Label for the sign-out button
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get settingsUserAccountSignOut;

  /// Notifications screen title (AppBar)
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get settingsNotificationsTitle;

  /// Switch to enable/disable all notifications
  ///
  /// In en, this message translates to:
  /// **'Allow Notifications'**
  String get settingsNotificationsAllowNotifications;

  /// Section title for alerts
  ///
  /// In en, this message translates to:
  /// **'Alerts'**
  String get settingsNotificationsSectionAlerts;

  /// Radio option to allow alarm reminders
  ///
  /// In en, this message translates to:
  /// **'Allow Alarm Reminder'**
  String get settingsNotificationsAllowAlarmReminder;

  /// Radio option for silent mode
  ///
  /// In en, this message translates to:
  /// **'Silent'**
  String get settingsNotificationsSilent;

  /// Section title for messages
  ///
  /// In en, this message translates to:
  /// **'Messages'**
  String get settingsNotificationsSectionMessages;

  /// Switch for message/conversation sounds
  ///
  /// In en, this message translates to:
  /// **'Conversation Sounds'**
  String get settingsNotificationsConversationSounds;

  /// Generic label for the 'All' option when shown to users
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get settingsNotificationsOptionAll;

  /// Generic label for the 'none' option when shown to users
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get settingsNotificationsOptionNone;

  /// Security screen title (AppBar)
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get settingsSecurityTitle;

  /// Item to open the change password screen
  ///
  /// In en, this message translates to:
  /// **'Change account password'**
  String get settingsSecurityChangePassword;

  /// Section title for application settings
  ///
  /// In en, this message translates to:
  /// **'App Settings'**
  String get settingsSecuritySectionApp;

  /// Toggle requiring a password when opening the app
  ///
  /// In en, this message translates to:
  /// **'Require password on launch'**
  String get settingsSecurityRequirePasswordOnOpen;

  /// Item to set/change the app password when requirement is enabled
  ///
  /// In en, this message translates to:
  /// **'Set Password'**
  String get settingsSecuritySetPassword;

  /// Help Center screen title (AppBar)
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get settingsHelpCentralTitle;

  /// First introductory paragraph on the Help Center screen
  ///
  /// In en, this message translates to:
  /// **'\nIf you’re experiencing issues or have questions about how to use the app, we’re here to help!'**
  String get settingsHelpCentralIntro1;

  /// Second paragraph with guidance and contact suggestion
  ///
  /// In en, this message translates to:
  /// **'\nVisit our Help Center to find answers to frequently asked questions, tutorials, and step-by-step guides. If you need additional support, you can also contact our team directly from here.'**
  String get settingsHelpCentralIntro2;

  /// Primary button label to start support/contact
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get settingsHelpCentralConfirm;

  /// Error message when failing to open the external email app
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t open the email app.'**
  String get settingsHelpCentralEmailLaunchError;

  /// Default support email subject
  ///
  /// In en, this message translates to:
  /// **'Help with the App'**
  String get settingsHelpCentralEmailSubject;

  /// Default support email body
  ///
  /// In en, this message translates to:
  /// **'Describe your need here...'**
  String get settingsHelpCentralEmailBody;

  /// Feedback screen title (AppBar)
  ///
  /// In en, this message translates to:
  /// **'Report a Problem'**
  String get settingsFeedbackTitle;

  /// Intro paragraph apologizing and requesting detailed error description
  ///
  /// In en, this message translates to:
  /// **'\nIf you encountered any issue while using the app, we apologize for the inconvenience. Your feedback is very important to help us continuously improve your experience. Please describe the error you found with as much detail as possible.'**
  String get settingsFeedbackIntro1;

  /// Paragraph stating the team will review and thanking the user
  ///
  /// In en, this message translates to:
  /// **'\nOur team will review your report as quickly as possible and work to fix the issue. Thank you for your help!'**
  String get settingsFeedbackIntro2;

  /// Main screen title (AppBar)
  ///
  /// In en, this message translates to:
  /// **'Legal Information'**
  String get settingsLegalInformationTitle;

  /// List item that opens project legal details
  ///
  /// In en, this message translates to:
  /// **'Project Legal Information'**
  String get settingsLegalInformationItemProject;

  /// List item that opens Google legal details
  ///
  /// In en, this message translates to:
  /// **'Google Legal Information'**
  String get settingsLegalInformationItemGoogle;

  /// List item for terms and policy
  ///
  /// In en, this message translates to:
  /// **'Terms & Policy'**
  String get settingsLegalInformationItemTermsPolicy;

  /// List item for terms of use
  ///
  /// In en, this message translates to:
  /// **'Terms of Use'**
  String get settingsLegalInformationItemTermsOfUse;

  /// List item for privacy policy
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get settingsLegalInformationItemPrivacyPolicy;

  /// Detail page title for project legal info
  ///
  /// In en, this message translates to:
  /// **'Project Information'**
  String get settingsLegalInformationDetailProjectTitle;

  /// Detail content for project legal info
  ///
  /// In en, this message translates to:
  /// **'This app was developed to make users’ lives easier through technology, in compliance with data protection laws and guidelines for the use of free and proprietary software.\n\nAll trademarks, logos, and content used in the app belong to their respective owners. The project upholds the principles of transparency, accountability, and digital ethics.'**
  String get settingsLegalInformationDetailProjectContent;

  /// Detail page title for Google legal info
  ///
  /// In en, this message translates to:
  /// **'Google Information'**
  String get settingsLegalInformationDetailGoogleTitle;

  /// Detail content for Google legal info
  ///
  /// In en, this message translates to:
  /// **'This app may use APIs and services provided by Google, including Firebase, Google Maps, Google Sign-In, among others.\n\nUse of these services is subject to Google’s Terms of Service and Google’s Privacy Policy. Using the app implies acceptance of these conditions, as well as compliance with the practices required by Google APIs.'**
  String get settingsLegalInformationDetailGoogleContent;

  /// Detail page title for Terms & Policy
  ///
  /// In en, this message translates to:
  /// **'Terms & Policy'**
  String get settingsLegalInformationDetailTermsPolicyTitle;

  /// Detail content for Terms & Policy
  ///
  /// In en, this message translates to:
  /// **'By using this app, you agree to our Terms of Use and Privacy Policy.\n\nOur commitment is to ensure transparency in the processing of your data, respecting your privacy and protecting your personal information.\n\nWe recommend reading the full terms and policies to understand your rights and responsibilities as a user.'**
  String get settingsLegalInformationDetailTermsPolicyContent;

  /// Detail page title for Terms of Use
  ///
  /// In en, this message translates to:
  /// **'Terms of Use'**
  String get settingsLegalInformationDetailTermsOfUseTitle;

  /// Detail content for Terms of Use (includes bullet list)
  ///
  /// In en, this message translates to:
  /// **'Use of this app is allowed only for lawful purposes and as provided in these Terms of Use.\n\nThe user agrees to:\n- Use the app ethically;\n- Not share malicious or illegal content;\n- Respect other users and the system’s features.\n\nFailure to comply with these terms may result in account suspension or deletion.'**
  String get settingsLegalInformationDetailTermsOfUseContent;

  /// Detail page title for Privacy Policy
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get settingsLegalInformationDetailPrivacyPolicyTitle;

  /// Detail content for Privacy Policy
  ///
  /// In en, this message translates to:
  /// **'We collect and use your personal information only when necessary to provide and improve our services.\n\nYour data is handled securely and is not shared with third parties without your permission, except when required by law.\n\nYou may request deletion or modification of your data at any time, as provided for by the Brazilian General Data Protection Law (LGPD).'**
  String get settingsLegalInformationDetailPrivacyPolicyContent;

  /// AppBar title for the contacts/conversations list
  ///
  /// In en, this message translates to:
  /// **'Messages'**
  String get chatAppBarTitle;

  /// Placeholder for the search text field
  ///
  /// In en, this message translates to:
  /// **'Search...'**
  String get chatSearchHint;

  /// Button to add a new contact in the dialog
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get chatAddButton;

  /// Dialog title to edit the contact name
  ///
  /// In en, this message translates to:
  /// **'Edit Name'**
  String get chatEditNameTitle;

  /// Label for the name text field
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get chatNameLabel;

  /// Label for cancel buttons in dialogs
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get chatCancel;

  /// Label for save buttons in dialogs
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get chatSave;

  /// Empty state title when there are no conversations
  ///
  /// In en, this message translates to:
  /// **'You don’t have any conversations yet.'**
  String get chatEmptyTitle;

  /// Empty state subtitle guiding the user
  ///
  /// In en, this message translates to:
  /// **'Add contacts to start chatting.'**
  String get chatEmptySubtitle;

  /// Button to add a contact in the empty state
  ///
  /// In en, this message translates to:
  /// **'Add contact'**
  String get chatEmptyAddContact;

  /// Generic confirmation dialog title
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get chatConfirm;

  /// Confirmation message for deleting a contact
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this contact?'**
  String get chatConfirmDeleteMessage;

  /// Label for delete buttons
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get chatDelete;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'pt'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'pt':
      return AppLocalizationsPt();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
