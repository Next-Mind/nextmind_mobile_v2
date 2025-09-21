import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';

class SettingsItem extends StatelessWidget {
  final IconData? icon;
  final double? iconSize;
  final String text;
  final VoidCallback onTap;

  const SettingsItem({
    this.icon,
    this.iconSize = 16,
    required this.text,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Theme.of(context).colorScheme.outline),
      title: Text(text, style: Theme.of(context).textTheme.labelLarge),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: iconSize,
        color: Theme.of(context).colorScheme.onSurface,
      ),
      onTap: onTap,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      tileColor: Theme.of(context).colorScheme.surfaceContainerHighest,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: Dimens.mediumPadding,
        vertical: Dimens.smallPadding,
      ),
      dense: true,
      minVerticalPadding: Dimens.mediumPadding,
    );
  }
}
