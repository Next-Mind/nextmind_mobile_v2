import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/ui/app/appointments/widgets/appointment_categories_widget.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';

class AppointmentHomePage extends StatefulWidget {
  const AppointmentHomePage({super.key});

  @override
  State<AppointmentHomePage> createState() => _AppointmentHomePageState();
}

class _AppointmentHomePageState extends State<AppointmentHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Consultas',
          style: Theme.of(
            context,
          ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        toolbarHeight: Dimens.extraLargePadding * 3,
        forceMaterialTransparency: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(Dimens.mediumPadding),
        child: Column(
          children: [
            SizedBox(height: 300, child: AppointmentCategoriesWidget()),
          ],
        ),
      ),
    );
  }
}
