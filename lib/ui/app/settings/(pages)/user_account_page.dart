import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/viewmodels/user_account_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/widgets/user_account_page/user_account_profile_section_widget.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/widgets/user_account_page/profile_action_tile.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/widgets/user_account_page/profile_header.dart';
import 'package:nextmind_mobile_v2/ui/auth/widgets/sign_out/sign_out_button.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';
import 'package:result_command/result_command.dart';

class UserAccountPage extends StatefulWidget {
  const UserAccountPage({super.key});

  @override
  State<UserAccountPage> createState() => _UserAccountPageState();
}

class _UserAccountPageState extends State<UserAccountPage> {
  final viewModel = injector.get<UserAccountViewmodel>();

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(t.settingsUserAccountTitle),
        centerTitle: true,
      ),
      body: ListenableBuilder(
        listenable: viewModel.fetchUserCommand,
        builder: (context, _) {
          return viewModel.fetchUserCommand.value is RunningCommand
              ? const Center(child: CircularProgressIndicator())
              : _buildUserAccountPage(context);
        },
      ),
    );
  }

  Widget _buildUserAccountPage(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.all(Dimens.mediumPadding),
      child: ListView(
        children: [
          ProfileHeader(
            name: viewModel.userLogged.name,
            email: viewModel.userLogged.email,
          ),

          const SizedBox(height: Dimens.extraLargePadding),

          // Top 4 cards (existing widget)
          ProfileSection(viewModel: viewModel),

          const SizedBox(height: Dimens.largePadding),

          // Lower options
          ProfileActionTile(
            icon: Icons.lock_outline,
            title: t.settingsSecurityChangePassword,
            backgroundColor: scheme.surfaceContainerHigh,
            iconBackgroundColor: scheme.secondary.withAlpha(15),
          ),
          const SizedBox(height: Dimens.mediumPadding),
          ProfileActionTile(
            icon: Icons.history,
            title: t.accountAppointmentHistory,
            backgroundColor: scheme.surfaceContainerHigh,
            iconBackgroundColor: scheme.primary.withAlpha(12),
          ),

          const SizedBox(height: Dimens.extraLargePadding),

          const SignOutButton(),
        ],
      ),
    );
  }
}
