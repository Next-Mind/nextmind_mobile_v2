import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/ui/app/appointments/viewmodels/appointment_categories_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';
import 'package:result_command/result_command.dart';

class AppointmentCategoriesWidget extends StatefulWidget {
  const AppointmentCategoriesWidget({super.key});

  @override
  State<AppointmentCategoriesWidget> createState() =>
      _AppointmentCategoriesWidgetState();
}

class _AppointmentCategoriesWidgetState
    extends State<AppointmentCategoriesWidget> {
  final viewModel = injector.get<AppointmentCategoriesViewmodel>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Categorias',
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: Dimens.mediumPadding),
        SizedBox(
          height: 100,
          child: ListenableBuilder(
            listenable: viewModel.fetchCategoriesCommand,
            builder: (context, child) {
              final status = viewModel.fetchCategoriesCommand.value;
              if (status is RunningCommand) {
                return Center(child: CircularProgressIndicator());
              }
              if (status is FailureCommand) {
                return Center(
                  child: Column(
                    children: [
                      Text('Erro ao carregar as categorias'),
                      ElevatedButton(
                        onPressed: () =>
                            viewModel.fetchCategoriesCommand.execute(),
                        child: Text('Recarregar'),
                      ),
                    ],
                  ),
                );
              }
              return ListView.separated(
                key: const ValueKey('categories_list'),
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(
                  horizontal: Dimens.smallPadding,
                ),
                itemBuilder: (context, index) {
                  final c = viewModel.categories[index];

                  return SizedBox(
                    height: 100,
                    width: 150,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(12),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 150),
                        decoration: BoxDecoration(
                          color: Theme.of(
                            context,
                          ).colorScheme.surfaceContainerHighest,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(Dimens.smallPadding),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                c.name,
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (_, __) => const SizedBox(width: 8),
                itemCount: viewModel.categories.length,
              );
            },
          ),
        ),
      ],
    );
  }
}
