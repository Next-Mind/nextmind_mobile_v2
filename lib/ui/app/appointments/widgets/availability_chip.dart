import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/availability.dart';

class AvailabilityChip extends StatelessWidget {
  const AvailabilityChip({
    super.key,
    required this.availability,
    required this.onTap,
  });

  final Availability availability;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context).languageCode;
    final date = DateFormat("EEE, dd/MM", locale)
        .format(availability.startAt.toLocal());
    final time = DateFormat('HH:mm', locale)
        .format(availability.startAt.toLocal());

    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Text('$date • $time'),
    );
  }
}
