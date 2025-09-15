import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'ui/core/util.dart';
import 'ui/core/theme.dart';
import 'package:routefly/routefly.dart';
import 'main.route.dart';

part 'main.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setupDependencies();
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
      title: 'NextMind Mobile',
      debugShowCheckedModeBanner: false,
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      routerConfig: Routefly.routerConfig(
        routes: routes,
        initialPath: routePaths.auth.signIn.signin,
      ),
    );
  }
}
