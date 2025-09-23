import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/viewmodels/notifications_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/widgets/settings_item_radio_widget.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/widgets/settings_section_title_widget.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/widgets/settings_switch_widget.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';
import 'package:result_command/result_command.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  final viewModel = injector.get<NotificationsViewmodel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.settingsLabelNotifications),
        centerTitle: true,
      ),
      body: ListenableBuilder(
        listenable: viewModel.fetchNotificationDataCommand,
        builder: (context, child) {
          return viewModel.fetchNotificationDataCommand.value is RunningCommand
              ? Center(child: CircularProgressIndicator())
              : _buildNotificationsPage();
        },
      ),
    );
  }

  Widget _buildNotificationsPage() {
    return ListView(
      padding: EdgeInsetsGeometry.symmetric(horizontal: Dimens.smallPadding),
      children: [
        SizedBox(height: Dimens.mediumPadding),
        SettingsItemSwitch(
          icon: Icons.notifications_none,
          text: AppLocalizations.of(
            context,
          )!.settingsNotificationsAllowNotifications,
          value: viewModel.allowNotifications,
          onChanged: (value) {
            viewModel.allowNotifications = value;
            setState(() {});
          },
        ),
        SizedBox(height: Dimens.mediumPadding),
        SettingsSectionTitle(
          title: AppLocalizations.of(
            context,
          )!.settingsNotificationsSectionAlerts,
        ),
        SettingsItemRadio(
          text: AppLocalizations.of(
            context,
          )!.settingsNotificationsAllowAlarmReminder,
          value: 'all',
          groupValue: viewModel.selectedOption,
          onChanged: (value) {
            setState(() {
              viewModel.selectedOption = value!;
            });
          },
        ),
        Divider(height: Dimens.extraLargePadding),
        SettingsItemRadio(
          text: AppLocalizations.of(context)!.settingsNotificationsSilent,
          value: 'none',
          groupValue: viewModel.selectedOption,
          onChanged: (value) {
            setState(() {
              viewModel.selectedOption = value!;
            });
          },
        ),
        SizedBox(height: Dimens.mediumPadding),
        SettingsSectionTitle(
          title: AppLocalizations.of(
            context,
          )!.settingsNotificationsSectionMessages,
        ),
        SettingsItemSwitch(
          text: AppLocalizations.of(
            context,
          )!.settingsNotificationsConversationSounds,
          icon: Icons.message,
          value: viewModel.allowChatSound,
          onChanged: (value) {
            setState(() {
              viewModel.allowChatSound = value;
            });
          },
        ),
      ],
    );
  }
}
