import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/(pages)/feedback_page.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/(pages)/help_central_page.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/(pages)/language_page.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/(pages)/legal_information_page.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/(pages)/notifications_page.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/(pages)/security_page.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/(pages)/software_information_page.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/(pages)/user_account_page.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/viewmodels/settings_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/widgets/settings_item_widget.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/widgets/settings_section_title_widget.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/widgets/settings_switch_widget.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/widgets/user_info_card_widget.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';
import 'package:result_command/result_command.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final viewModel = injector.get<SettingsViewmodel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.settingsPageTitle),
        centerTitle: true,
      ),
      body: ListenableBuilder(
        listenable: viewModel.fetchUserCommand,
        builder: (context, child) {
          return viewModel.fetchUserCommand.value is RunningCommand
              ? Center(child: CircularProgressIndicator())
              : _buildSettings(context, viewModel);
        },
      ),
    );
  }

  Widget _buildSettings(BuildContext context, SettingsViewmodel viewModel) {
    return ListView(
      padding: const EdgeInsets.all(Dimens.mediumPadding),
      children: [
        UserInfoCard(
          user: viewModel.userLogged,
          onTap: () {
            _showDialogPage(UserAccountPage());
          },
        ),

        const Divider(height: Dimens.mediumPadding),

        SettingsSectionTitle(
          title: AppLocalizations.of(context)!.settingsPageSubtitle,
        ),
        SettingsItem(
          icon: Icons.notifications_none,
          text: AppLocalizations.of(context)!.settingsLabelNotifications,
          onTap: () {
            _showDialogPage(NotificationsPage());
          },
        ),
        SizedBox(height: Dimens.mediumPadding),
        SettingsItem(
          text: AppLocalizations.of(context)!.settingsLabelSecurity,
          onTap: () {
            _showDialogPage(SecurityPage());
          },
          icon: Icons.security,
        ),
        SizedBox(height: Dimens.mediumPadding),
        SettingsItemSwitch(
          icon: Icons.dark_mode_outlined,
          text: AppLocalizations.of(context)!.settingsLabelDarkMode,
          value: false,
          onChanged: (val) {}, //
        ),
        SizedBox(height: Dimens.mediumPadding),
        SettingsItem(
          icon: Icons.language,
          text: AppLocalizations.of(context)!.settingsLabelLanguage,
          onTap: () {
            _showDialogPage(LanguagePage());
          },
        ),
        const Divider(height: Dimens.extraLargePadding),
        SettingsSectionTitle(
          title: AppLocalizations.of(context)!.settingsLabelSupport,
        ),
        SettingsItem(
          icon: Icons.help_outline,
          text: AppLocalizations.of(context)!.settingsLabelHelpCenter,
          onTap: () {
            _showDialogPage(HelpCentralPage());
          },
        ),
        SizedBox(height: Dimens.mediumPadding),
        SettingsItem(
          icon: Icons.flag_outlined,
          text: AppLocalizations.of(context)!.settingsLabelFeedback,
          onTap: () {
            _showDialogPage(FeedbackPage());
          },
        ),

        const Divider(height: Dimens.extraLargePadding),

        // Sobre o aplicativo
        SettingsSectionTitle(
          title: AppLocalizations.of(context)!.settingsLabelAbout,
        ),
        SettingsItem(
          icon: Icons.info_outline,
          text: AppLocalizations.of(context)!.settingsLegalInformation,
          onTap: () {
            _showDialogPage(LegalInformationPage());
          },
        ),
        SizedBox(height: Dimens.mediumPadding),
        SettingsItem(
          icon: Icons.developer_board,
          text: AppLocalizations.of(context)!.settingsSoftwareInformation,
          onTap: () {
            _showDialogPage(SoftwareInformationPage());
          },
        ),
      ],
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
