import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/viewmodels/security_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/widgets/settings_item_widget.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/widgets/settings_section_title_widget.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/widgets/settings_switch_widget.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';
import 'package:result_command/result_command.dart';

class SecurityPage extends StatefulWidget {
  const SecurityPage({super.key});

  @override
  State<SecurityPage> createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  final viewModel = injector.get<SecurityViewmodel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.settingsSecurityTitle),
        centerTitle: true,
      ),
      body: ListenableBuilder(
        listenable: viewModel.fetchDataCommand,
        builder: (context, child) {
          return viewModel.fetchDataCommand.value is RunningCommand
              ? Center(child: CircularProgressIndicator())
              : _buildSecurityPage();
        },
      ),
    );
  }

  Widget _buildSecurityPage() {
    return ListView(
      padding: const EdgeInsets.all(Dimens.mediumPadding),
      children: [
        SizedBox(height: Dimens.smallPadding),
        SettingsItem(
          text: AppLocalizations.of(context)!.settingsSecurityChangePassword,
          icon: Icons.password,
          onTap: () {},
        ),
        SizedBox(height: Dimens.mediumPadding),
        SettingsSectionTitle(
          title: AppLocalizations.of(context)!.settingsSecuritySectionApp,
        ),
        Divider(height: Dimens.mediumPadding),
        SettingsItemSwitch(
          text: AppLocalizations.of(
            context,
          )!.settingsSecurityRequirePasswordOnOpen,
          value: viewModel.passwordBoolValue,
          onChanged: (value) {
            setState(() {
              viewModel.passwordBoolValue = value;
            });
          },
        ),
        SizedBox(height: Dimens.smallPadding),
        if (viewModel.passwordBoolValue)
          SettingsItem(
            text: AppLocalizations.of(context)!.settingsSecuritySetPassword,
            onTap: () {},
          ),
      ],
    );
  }
}
