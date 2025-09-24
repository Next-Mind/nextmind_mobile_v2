import 'package:flutter/material.dart';
import 'package:logger/web.dart';
import 'package:nextmind_mobile_v2/main.dart';
import 'package:routefly/routefly.dart';

class BottomNavbarViewmodel extends ChangeNotifier {
  final Logger _log;
  final ValueNotifier<int> _selectedIndex = ValueNotifier<int>(0);
  get selectedIndex => _selectedIndex;

  BottomNavbarViewmodel(this._log) {
    _log.d("Iniciando $runtimeType");
  }

  void resetIndex() {
    _selectedIndex.value = 0;
  }

  void handle(value) {
    _selectedIndex.value = value;
    switch (value) {
      case 0:
        Routefly.navigate(routePaths.app.home);
        break;
      case 1:
        Routefly.navigate(routePaths.app.home);
        break;
      case 2:
        Routefly.navigate(routePaths.app.chat.path);
        break;
      case 3:
        Routefly.navigate(routePaths.app.settings.path);
        break;
      default:
        Routefly.navigate(routePaths.notFound);
        break;
    }
  }
}
