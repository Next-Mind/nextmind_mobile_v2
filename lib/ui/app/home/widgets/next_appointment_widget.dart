import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/appointment.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:nextmind_mobile_v2/ui/app/home/viewmodels/next_appointment_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';
import 'package:result_command/result_command.dart';
import 'package:intl/intl.dart';

class NextAppointmentWidget extends StatelessWidget {
  const NextAppointmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = injector.get<NextAppointmentViewmodel>();
    return ListenableBuilder(
      listenable: viewModel.fetchNextAppointmentCommand,
      builder: (context, child) {
        return switch (viewModel.fetchNextAppointmentCommand.value) {
          RunningCommand() => _buildLoading(context),
          SuccessCommand() => _buildNextAppointment(
              context,
              viewModel,
            ),
          FailureCommand() => _buildErrorState(
              context,
              viewModel,
            ),
          _ => _buildInitialState(
              context,
              viewModel,
            ),
        };
      },
    );
  }
}

Widget _buildLoading(BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(Dimens.smallPadding * 3),
    child: Column(
      children: [
        FadeShimmer(
          width: MediaQuery.of(context).size.width * 0.4,
          height: 16,
          highlightColor: Theme.of(context).colorScheme.onPrimary,
          baseColor: Theme.of(context).colorScheme.inversePrimary,
          radius: 8,
        ),
        const SizedBox(height: 16),
        FadeShimmer(
          width: MediaQuery.of(context).size.width * 0.4,
          height: 24,
          highlightColor: Theme.of(context).colorScheme.onPrimary,
          baseColor: Theme.of(context).colorScheme.inversePrimary,
          radius: 8,
        ),
        const SizedBox(height: 16),
        FadeShimmer(
          width: MediaQuery.of(context).size.width * 0.5,
          height: 32,
          highlightColor: Theme.of(context).colorScheme.onPrimary,
          baseColor: Theme.of(context).colorScheme.inversePrimary,
          radius: 8,
        ),
      ],
    ),
  );
}

Widget _buildNextAppointment(
  BuildContext context,
  NextAppointmentViewmodel vm,
) {
  if (!vm.hasNextAppointment || vm.nextAppointment is! BaseAppointment) {
    return _buildEmptyState(context, vm);
  }

  final loc = AppLocalizations.of(context)!;
  final appointment = vm.nextAppointment as BaseAppointment;
  final locale = loc.localeName;
  final formatter = DateFormat("EEE, dd/MM 'às' HH:mm", locale);

  final daysLabel = loc.nextAppointmentDateRelative(vm.daysUntil ?? 0);
  final scheduledDate = formatter.format(appointment.scheduledAt.toLocal());
  final psychologistName = appointment.psychologist?.name ?? '';
  final specialty = appointment.psychologist?.specialty ?? '';

  return Center(
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            loc.nextAppointmentTitleUpcoming,
            style: const TextStyle(fontSize: 16, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            daysLabel,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          if (psychologistName.isNotEmpty) ...[
            Text(
              psychologistName,
              style: const TextStyle(fontSize: 16, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            if (specialty.isNotEmpty) ...[
              const SizedBox(height: 4),
              Text(
                specialty,
                style: const TextStyle(fontSize: 14, color: Colors.white70),
                textAlign: TextAlign.center,
              ),
            ],
            const SizedBox(height: 12),
          ],
          Text(
            scheduledDate,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            loc.nextAppointmentHint,
            style: const TextStyle(fontSize: 12, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: vm.handleNextAppointmentButton,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            ),
            child: Text(
              loc.nextAppointmentButtonConfirm,
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildEmptyState(BuildContext context, NextAppointmentViewmodel vm) {
  final loc = AppLocalizations.of(context)!;

  return Center(
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            loc.nextAppointmentEmptyTitle,
            style: const TextStyle(fontSize: 16, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            loc.nextAppointmentEmptyHint,
            style: const TextStyle(fontSize: 12, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: vm.handleNextAppointmentButton,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            ),
            child: Text(
              loc.nextAppointmentEmptyButton,
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildErrorState(
  BuildContext context,
  NextAppointmentViewmodel vm,
) {
  final loc = AppLocalizations.of(context)!;

  return Center(
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            loc.genericErrorLabel,
            style: const TextStyle(fontSize: 16, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () => vm.fetchNextAppointmentCommand.execute(),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            ),
            child: Text(
              loc.nextAppointmentEmptyButton,
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildInitialState(
  BuildContext context,
  NextAppointmentViewmodel vm,
) {
  final loc = AppLocalizations.of(context)!;

  return Center(
    child: ElevatedButton(
      onPressed: () => vm.fetchNextAppointmentCommand.execute(),
      child: Text(loc.nextAppointmentEmptyButton),
    ),
  );
}
