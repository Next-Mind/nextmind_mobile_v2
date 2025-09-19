import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/main.dart';
import 'package:routefly/routefly.dart';

class BottomNavbarViewmodel extends ChangeNotifier {
  final ValueNotifier<int> _selectedIndex = ValueNotifier<int>(1);
  get selectedIndex => _selectedIndex;

  void handle(value) {
    _selectedIndex.value = value;
    switch (value) {
      case 0:
        Routefly.push(routePaths.app.home);
        break;
      case 1:
        Routefly.push(routePaths.app.home);
        break;
      case 2:
        Routefly.push(routePaths.app.home);
        break;
      case 3:
        Routefly.push(routePaths.app.home);
        break;
      default:
        Routefly.push(routePaths.notFound);
        break;
    }
  }
}
