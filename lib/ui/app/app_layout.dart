import 'package:flutter/material.dart';
import 'package:routefly/routefly.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RouterOutlet(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Contacts'),
        ],
      ),
    );
  }
}
