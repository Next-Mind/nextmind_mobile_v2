import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/psychologist.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:nextmind_mobile_v2/main.dart';
import 'package:nextmind_mobile_v2/ui/app/appointments/viewmodels/psychologist_profile_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/app/appointments/widgets/availability_chip.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';
import 'package:result_command/result_command.dart';
import 'package:routefly/routefly.dart';

class PsychologistProfilePage extends StatefulWidget {
  const PsychologistProfilePage({super.key});

  @override
  State<PsychologistProfilePage> createState() =>
      _PsychologistProfilePageState();
}

class _PsychologistProfilePageState extends State<PsychologistProfilePage> {
  final viewModel = injector.get<PsychologistProfileViewmodel>();
  String? psychologistId;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    psychologistId ??= ModalRoute.of(context)?.settings.arguments as String?;
    if (psychologistId != null &&
        viewModel.loadProfileCommand.value is! RunningCommand) {
      viewModel.loadProfileCommand.execute(psychologistId!);
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(t.doctorsLabel),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Routefly.pop(context),
        ),
        toolbarHeight: Dimens.extraLargePadding * 2,
        forceMaterialTransparency: true,
      ),
      body: ListenableBuilder(
        listenable: Listenable.merge([viewModel, viewModel.loadProfileCommand]),
        builder: (context, _) {
          final state = viewModel.loadProfileCommand.value;
          if (state is RunningCommand) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is FailureCommand) {
            return _ErrorState(
              onRetry: () {
                if (psychologistId != null) {
                  viewModel.loadProfileCommand.execute(psychologistId!);
                }
              },
            );
          }
          final psychologist = viewModel.psychologist;
          if (psychologist == null) {
            return _ErrorState(
              onRetry: () {
                if (psychologistId != null) {
                  viewModel.loadProfileCommand.execute(psychologistId!);
                }
              },
            );
          }
          return RefreshIndicator(
            onRefresh: () => viewModel.refresh(psychologistId!),
            child: ListView(
              padding: const EdgeInsets.all(Dimens.mediumPadding),
              children: [
                _ProfileHeader(psychologist: psychologist),
                const SizedBox(height: Dimens.largePadding),
                Text(
                  t.bookNowLabel,
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: Dimens.mediumPadding),
                if (viewModel.availabilities.isEmpty)
                  _EmptyState(message: t.nextAppointmentEmptyHint)
                else
                  Wrap(
                    spacing: Dimens.smallPadding,
                    runSpacing: Dimens.smallPadding,
                    children: viewModel.availabilities
                        .map(
                          (availability) => AvailabilityChip(
                            availability: availability,
                            onTap: () {
                              Routefly.push(
                                routePaths
                                    .app
                                    .appointments
                                    .appointmentConfirmation,
                                arguments: {
                                  'psychologist': psychologist,
                                  'availability': availability,
                                },
                              );
                            },
                          ),
                        )
                        .toList(),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _ProfileHeader extends StatelessWidget {
  const _ProfileHeader({required this.psychologist});

  final Psychologist psychologist;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: psychologist.photoUrl != null
                  ? NetworkImage(psychologist.photoUrl!)
                  : null,
              child: psychologist.photoUrl == null
                  ? const Icon(Icons.person, size: 32)
                  : null,
            ),
            const SizedBox(width: Dimens.mediumPadding),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    psychologist.name,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if ((psychologist.specialty ?? '').isNotEmpty)
                    Text(psychologist.specialty!),
                  if ((psychologist.crp ?? '').isNotEmpty)
                    Text('CRP ${psychologist.crp}'),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: Dimens.mediumPadding),
        if ((psychologist.bio ?? '').isNotEmpty)
          Text(
            psychologist.bio!,
            style: Theme.of(context).textTheme.bodyMedium,
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
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Dimens.mediumPadding),
        child: Text(message, textAlign: TextAlign.center),
      ),
    );
  }
}

class _ErrorState extends StatelessWidget {
  const _ErrorState({required this.onRetry});

  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(t.genericErrorLabel),
          const SizedBox(height: Dimens.mediumPadding),
          FilledButton(onPressed: onRetry, child: Text(t.reloadLabel)),
        ],
      ),
    );
  }
}
