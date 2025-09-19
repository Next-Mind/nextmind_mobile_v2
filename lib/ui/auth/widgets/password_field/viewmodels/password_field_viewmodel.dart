import 'package:flutter/material.dart';

class PasswordFieldViewmodel extends ChangeNotifier {
  final passwordVisibility = ValueNotifier<bool>(true);

  void togglePasswordVisibility() {
    passwordVisibility.value = !passwordVisibility.value;
  }
}
