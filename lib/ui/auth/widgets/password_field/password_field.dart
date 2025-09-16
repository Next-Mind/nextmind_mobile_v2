import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/ui/auth/widgets/password_field/viewmodels/password_field_viewmodel.dart';

class PasswordField extends StatefulWidget {
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  const PasswordField({super.key, this.onChanged, this.validator});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  final viewModel = injector.get<PasswordFieldViewmodel>();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: viewModel.passwordVisibility,
      builder: (context, value, child) {
        return TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: widget.onChanged,
          validator: widget.validator,
          decoration: InputDecoration(
            labelText: 'fieldHintTextPassword',
            prefixIcon: Icon(Icons.lock_outline),
            suffixIcon: IconButton(
              onPressed: viewModel.togglePasswordVisibility,
              icon: Icon(
                viewModel.passwordVisibility.value
                    ? Icons.visibility
                    : Icons.visibility_off,
              ),
            ),
          ),
          obscureText: viewModel.passwordVisibility.value,
        );
      },
    );
  }
}
