import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class SecurityViewmodel {
  late final fetchDataCommand = Command0(_fetchData);

  bool passwordBoolValue = false;

  SecurityViewmodel() {
    fetchDataCommand.execute();
  }

  AsyncResult<Unit> _fetchData() async {
    return Success(unit);
  }
}
