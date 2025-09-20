import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/domain/models/users/user.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:nextmind_mobile_v2/main_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/splash/splash_page.dart';
import 'ui/core/util.dart';
import 'ui/core/theme.dart';
import 'package:routefly/routefly.dart';

import 'package:intl/date_symbol_data_local.dart';
import 'main.route.dart';

part 'main.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const SplashPage());
  await Firebase.initializeApp();
  await initializeDateFormatting('pt_BR', null);
  setupDependencies();
  runApp(const MyApp());
}

@Main('lib/ui')
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final mainViewmodel = injector.get<MainViewmodel>();

  @override
  void initState() {
    super.initState();
    mainViewmodel.addListener(() {
      if (mainViewmodel.user is LoggedUser) {
        Routefly.navigate(routePaths.app.home);
      } else {
        Routefly.navigate(routePaths.auth.signin);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, "Inter", "Inter");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp.router(
      title: 'NextMind Mobile',
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale('en'), Locale('pt')],
      locale: Locale('en'),
      debugShowCheckedModeBanner: false,
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      routerConfig: Routefly.routerConfig(
        routes: routes,
        initialPath: routePaths.auth.signin,
        notFoundPath: routePaths.notFound,
      ),
    );
  }
}
