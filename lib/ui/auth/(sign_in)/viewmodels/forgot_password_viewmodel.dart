import 'package:nextmind_mobile_v2/domain/dtos/forgot_password_form.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class ForgotPasswordViewmodel {
  late final sendEmailCommand = Command1(_sendEmail);

  AsyncResult<Unit> _sendEmail(ForgotPasswordForm formData) async {
    return Success(unit);
  }
}
