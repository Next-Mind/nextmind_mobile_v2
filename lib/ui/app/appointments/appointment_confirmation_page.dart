import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/availability.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/psychologist.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:nextmind_mobile_v2/main.dart';
import 'package:nextmind_mobile_v2/ui/app/appointments/viewmodels/appointment_confirmation_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';
import 'package:result_command/result_command.dart';
import 'package:routefly/routefly.dart';

class AppointmentConfirmationPage extends StatefulWidget {
  const AppointmentConfirmationPage({super.key});

  @override
  State<AppointmentConfirmationPage> createState() =>
      _AppointmentConfirmationPageState();
}

class _AppointmentConfirmationPageState
    extends State<AppointmentConfirmationPage> {
  final viewModel = injector.get<AppointmentConfirmationViewmodel>();
  Psychologist? psychologist;
  Availability? availability;
  final _formKey = GlobalKey<FormState>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args is Map) {
      psychologist ??= args['psychologist'] as Psychologist?;
      availability ??= args['availability'] as Availability?;
      if (availability != null && psychologist != null) {
        viewModel.setup(
          availabilityId: availability!.id,
          psychologistId: psychologist!.id,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final locale = t.localeName;

    final formattedDate = availability != null
        ? DateFormat(
            "EEE, dd/MM 'às' HH:mm",
            locale,
          ).format(availability!.startAt.toLocal())
        : '';

    return Scaffold(
      appBar: AppBar(
        title: Text(t.bookNowLabel),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Routefly.pop(context),
        ),
        toolbarHeight: Dimens.extraLargePadding * 2,
        forceMaterialTransparency: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(Dimens.mediumPadding),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (psychologist != null)
                _SummaryHeader(psychologist: psychologist!),
              const SizedBox(height: Dimens.mediumPadding),
              if (formattedDate.isNotEmpty)
                Text(
                  formattedDate,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              const SizedBox(height: Dimens.largePadding),
              TextFormField(
                controller: viewModel.descriptionController,
                maxLines: 5,
                decoration: InputDecoration(
                  labelText: 'Descreva o motivo da consulta',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: viewModel.validateDescription,
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ListenableBuilder(
                  listenable: viewModel.confirmCommand,
                  builder: (context, _) {
                    final state = viewModel.confirmCommand.value;

                    // Exibe feedbacks reativos (igual ao UserAvatar)
                    if (state is RunningCommand) {
                      return FilledButton(
                        onPressed: null,
                        child: const SizedBox(
                          width: 24,
                          height: 24,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        ),
                      );
                    }

                    if (state is FailureCommand) {
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Não foi possível concluir o agendamento.',
                            ),
                          ),
                        );
                      });
                    }

                    if (state is SuccessCommand) {
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Agendamento confirmado!'),
                          ),
                        );
                        Routefly.navigate(
                          routePaths.app.appointments.appointmentHome,
                        );
                      });
                    }

                    return FilledButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          viewModel.confirmCommand.execute();
                        }
                      },
                      child: Text(t.confirmLabel),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SummaryHeader extends StatelessWidget {
  const _SummaryHeader({required this.psychologist});

  final Psychologist psychologist;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 32,
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
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              if ((psychologist.specialty ?? '').isNotEmpty)
                Text(psychologist.specialty!),
            ],
          ),
        ),
      ],
    );
  }
}
