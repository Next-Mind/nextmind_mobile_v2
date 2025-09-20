import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class HomeViewmodel extends ChangeNotifier {
  late final initCommand = Command0(_init);
  final Logger _log;

  HomeViewmodel(this._log) {
    _log.d("Iniciando $runtimeType");
    initCommand.execute();
  }

  AsyncResult<Unit> _init() async {
    await Future.delayed(Duration(seconds: 2));
    return Success(unit);
  }
}
