import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gluttony_app/hooks/api_provider.dart';
import 'package:gluttony_app/hooks/session.dart';
import 'package:gluttony_app/screens/home.dart';
import 'package:gluttony_app/screens/lists.dart';
import 'package:gluttony_app/screens/login.dart';
import 'package:gluttony_app/screens/notfound.dart';
import 'package:gluttony_app/screens/profile.dart';
import 'package:gluttony_app/screens/rate.dart';
import 'package:gluttony_app/screens/search.dart';
import 'package:gluttony_app/screens/settings.dart';
import 'package:gluttony_app/screens/show.dart';
import 'package:gluttony_app/screens/user.dart';
import 'package:gluttony_app/screens/users.dart';
import 'package:gluttony_app/screens/watched.dart';
import 'package:gluttony_app/themes/dark.dart';
import 'package:gluttony_app/themes/light.dart';

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
    '/watched': (context) => const WatchedScreen(),
    '/show/:id': (context) => const ShowScreen(),
    '/users': (context) => const UsersScreen(),
    '/users/:id': (context) => const UserScreen(),
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
