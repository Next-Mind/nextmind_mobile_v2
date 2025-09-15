import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/domain/dtos/credentials.dart';
import 'package:nextmind_mobile_v2/domain/validators/credentials_validator.dart';
import 'package:nextmind_mobile_v2/ui/auth/sign_in/viewmodels/signin_viewmodel.dart';
import 'package:result_command/result_command.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final viewModel = injector.get<SigninViewmodel>();
  final validator = CredentialsValidator();
  final credentials = Credentials();

  @override
  void initState() {
    super.initState();
    viewModel.loginWithEmailCommand.addListener(() {
      final status = viewModel.loginWithGoogleCommand.value;
      if (status is FailureCommand) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failure: ${status.toString()}'), //
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const FlutterLogo(size: 100),
              const SizedBox(height: 20),
              TextFormField(
                onChanged: credentials.setEmail,
                validator: validator.byField(credentials, 'email'),
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              TextFormField(
                onChanged: credentials.setPassword,
                validator: validator.byField(credentials, 'password'),
                decoration: const InputDecoration(labelText: 'Password'),
              ),
              ListenableBuilder(
                listenable: viewModel.loginWithEmailCommand,
                builder: (context, _) {
                  return ElevatedButton(
                    onPressed:
                        viewModel.loginWithEmailCommand.value is RunningCommand
                        ? null
                        : () {
                            if (validator.validate(credentials).isValid) {
                              viewModel.loginWithEmailCommand.execute(
                                credentials,
                              );
                            }
                          },
                    child: const Text('Login'),
                  );
                },
              ),
              ElevatedButton(
                onPressed: () => viewModel.loginWithGoogleCommand.execute(),
                child: Text('Google'),
              ),
              ElevatedButton(
                onPressed: () => viewModel.logoutCommand.execute(),
                child: Text('Logout'),
              ),
              StreamBuilder(
                stream: viewModel.userObserver(),
                builder: (context, snapshot) {
                  return Text('User: ${snapshot.data.runtimeType}');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
