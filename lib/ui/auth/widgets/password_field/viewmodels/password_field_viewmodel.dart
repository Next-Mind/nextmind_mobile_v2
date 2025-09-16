import 'package:flutter/material.dart';

class PasswordFieldViewmodel extends ChangeNotifier {
  final passwordVisibility = ValueNotifier<bool>(false);

  void togglePasswordVisibility() {
    passwordVisibility.value = !passwordVisibility.value;
  }
}
