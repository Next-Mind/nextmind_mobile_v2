import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/psychologist.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';

class PsychologistCarouselCard extends StatelessWidget {
  const PsychologistCarouselCard({
    super.key,
    required this.psychologist,
    required this.onTap,
    required this.actionText,
  });

  final Psychologist psychologist;
  final VoidCallback onTap;
  final String actionText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.75,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(Dimens.mediumPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundImage: psychologist.photoUrl != null
                        ? NetworkImage(psychologist.photoUrl!)
                        : null,
                    child: psychologist.photoUrl == null
                        ? const Icon(Icons.person)
                        : null,
                  ),
                  const SizedBox(width: Dimens.mediumPadding),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          psychologist.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(fontWeight: FontWeight.w600),
                        ),
                        if ((psychologist.specialty ?? '').isNotEmpty)
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              psychologist.specialty!,
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: Dimens.mediumPadding),
              Expanded(
                child: Text(
                  psychologist.bio ?? '',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              const SizedBox(height: Dimens.mediumPadding),
              Align(
                alignment: Alignment.centerRight,
                child: FilledButton.tonal(
                  onPressed: onTap,
                  child: Text(actionText),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
