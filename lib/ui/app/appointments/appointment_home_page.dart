import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:nextmind_mobile_v2/ui/app/appointments/widgets/appointment_banner_carousel.dart';
import 'package:nextmind_mobile_v2/ui/app/appointments/widgets/appointment_categories_widget.dart';
import 'package:nextmind_mobile_v2/ui/app/appointments/widgets/doctors_horizontal_list.dart';
import 'package:nextmind_mobile_v2/ui/app/appointments/widgets/section_header.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';

class AppointmentHomePage extends StatefulWidget {
  const AppointmentHomePage({super.key});

  @override
  State<AppointmentHomePage> createState() => _AppointmentHomePageState();
}

class _AppointmentHomePageState extends State<AppointmentHomePage> {
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          t.appointmentsTitle,
          style: textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        toolbarHeight: Dimens.extraLargePadding * 3,
        forceMaterialTransparency: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(Dimens.mediumPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppointmentBannerCarousel(),
            const SizedBox(height: Dimens.largePadding),
            const SizedBox(height: Dimens.smallPadding),
            const AppointmentCategoriesWidget(),
            const SizedBox(height: Dimens.largePadding),
            SectionHeader(
              title: t.doctorsLabel,
              seeAllText: t.seeAllLabel,
              onSeeAll: () {},
            ),
            const SizedBox(height: Dimens.smallPadding),
            const DoctorsHorizontalList(),
            const SizedBox(height: Dimens.largePadding),
          ],
        ),
      ),
    );
  }
}
