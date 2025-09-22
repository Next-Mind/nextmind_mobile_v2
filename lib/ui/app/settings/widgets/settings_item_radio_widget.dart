import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';

class SettingsItemRadio<T> extends StatelessWidget {
  final String text;
  final T value;
  final T groupValue;
  final ValueChanged<T?> onChanged;

  const SettingsItemRadio({
    required this.text,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      trailing: RadioGroup(
        onChanged: onChanged,
        groupValue: groupValue,
        child: Radio<T>(value: value),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      tileColor: Theme.of(context).colorScheme.surfaceContainerHighest,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: Dimens.mediumPadding,
        vertical: Dimens.smallPadding,
      ),
      dense: true,
      minVerticalPadding: Dimens.mediumPadding,
      onTap: () => onChanged(value),
    );
  }
}
