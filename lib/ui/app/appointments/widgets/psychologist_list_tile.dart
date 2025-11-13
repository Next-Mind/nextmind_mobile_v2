import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/psychologist.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';

class PsychologistListTile extends StatelessWidget {
  const PsychologistListTile({
    super.key,
    required this.psychologist,
    required this.onTap,
  });

  final Psychologist psychologist;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(
        vertical: Dimens.smallPadding,
        horizontal: Dimens.mediumPadding,
      ),
      leading: CircleAvatar(
        radius: 28,
        backgroundImage:
            psychologist.photoUrl != null ? NetworkImage(psychologist.photoUrl!) : null,
        child: psychologist.photoUrl == null ? const Icon(Icons.person) : null,
      ),
      title: Text(
        psychologist.name,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(fontWeight: FontWeight.w600),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if ((psychologist.specialty ?? '').isNotEmpty)
            Text(psychologist.specialty!, maxLines: 1, overflow: TextOverflow.ellipsis),
          if ((psychologist.crp ?? '').isNotEmpty)
            Text('CRP ${psychologist.crp}',
                style: Theme.of(context).textTheme.labelSmall),
        ],
      ),
      trailing: const Icon(Icons.chevron_right),
    );
  }
}
