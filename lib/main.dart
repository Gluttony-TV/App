import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gluttony_app/hooks/useSession.dart';
import 'package:gluttony_app/screens/404.dart';
import 'package:gluttony_app/screens/home.dart';
import 'package:gluttony_app/screens/lists.dart';
import 'package:gluttony_app/screens/login.dart';
import 'package:gluttony_app/screens/profile.dart';
import 'package:gluttony_app/screens/rate.dart';
import 'package:gluttony_app/screens/search.dart';
import 'package:gluttony_app/screens/settings.dart';
import 'package:gluttony_app/themes/dark.dart';
import 'package:gluttony_app/themes/light.dart';
import 'package:gluttony_app/widgets/ApiProvider.dart';

void main() async {
  runApp(const SessionProvider(child: ApiProvider(child: GluttonyApp())));
}

class GluttonyApp extends HookWidget {
  const GluttonyApp({super.key});

  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => const WelcomeScreen(),
    '/login': (context) => LoginScreen(),
    '/profile': (context) => const ProfileScreen(),
    '/profile/lists': (context) => const ListsScreen(),
    '/profile/settings': (context) => const SettingsScreen(),
    '/rate': (context) => const RateScreen(),
    '/search': (context) => const SearchScreen(),
  };

  Route generateRoute(RouteSettings settings) {
    final route = routes[settings.name] ?? (_) => const NotFound();
    return PageRouteBuilder(
        settings: settings,
        pageBuilder: (context, _, __) => route(context),
        transitionsBuilder: (context, opacity, _, child) {
          return child;
        });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gluttony',
      theme: lightTheme,
      darkTheme: darkTheme,
      onGenerateRoute: generateRoute,
      //routes: routes,
      initialRoute: '/',
    );
  }
}
