import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:nextmind_mobile_v2/ui/app/appointments/viewmodels/all_psychologists_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/app/appointments/widgets/psychologist_list_tile.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';
import 'package:result_command/result_command.dart';
import 'package:routefly/routefly.dart';

class AllPsychologistsPage extends StatefulWidget {
  const AllPsychologistsPage({super.key});

  @override
  State<AllPsychologistsPage> createState() => _AllPsychologistsPageState();
}

class _AllPsychologistsPageState extends State<AllPsychologistsPage> {
  final viewModel = injector.get<AllPsychologistsViewmodel>();
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    searchController.addListener(() {
      viewModel.filter(searchController.text);
      setState(() {});
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          t.doctorsLabel,
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Routefly.pop(context),
        ),
        toolbarHeight: Dimens.extraLargePadding * 2,
        forceMaterialTransparency: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(Dimens.mediumPadding),
        child: Column(
          children: [
            TextField(
              controller: searchController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: t.chatSearchHint,
                suffixIcon: searchController.text.isEmpty
                    ? null
                    : IconButton(
                        onPressed: () {
                          searchController.clear();
                          viewModel.filter('');
                        },
                        icon: const Icon(Icons.close),
                      ),
              ),
            ),
            const SizedBox(height: Dimens.mediumPadding),
            Expanded(
              child: ListenableBuilder(
                listenable: Listenable.merge([
                  viewModel,
                  viewModel.fetchPsychologistsCommand,
                ]),
                builder: (context, _) {
                  final state = viewModel.fetchPsychologistsCommand.value;
                  if (state is RunningCommand) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state is FailedCommand) {
                    return _ErrorState(onRetry: viewModel.fetchPsychologistsCommand.execute);
                  }
                  if (!viewModel.hasResults) {
                    return _EmptyState(message: t.nextAppointmentEmptyTitle);
                  }
                  return RefreshIndicator(
                    onRefresh: viewModel.refresh,
                    child: ListView.separated(
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemCount: viewModel.filteredPsychologists.length,
                      separatorBuilder: (_, __) => const Divider(height: 1),
                      itemBuilder: (context, index) {
                        final psychologist = viewModel.filteredPsychologists[index];
                        return PsychologistListTile(
                          psychologist: psychologist,
                          onTap: () => Routefly.push(
                            routePaths.app.appointments.psychologistProfile,
                            arguments: psychologist.id,
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        textAlign: TextAlign.center,
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
          FilledButton(
            onPressed: onRetry,
            child: Text(t.reloadLabel),
          ),
        ],
      ),
    );
  }
}
