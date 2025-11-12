import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:nextmind_mobile_v2/main.dart';
import 'package:nextmind_mobile_v2/ui/app/appointments/viewmodels/appointments_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/app/appointments/widgets/psychologist_carousel_card.dart';
import 'package:nextmind_mobile_v2/ui/app/appointments/widgets/scheduled_appointment_card.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';
import 'package:result_command/result_command.dart';
import 'package:routefly/routefly.dart';

class AppointmentHomePage extends StatefulWidget {
  const AppointmentHomePage({super.key});

  @override
  State<AppointmentHomePage> createState() => _AppointmentHomePageState();
}

class _AppointmentHomePageState extends State<AppointmentHomePage> {
  final viewModel = injector.get<AppointmentsViewmodel>();

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          t.appointmentsTitle,
          style: Theme.of(
            context,
          ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        toolbarHeight: Dimens.extraLargePadding * 2,
        forceMaterialTransparency: true,
      ),
      body: SafeArea(
        child: ListenableBuilder(
          listenable: viewModel.fetchDataCommand,
          builder: (context, _) {
            final state = viewModel.fetchDataCommand.value;

            return switch (state) {
              RunningCommand<String>() => CircularProgressIndicator(),
              SuccessCommand<String>(:final value) => RefreshIndicator(
                onRefresh: viewModel.refresh,
                child: ListView(
                  padding: const EdgeInsets.all(Dimens.mediumPadding),
                  children: [
                    _ScheduledAppointmentsSection(viewModel: viewModel),
                    const SizedBox(height: Dimens.largePadding),
                    _NewAppointmentSection(
                      viewModel: viewModel,
                      onSeeAll: () => Routefly.push(
                        routePaths.app.appointments.allPsychologists,
                      ),
                    ),
                  ],
                ),
              ),
              FailureCommand<String>(:final error) => _ErrorState(
                message: t.genericErrorLabel,
                onRetry: viewModel.fetchDataCommand.execute,
              ),
              _ => _ErrorState(
                message: t.genericErrorLabel,
                onRetry: viewModel.fetchDataCommand.execute,
              ),
            };
          },
        ),
      ),
    );
  }
}

class _ScheduledAppointmentsSection extends StatelessWidget {
  const _ScheduledAppointmentsSection({required this.viewModel});

  final AppointmentsViewmodel viewModel;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.nextAppointmentTitleUpcoming,
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: Dimens.mediumPadding),
        if (viewModel.scheduledAppointments.isEmpty)
          _EmptyState(message: t.nextAppointmentEmptyTitle)
        else
          ...viewModel.scheduledAppointments.map(
            (appointment) => Padding(
              padding: const EdgeInsets.only(bottom: Dimens.mediumPadding),
              child: ScheduledAppointmentCard(appointment: appointment),
            ),
          ),
      ],
    );
  }
}

class _NewAppointmentSection extends StatelessWidget {
  const _NewAppointmentSection({
    required this.viewModel,
    required this.onSeeAll,
  });

  final AppointmentsViewmodel viewModel;
  final VoidCallback onSeeAll;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final psychologists = viewModel.featuredPsychologists;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                t.doctorsLabel,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            TextButton(onPressed: onSeeAll, child: Text(t.seeAllLabel)),
          ],
        ),
        const SizedBox(height: Dimens.mediumPadding),
        if (psychologists.isEmpty)
          _EmptyState(message: t.nextAppointmentEmptyHint)
        else
          CarouselSlider(
            options: CarouselOptions(
              height: 220,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              viewportFraction: 0.85,
            ),
            items: psychologists
                .take(10)
                .map(
                  (psychologist) => PsychologistCarouselCard(
                    psychologist: psychologist,
                    onTap: () => Routefly.push(
                      routePaths.app.appointments.psychologistProfile,
                      arguments: psychologist.id,
                    ),
                    actionText: t.bookNowLabel,
                  ),
                )
                .toList(),
          ),
      ],
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Dimens.mediumPadding),
      child: Center(
        child: Text(
          message,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}

class _ErrorState extends StatelessWidget {
  const _ErrorState({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message),
          const SizedBox(height: Dimens.mediumPadding),
          FilledButton(onPressed: onRetry, child: Text(t.reloadLabel)),
        ],
      ),
    );
  }
}
