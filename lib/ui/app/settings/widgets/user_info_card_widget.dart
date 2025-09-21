import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/domain/models/users/user.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';
import 'package:nextmind_mobile_v2/ui/core/widgets/user_avatar/user_avatar_widget.dart';

class UserInfoCard extends StatelessWidget {
  final LoggedUser user;
  final VoidCallback? onTap;
  const UserInfoCard({super.key, required this.user, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // ação ao clicar
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        margin: const EdgeInsets.symmetric(vertical: Dimens.smallPadding),
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        child: Padding(
          padding: const EdgeInsets.all(Dimens.smallPadding),
          child: Row(
            children: [
              UserAvatar(profileSize: 30),
              const SizedBox(width: Dimens.smallPadding),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      user.email,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.outline,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Theme.of(context).colorScheme.outline,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
