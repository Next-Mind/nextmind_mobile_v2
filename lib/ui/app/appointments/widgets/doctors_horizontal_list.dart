import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:nextmind_mobile_v2/ui/app/appointments/widgets/doctor_card.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';

class DoctorsHorizontalList extends StatelessWidget {
  const DoctorsHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    final data = List.generate(
      5,
      (i) => (
        '${t.doctorLabel} $i',
        t.specialtyCardio,
        4.8,
        t.doctorScheduleDescription,
      ),
    );

    return SizedBox(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        separatorBuilder: (_, __) =>
            const SizedBox(width: Dimens.mediumPadding),
        itemBuilder: (context, i) {
          final (name, specialty, rating, desc) = data[i];
          return DoctorCard(
            name: name,
            specialty: specialty,
            rating: rating,
            description: desc,
            bookText: t.bookNowLabel,
          );
        },
      ),
    );
  }
}
