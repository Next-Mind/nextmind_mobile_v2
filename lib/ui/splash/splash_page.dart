import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/ui/auth/widgets/logo_widget/logo_widget.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(heightFactor: 0.6, widthFactor: 0.6, child: LogoWidget());
  }
}
