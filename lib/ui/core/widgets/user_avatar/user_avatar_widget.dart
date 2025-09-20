import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/ui/core/widgets/user_avatar/viewmodels/user_avatar_viewmodel.dart';
import 'package:result_command/result_command.dart';

class UserAvatar extends StatelessWidget {
  final double profileSize;
  const UserAvatar({super.key, required this.profileSize});

  @override
  Widget build(BuildContext context) {
    final viewModel = injector.get<UserAvatarViewmodel>();
    return ListenableBuilder(
      listenable: viewModel.fetchUserCommand,
      builder: (context, child) {
        return viewModel.fetchUserCommand.value is RunningCommand
            ? FadeShimmer.round(
                size: profileSize * 2,
                fadeTheme: FadeTheme.dark,
              )
            : CircleAvatar(
                radius: profileSize,
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                child: ClipOval(
                  child: Image.network(
                    viewModel.userProfileUrl,
                    errorBuilder: (context, error, stackTrace) =>
                        Icon(Icons.person_off_outlined),
                  ),
                ),
              );
      },
    );
  }
}
