import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gluttony_app/hooks/useSession.dart';
import 'package:gluttony_app/screens/ApiProvider.dart';
import 'package:gluttony_app/screens/login.dart';
import 'package:gluttony_app/screens/profile.dart';
import 'package:gluttony_app/screens/welcome.dart';

void main() async {
  runApp(const SessionProvider(child: ApiProvider(child: GluttonyApp())));
}

class GluttonyApp extends HookWidget {
  const GluttonyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/profile': (context) => const ProfileScreen()
      },
      initialRoute: '/',
    );
  }
}
