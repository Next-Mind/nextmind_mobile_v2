import 'package:flutter/material.dart';
import 'ui/core/util.dart';
import 'ui/core/theme.dart';
import 'package:routefly/routefly.dart';
import 'main.route.dart';

part 'main.g.dart';

void main() {
  runApp(const MyApp());
}

@Main('lib/ui')
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, "Inter", "Inter");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      routerConfig: Routefly.routerConfig(
        routes: routes,
        initialPath: routePaths.splash,
      ),
    );
  }
}
