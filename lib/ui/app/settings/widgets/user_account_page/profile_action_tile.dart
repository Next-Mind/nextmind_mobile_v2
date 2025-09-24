import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';

/// Tile arredondado com fundo colorido suave, ícone à esquerda e chevron à direita.
class ProfileActionTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onTap;
  final Color? backgroundColor;
  final Color? iconBackgroundColor;

  const ProfileActionTile({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
    this.backgroundColor,
    this.iconBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    final bg = backgroundColor ?? scheme.surfaceContainerHigh.withOpacity(.35);
    final iconBg = iconBackgroundColor ?? scheme.primary.withOpacity(.1);

    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(18),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(18),
        child: Ink(
          decoration: BoxDecoration(
            color: bg,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Dimens.largePadding,
              vertical: Dimens.largePadding,
            ),
            child: Row(
              children: [
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: iconBg,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Icon(icon, color: scheme.primary),
                ),
                const SizedBox(width: Dimens.largePadding),
                Expanded(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Icon(Icons.chevron_right_rounded, color: scheme.outline),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
