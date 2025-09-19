import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/ui/app/widgets/viewmodels/bottom_navbar_viewmodel.dart';

class BottomNavbar extends StatelessWidget {
  BottomNavbar({super.key});

  final viewModel = injector.get<BottomNavbarViewmodel>();

  final destinations = <NavigationDestination>[
    NavigationDestination(icon: Icon(Icons.home), label: 'navHome'),
    NavigationDestination(
      icon: Icon(Icons.calendar_month),
      label: 'navAppointment',
    ),
    NavigationDestination(icon: Icon(Icons.chat_bubble), label: 'navChat'),
    NavigationDestination(icon: Icon(Icons.settings), label: 'navSettings'),
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: viewModel.selectedIndex,
      builder: (context, index, child) {
        return NavigationBar(
          onDestinationSelected: viewModel.handle,
          selectedIndex: index as int,
          destinations: destinations,
        );
      },
    );
  }
}
