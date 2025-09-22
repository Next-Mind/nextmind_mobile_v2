import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class LanguageViewmodel {
  final List<Locale> languages = AppLocalizations.supportedLocales;

  late final changeLocaleCommand = Command1(_changeLocale);

  AsyncResult<Unit> _changeLocale(Locale locale) async {
    return Success(unit);
  }
}
