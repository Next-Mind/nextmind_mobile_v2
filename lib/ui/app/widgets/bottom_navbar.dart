import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:nextmind_mobile_v2/ui/app/widgets/viewmodels/bottom_navbar_viewmodel.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  final viewModel = injector.get<BottomNavbarViewmodel>();

  @override
  void dispose() {
    super.dispose();
    viewModel.resetIndex();
  }

  @override
  Widget build(BuildContext context) {
    //destinations
    final destinations = <NavigationDestination>[
      NavigationDestination(
        icon: Icon(Icons.home),
        label: AppLocalizations.of(context)!.navHome,
      ),
      NavigationDestination(
        icon: Icon(Icons.calendar_month),
        label: AppLocalizations.of(context)!.navAppointment,
      ),
      NavigationDestination(
        icon: Icon(Icons.chat_bubble),
        label: AppLocalizations.of(context)!.navChat,
      ),
      NavigationDestination(
        icon: Icon(Icons.settings),
        label: AppLocalizations.of(context)!.navSettings,
      ),
    ];

    //widget
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
