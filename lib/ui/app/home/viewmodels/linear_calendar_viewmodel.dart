import 'package:flutter/material.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class LinearCalendarViewmodel extends ChangeNotifier {
  late final generateWeekCommand = Command0(_generateWeek);

  final selectedDate = DateTime.now();
  List<DateTime> weekDates = [];

  LinearCalendarViewmodel() {
    generateWeekCommand.execute();
  }

  AsyncResult<List<DateTime>> _generateWeek() async {
    int weekday = selectedDate.weekday % 7;
    DateTime sunday = selectedDate.subtract(Duration(days: weekday));
    weekDates = List.generate(7, (i) => sunday.add(Duration(days: i)));
    return Success(weekDates);
  }
}
