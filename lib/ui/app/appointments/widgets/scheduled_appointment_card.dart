import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/appointment.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';

class ScheduledAppointmentCard extends StatelessWidget {
  const ScheduledAppointmentCard({super.key, required this.appointment});

  final Appointment appointment;

  @override
  Widget build(BuildContext context) {
    final psychologist = appointment.psychologist;
    final locale = AppLocalizations.of(context)!.localeName;
    final formattedDate = DateFormat("EEE, dd/MM 'às' HH:mm", locale)
        .format(appointment.scheduledAt.toLocal());

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(Dimens.mediumPadding),
        child: Row(
          children: [
            CircleAvatar(
              radius: 28,
              backgroundImage: psychologist?.photoUrl != null
                  ? NetworkImage(psychologist!.photoUrl!)
                  : null,
              child: psychologist?.photoUrl == null
                  ? const Icon(Icons.person)
                  : null,
            ),
            const SizedBox(width: Dimens.mediumPadding),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    psychologist?.name ?? '',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  if ((psychologist?.specialty ?? '').isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Text(
                        psychologist!.specialty!,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(color: Theme.of(context).colorScheme.primary),
                      ),
                    ),
                  const SizedBox(height: 8),
                  Text(
                    formattedDate,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
