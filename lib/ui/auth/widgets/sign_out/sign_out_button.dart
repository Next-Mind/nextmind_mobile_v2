import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/ui/auth/widgets/sign_out/viewmodels/sign_out_viewmodel.dart';
import 'package:result_command/result_command.dart';

class SignOutButton extends StatefulWidget {
  const SignOutButton({super.key});

  @override
  State<SignOutButton> createState() => _SignOutButtonState();
}

class _SignOutButtonState extends State<SignOutButton> {
  final viewModel = injector.get<SignOutViewmodel>();

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel.logoutCommand,
      builder: (context, _) {
        return ElevatedButton(
          onPressed: viewModel.logoutCommand.execute,
          child: viewModel.logoutCommand.value is RunningCommand
              ? CircularProgressIndicator()
              : Text('Logout'),
        );
      },
    );
  }
}
