import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo/logotipo_branco.png',
      width: MediaQuery.of(context).size.width * 0.70,
    );
  }
}
