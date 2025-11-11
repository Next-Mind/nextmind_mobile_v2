import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
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
        return viewModel.fetchNextAppointmentCommand.value is RunningCommand
            ? _buildLoading(context)
            : _buildNextAppointment(context, viewModel);
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
  final loc = AppLocalizations.of(context)!;

  final appointment = vm.nextAppointment;

  final String title = appointment != null
      ? appointment.psychologist?.name ?? loc.nextAppointmentTitleUpcoming
      : loc.nextAppointmentEmptyTitle;

  final String subtitle = appointment?.psychologist?.specialty ?? '';

  final String dateText;
  if (appointment != null) {
    final locale = AppLocalizations.of(context)!.localeName;
    final formatter = DateFormat("EEE, dd/MM 'às' HH:mm", locale);
    dateText = formatter.format(appointment.scheduledAt.toLocal());
  } else {
    dateText = '';
  }

  final String hint = vm.hasNextAppointment
      ? loc.nextAppointmentHint
      : loc.nextAppointmentEmptyHint;

  final String buttonText = vm.hasNextAppointment
      ? loc.nextAppointmentButtonConfirm
      : loc.nextAppointmentEmptyButton;

  return Center(
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          if (subtitle.isNotEmpty) ...[
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white70,
              ),
              textAlign: TextAlign.center,
            ),
          ],
          const SizedBox(height: 8),
          if (dateText.isNotEmpty) ...[
            Text(
              dateText,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 12),
          ],
          Text(
            hint,
            style: const TextStyle(fontSize: 12, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: vm.handleNextAppointmentButton,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            ),
            child: Text(
              buttonText,
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
