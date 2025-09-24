import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';
import 'package:nextmind_mobile_v2/ui/core/widgets/user_avatar/user_avatar_widget.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String email;
  final VoidCallback? onEditAvatar;

  const ProfileHeader({
    super.key,
    required this.name,
    required this.email,
    this.onEditAvatar,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Column(
      children: [
        // Avatar + editar
        Center(
          child: Stack(
            children: [
              const UserAvatar(profileSize: 50),
              Positioned(
                bottom: 0,
                right: 0,
                child: InkWell(
                  onTap: onEditAvatar,
                  borderRadius: BorderRadius.circular(16),
                  child: CircleAvatar(
                    backgroundColor: scheme.inverseSurface,
                    radius: 16,
                    child: Icon(Icons.edit, size: 18, color: scheme.outline),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: Dimens.largePadding),

        // Nome + e-mail
        Text(
          name,
          textAlign: TextAlign.center,
          style: Theme.of(
            context,
          ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: Dimens.smallPadding),
        Text(
          email,
          textAlign: TextAlign.center,
          style: TextStyle(color: scheme.outline),
        ),
      ],
    );
  }
}
