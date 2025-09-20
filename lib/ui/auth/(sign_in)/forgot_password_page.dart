import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/domain/dtos/forgot_password_form.dart';
import 'package:nextmind_mobile_v2/domain/validators/forgot_password_form_validator.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:nextmind_mobile_v2/ui/auth/(sign_in)/viewmodels/forgot_password_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final viewModel = injector.get<ForgotPasswordViewmodel>();

  final formKey = GlobalKey<FormState>();

  final formData = ForgotPasswordForm();

  final validator = ForgotPasswordFormValidator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.forgotPasswordPageTitle),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(Dimens.largePadding),
          child: Column(
            children: [
              SizedBox(height: Dimens.extraLargePadding * 2),
              SvgPicture.asset(
                'assets/images/forgot_password.svg',
                height: 250,
              ),
              SizedBox(height: Dimens.extraLargePadding * 1.5),
              Form(
                key: formKey,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onChanged: formData.setEmail,
                  validator: validator.byField(formData, 'email'),
                  decoration: InputDecoration(
                    hintText: AppLocalizations.of(context)!.fieldHintTextEmail,
                  ),
                ),
              ),
              SizedBox(height: Dimens.extraLargePadding),
              SizedBox(
                width: Dimens.extraLargePadding * 7,
                child: ElevatedButton(
                  onPressed: () {
                    if (validator.validate(formData).isValid) {
                      viewModel.sendEmailCommand.execute(formData);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            AppLocalizations.of(context)!.successSendEmail,
                          ),
                        ),
                      );
                    }
                  },
                  child: Text(AppLocalizations.of(context)!.textSendButton),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
