import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:nextmind_mobile_v2/main.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/viewmodels/settings_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/widgets/settings_item_widget.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/widgets/settings_switch_widget.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/widgets/user_info_card_widget.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';
import 'package:result_command/result_command.dart';
import 'package:routefly/routefly.dart';

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
          onTap: () => Routefly.navigate(routePaths.app.settings.userAccount),
        ),

        const Divider(height: Dimens.mediumPadding),

        _sectionTitle(
          context,
          AppLocalizations.of(context)!.settingsPageSubtitle,
        ),
        SettingsItem(
          icon: Icons.notifications_none,
          text: AppLocalizations.of(context)!.settingsLabelNotifications,
          onTap: () {},
        ),
        SizedBox(height: Dimens.mediumPadding),
        SettingsItem(
          text: AppLocalizations.of(context)!.settingsLabelSecurity,
          onTap: () {},
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
          onTap: () {},
        ),
        const Divider(height: Dimens.extraLargePadding),
        _sectionTitle(
          context,
          AppLocalizations.of(context)!.settingsLabelSupport,
        ),
        SettingsItem(
          icon: Icons.help_outline,
          text: AppLocalizations.of(context)!.settingsLabelHelpCenter,
          onTap: () {},
        ),
        SizedBox(height: Dimens.mediumPadding),
        SettingsItem(
          icon: Icons.flag_outlined,
          text: AppLocalizations.of(context)!.settingsLabelFeedback,
          onTap: () {},
        ),

        const Divider(height: Dimens.extraLargePadding),

        // Sobre o aplicativo
        _sectionTitle(
          context,
          AppLocalizations.of(context)!.settingsLabelAbout,
        ),
        SettingsItem(
          icon: Icons.info_outline,
          text: AppLocalizations.of(context)!.settingsLegalInformation,
          onTap: () {},
        ),
        SizedBox(height: Dimens.mediumPadding),
        SettingsItem(
          icon: Icons.developer_board,
          text: AppLocalizations.of(context)!.settingsSoftwareInformation,
          onTap: () {},
        ),
      ],
    );
  }

  Widget _sectionTitle(BuildContext context, String title) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(
        horizontal: Dimens.mediumPadding,
        vertical: Dimens.smallPadding,
      ),
      child: Text(
        title,
        style: Theme.of(
          context,
        ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
