import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/ui/auth/widgets/sign_out/sign_out_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: SignOutButton()));
  }
}
