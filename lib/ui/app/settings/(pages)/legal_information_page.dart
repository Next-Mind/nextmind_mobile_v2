import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/widgets/settings_item_widget.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/widgets/settings_legal_info_details_widget.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';

class LegalInformationPage extends StatefulWidget {
  const LegalInformationPage({super.key});

  @override
  State<LegalInformationPage> createState() => _LegalInformationPageState();
}

class _LegalInformationPageState extends State<LegalInformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.settingsLegalInformationTitle,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(Dimens.mediumPadding),
        children: [
          SizedBox(height: Dimens.extraLargePadding),
          SettingsItem(
            text: AppLocalizations.of(
              context,
            )!.settingsLegalInformationDetailProjectTitle,
            onTap: () => _showDialogPage(
              LegalDetailScreen(
                title: AppLocalizations.of(
                  context,
                )!.settingsLegalInformationDetailProjectTitle,
                content: AppLocalizations.of(
                  context,
                )!.settingsLegalInformationDetailProjectContent,
              ),
            ),
          ),
          SizedBox(height: Dimens.mediumPadding),
          SettingsItem(
            text: AppLocalizations.of(
              context,
            )!.settingsLegalInformationDetailGoogleTitle,
            onTap: () => _showDialogPage(
              LegalDetailScreen(
                title: AppLocalizations.of(
                  context,
                )!.settingsLegalInformationDetailGoogleTitle,
                content: AppLocalizations.of(
                  context,
                )!.settingsLegalInformationDetailGoogleContent,
              ),
            ),
          ),
          SizedBox(height: Dimens.mediumPadding),
          SettingsItem(
            text: AppLocalizations.of(
              context,
            )!.settingsLegalInformationDetailTermsPolicyTitle,
            onTap: () => _showDialogPage(
              LegalDetailScreen(
                title: AppLocalizations.of(
                  context,
                )!.settingsLegalInformationDetailTermsPolicyTitle,
                content: AppLocalizations.of(
                  context,
                )!.settingsLegalInformationDetailTermsPolicyContent,
              ),
            ),
          ),
          SizedBox(height: Dimens.mediumPadding),
          SettingsItem(
            text: AppLocalizations.of(
              context,
            )!.settingsLegalInformationDetailTermsOfUseTitle,
            onTap: () => _showDialogPage(
              LegalDetailScreen(
                title: AppLocalizations.of(
                  context,
                )!.settingsLegalInformationDetailTermsOfUseTitle,
                content: AppLocalizations.of(
                  context,
                )!.settingsLegalInformationDetailTermsOfUseContent,
              ),
            ),
          ),
          SizedBox(height: Dimens.mediumPadding),
          SettingsItem(
            text: AppLocalizations.of(
              context,
            )!.settingsLegalInformationDetailPrivacyPolicyTitle,
            onTap: () => _showDialogPage(
              LegalDetailScreen(
                title: AppLocalizations.of(
                  context,
                )!.settingsLegalInformationDetailPrivacyPolicyTitle,
                content: AppLocalizations.of(
                  context,
                )!.settingsLegalInformationDetailPrivacyPolicyContent,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showDialogPage(Widget page) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return Dialog.fullscreen(child: page);
      },
    );
  }
}
