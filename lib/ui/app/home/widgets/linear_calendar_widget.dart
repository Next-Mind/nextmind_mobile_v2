import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/ui/app/home/viewmodels/linear_calendar_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';
import 'package:result_command/result_command.dart';

class LinearCalendarWidget extends StatefulWidget {
  const LinearCalendarWidget({super.key});

  @override
  State<LinearCalendarWidget> createState() => _LinearCalendarWidgetState();
}

class _LinearCalendarWidgetState extends State<LinearCalendarWidget> {
  final viewModel = injector.get<LinearCalendarViewmodel>();

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel.generateWeekCommand,
      builder: (context, child) {
        return viewModel.generateWeekCommand.value is RunningCommand
            ? FadeShimmer(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                highlightColor: Color(0xFF4FCB53),
                baseColor: Color(0xFF00AC2F).withValues(alpha: 0.5),
                radius: 8,
              )
            : _buildCalendar(viewModel);
      },
    );
  }

  Widget _buildCalendar(LinearCalendarViewmodel viewModel) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimens.smallPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: viewModel.weekDates.map((date) {
          bool isToday =
              date.day == viewModel.selectedDate.day &&
              date.month == viewModel.selectedDate.month &&
              date.year == viewModel.selectedDate.year;

          return Column(
            children: [
              Text(
                DateFormat.E(
                  'pt_BR',
                ).format(date).substring(0, 1).toUpperCase(),
                style: TextStyle(color: Colors.white70),
              ),
              SizedBox(height: 4),
              Container(
                padding: EdgeInsets.all(6),
                decoration: isToday
                    ? BoxDecoration(color: Colors.white, shape: BoxShape.circle)
                    : null,
                child: Text(
                  '${date.day}',
                  style: TextStyle(
                    color: isToday ? Colors.green : Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
