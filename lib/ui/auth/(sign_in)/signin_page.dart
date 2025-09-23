import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:nextmind_mobile_v2/domain/dtos/credentials.dart';
import 'package:nextmind_mobile_v2/domain/validators/credentials_validator.dart';
import 'package:nextmind_mobile_v2/main.dart';
import 'package:nextmind_mobile_v2/ui/auth/(sign_in)/viewmodels/signin_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/auth/widgets/logo_widget/logo_widget.dart';
import 'package:nextmind_mobile_v2/ui/auth/widgets/password_field/password_field.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';
import 'package:result_command/result_command.dart';
import 'package:routefly/routefly.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final viewModel = injector.get<SigninViewmodel>();
  final validator = CredentialsValidator();
  final credentials = Credentials();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    viewModel.loginWithEmailCommand.addListener(_listenable);
  }

  void _listenable() {
    final status = viewModel.loginWithEmailCommand.value;
    if (status is FailureCommand) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failure: ${status.toString()}'), //
        ),
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    viewModel.loginWithEmailCommand.removeListener(_listenable);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(Dimens.mediumPadding),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: Dimens.extraLargePadding * 2),
                  LogoWidget(),
                  SizedBox(height: Dimens.extraLargePadding * 2),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    onChanged: credentials.setEmail,
                    validator: validator.byField(credentials, 'email'),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: AppLocalizations.of(
                        context,
                      )!.fieldHintTextEmail,
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                  ),
                  SizedBox(height: Dimens.extraLargePadding),
                  PasswordField(
                    onChanged: credentials.setPassword,
                    validator: validator.byField(credentials, 'password'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () =>
                            Routefly.push(routePaths.auth.forgotPassword),
                        child: Text(
                          AppLocalizations.of(context)!.forgotPassword,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Dimens.largePadding * 1.5),
                  SizedBox(
                    width: 220,
                    child: Column(
                      children: [
                        ListenableBuilder(
                          listenable: viewModel.loginWithEmailCommand,
                          builder: (context, _) {
                            return ElevatedButton(
                              onPressed:
                                  viewModel.loginWithEmailCommand.value
                                      is RunningCommand
                                  ? null
                                  : () {
                                      if (validator
                                          .validate(credentials)
                                          .isValid) {
                                        viewModel.loginWithEmailCommand.execute(
                                          credentials,
                                        );
                                      }
                                    },
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(220, 48),
                              ),
                              child: Text(AppLocalizations.of(context)!.signIn),
                            );
                          },
                        ),
                        SizedBox(height: Dimens.mediumPadding),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(220, 48),
                          ),
                          onPressed: viewModel.loginWithGoogleCommand.execute,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Image.network(
                                'http://pngimg.com/uploads/google/google_PNG19635.png',
                                height: 30,
                                width: 30,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 5.0),
                              Text(
                                AppLocalizations.of(context)!.signInWithGoogle,
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: Dimens.mediumPadding),
                  TextButton(
                    onPressed: () {
                      Routefly.push(routePaths.auth.signup);
                    },
                    child: Text(AppLocalizations.of(context)!.createAccount),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
