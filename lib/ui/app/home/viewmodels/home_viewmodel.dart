import 'package:flutter/material.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class HomeViewmodel extends ChangeNotifier {
  late final initCommand = Command0(_init);

  HomeViewmodel() {
    initCommand.execute();
  }

  AsyncResult<Unit> _init() async {
    await Future.delayed(Duration(seconds: 10));
    return Success(unit);
  }
}
