import 'package:lucid_validation/lucid_validation.dart';
import 'package:nextmind_mobile_v2/domain/dtos/credentials.dart';

class CredentialsValidator extends LucidValidator<Credentials> {
  CredentialsValidator() {
    ruleFor((credentials) => credentials.email, key: 'email') //
        .notEmpty(message: 'fieldEmailNotEmpty')
        .validEmail(message: 'fieldEmailInvalid');

    ruleFor((credentials) => credentials.password, key: 'password') //
        .notEmpty(message: 'fieldPasswordNotEmpty')
        .minLength(8, message: 'fieldPasswordMinLength');
  }
}
