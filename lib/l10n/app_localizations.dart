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
