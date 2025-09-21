import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';

class SettingsItemSwitch extends StatelessWidget {
  final IconData? icon;
  final String text;
  final bool value;
  final ValueChanged<bool> onChanged;

  const SettingsItemSwitch({
    this.icon,
    required this.text,
    required this.value,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Theme.of(context).colorScheme.outline),
      title: Text(text, style: Theme.of(context).textTheme.labelLarge),
      trailing: Switch(value: value, onChanged: onChanged),
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
