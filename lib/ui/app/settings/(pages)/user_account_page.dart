import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/viewmodels/user_account_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/widgets/user_account_page/user_account_profile_section_widget.dart';
import 'package:nextmind_mobile_v2/ui/auth/widgets/sign_out/sign_out_button.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';
import 'package:nextmind_mobile_v2/ui/core/widgets/user_avatar/user_avatar_widget.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.settingsUserAccountTitle),
        centerTitle: true,
      ),
      body: ListenableBuilder(
        listenable: viewModel.fetchUserCommand,
        builder: (context, child) {
          return viewModel.fetchUserCommand.value is RunningCommand
              ? Center(child: CircularProgressIndicator())
              : _buildUserAccountPage(context);
        },
      ),
    );
  }

  Widget _buildUserAccountPage(BuildContext context) {
    final user = viewModel.userLogged;
    return Padding(
      padding: const EdgeInsets.all(Dimens.mediumPadding),
      child: ListView(
        children: [
          Center(
            child: Stack(
              children: [
                UserAvatar(profileSize: 50), //
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Theme.of(
                      context,
                    ).colorScheme.inverseSurface,
                    radius: 16,
                    child: Icon(
                      Icons.edit,
                      size: 18,
                      color: Theme.of(context).colorScheme.outline,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: Dimens.largePadding),
          //revisar
          Center(
            child: Column(
              children: [
                Text(
                  user.name,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: Dimens.smallPadding),
                Text(
                  user.email,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: Dimens.extraLargePadding),
          ProfileSection(viewModel: viewModel),
          SignOutButton(),
          // Text(
          //   AppLocalizations.of(context)!.settingsUserAccountSectionProfileInfo,
          //   style: Theme.of(
          //     context,
          //   ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          // ),
          // const Divider(),
          // SettingsInfoItem(title: "Nome", subtitle: user.name),
          // const SizedBox(height: 10),
          // InfoItem(title: "Data", subtitle: user.birthDate ?? 'Não informado'),
          // const SizedBox(height: 10),
          // InfoItem(title: "Email", subtitle: user.email),
          // const SizedBox(height: 10),
          // InfoItem(title: "RA", subtitle: user.profile ?? 'Não informado'),
          // const SizedBox(height: 30),
          // Center(
          //   child: TextButton.icon(
          //     onPressed: viewModel.logout,
          //     icon: Icon(
          //       Icons.logout,
          //       color: Theme.of(context).colorScheme.error,
          //     ),
          //     label: Text(
          //       'Sair da Conta',
          //       style: TextStyle(color: Theme.of(context).colorScheme.error),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
