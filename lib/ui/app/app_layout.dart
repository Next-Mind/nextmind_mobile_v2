import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/ui/app/widgets/bottom_navbar.dart';
import 'package:routefly/routefly.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: RouterOutlet(), bottomNavigationBar: BottomNavbar());
  }
}
