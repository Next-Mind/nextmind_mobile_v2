import 'package:lucid_validation/lucid_validation.dart';
import 'package:nextmind_mobile_v2/domain/dtos/forgot_password_form.dart';

class ForgotPasswordFormValidator extends LucidValidator<ForgotPasswordForm> {
  ForgotPasswordFormValidator() {
    ruleFor((formData) => formData.email, key: 'email') //
        .notEmpty(message: 'fieldEmailNotEmpty')
        .validEmail(message: 'fieldEmailInvalid');
  }
}
