import 'package:lucid_validation/lucid_validation.dart';
import 'package:nextmind_mobile_v2/domain/dtos/signup_form.dart';

class SignupFormValidator extends LucidValidator<SignupForm> {
  SignupFormValidator() {
    ruleFor((signUpFormAnswers) => signUpFormAnswers.name, key: 'name') //
        .notEmpty(message: 'fieldNotEmpty')
        .minLength(3, message: 'fieldMinLength');

    ruleFor((signUpFormAnswers) => signUpFormAnswers.email, key: 'email') //
        .notEmpty(message: 'fieldEmailNotEmpty')
        .validEmail(message: 'fieldEmailInvalid');

    ruleFor((signUpFormAnswers) => signUpFormAnswers.ra, key: 'ra') //
        .notEmpty(message: 'fieldNotEmpty');

    ruleFor(
          (signUpFormAnswers) => signUpFormAnswers.birthday,
          key: 'birthday',
        ) //
        .lessThan(
          DateTime(DateTime.now().year - 13, 12, 31),
          message: 'fieldBirthdayLessThan',
        );

    ruleFor(
          (signUpFormAnswers) => signUpFormAnswers.password,
          key: 'password',
        ) //
        .notEmpty(message: 'fieldPasswordNotEmpty')
        .minLength(8, message: 'fieldPasswordMinLength');
  }
}
