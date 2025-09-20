import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/domain/dtos/signup_form.dart';
import 'package:nextmind_mobile_v2/domain/validators/signup_form_validator.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:nextmind_mobile_v2/ui/auth/(sign_up)/viewmodels/signup_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/auth/widgets/logo_widget/logo_widget.dart';
import 'package:nextmind_mobile_v2/ui/auth/widgets/password_field/password_field.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';
import 'package:result_command/result_command.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final viewModel = injector.get<SignupViewmodel>();
  final formData = SignupForm.init();
  final validator = SignupFormValidator();
  GlobalKey formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Dimens.mediumPadding),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: Dimens.largePadding * 2),
                LogoWidget(),
                SizedBox(height: Dimens.extraLargePadding * 2),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: validator.byField(formData, 'name'),
                  onChanged: formData.setName,
                  decoration: InputDecoration(
                    hintText: AppLocalizations.of(context)!.fieldHintTextName,
                    prefixIcon: Icon(Icons.person_outline),
                  ),
                ),
                SizedBox(height: Dimens.largePadding),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  //onChanged: formData.setBirthday,
                  validator: validator.byField(formData, 'birthday'),
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                      onPressed: () => (),
                      icon: Icon(Icons.calendar_today_outlined),
                    ),
                    hintText: AppLocalizations.of(
                      context,
                    )!.fieldHintTextBirthday,
                  ),
                ),
                SizedBox(height: Dimens.largePadding),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: validator.byField(formData, 'email'),
                  onChanged: formData.setEmail,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: AppLocalizations.of(context)!.fieldHintTextEmail,
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                ),
                SizedBox(height: Dimens.largePadding),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: validator.byField(formData, 'ra'),
                  onChanged: formData.setRa,
                  decoration: InputDecoration(
                    hintText: AppLocalizations.of(context)!.fieldHintTextRa,
                    prefixIcon: Icon(Icons.format_list_numbered_outlined),
                  ),
                ),
                SizedBox(height: Dimens.largePadding),
                PasswordField(
                  onChanged: formData.setPassword,
                  validator: validator.byField(formData, 'password'),
                ),
                SizedBox(height: Dimens.largePadding),
                ListenableBuilder(
                  listenable: viewModel.submitFormCommand,
                  builder: (context, child) {
                    return ElevatedButton(
                      onPressed:
                          viewModel.submitFormCommand.value is RunningCommand
                          ? null
                          : () {
                              if (validator.validate(formData).isValid) {
                                viewModel.submitFormCommand.execute(formData);
                              }
                            },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          viewModel.submitFormCommand.value is RunningCommand
                              ? CircularProgressIndicator(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.inversePrimary,
                                )
                              : Text(AppLocalizations.of(context)!.signUp),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
