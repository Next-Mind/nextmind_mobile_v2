import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class NotificationsViewmodel {
  bool allowNotifications = false;
  bool allowAlarmReminder = false;
  bool allowChatSound = false;

  String selectedOption = 'all';

  late final fetchNotificationDataCommand = Command0(_fetchNotificationData);

  NotificationsViewmodel() {
    fetchNotificationDataCommand.execute();
  }

  AsyncResult<Unit> _fetchNotificationData() async {
    return Success(unit);
  }
}
