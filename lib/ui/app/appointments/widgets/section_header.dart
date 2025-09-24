import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String? seeAllText;
  final VoidCallback? onSeeAll;

  const SectionHeader({
    super.key,
    required this.title,
    this.seeAllText,
    this.onSeeAll,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
          ),
        ),
        if (seeAllText != null && onSeeAll != null)
          TextButton(onPressed: onSeeAll, child: Text(seeAllText!)),
      ],
    );
  }
}
