import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/viewmodels/language_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/widgets/settings_item_widget.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  bool _sameLocale(Locale a, Locale b) =>
      a.languageCode == b.languageCode &&
      (a.countryCode ?? '') == (b.countryCode ?? '');

  @override
  Widget build(BuildContext context) {
    final viewModel = injector.get<LanguageViewmodel>();
    final current = Localizations.localeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.settingsLabelLanguage),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: Dimens.smallPadding),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: viewModel.languages.length,
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: Dimens.mediumPadding,
                  vertical: Dimens.smallPadding,
                ),
                separatorBuilder: (_, __) =>
                    SizedBox(height: Dimens.smallPadding),
                itemBuilder: (context, index) {
                  final locale = viewModel.languages[index];
                  final isSelected = _sameLocale(locale, current);
                  final text =
                      locale.toLanguageTag() + (isSelected ? ' (Atual)' : '');
                  return SettingsItem(
                    icon: Icons.language,
                    text: text,
                    onTap: () => viewModel.changeLocaleCommand.execute(locale),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
