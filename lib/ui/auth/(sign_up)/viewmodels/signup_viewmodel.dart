import 'package:logger/web.dart';
import 'package:nextmind_mobile_v2/domain/dtos/signup_form.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class SignupViewmodel {
  late final submitFormCommand = Command1(_submitForm);
  final Logger _log;

  SignupViewmodel(this._log) {
    _log.d("Iniciando $runtimeType");
  }

  AsyncResult<Unit> _submitForm(SignupForm formData) async {
    await Future.delayed(Duration(seconds: 3));
    return Success(unit);
  }
}
