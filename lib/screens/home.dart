import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gluttony_app/hooks/session.dart';
import 'package:gluttony_app/widgets/layout.dart';

class WelcomeScreen extends HookWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final session = useSession();

    return Layout(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          const Text('Welcome'),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(
                context, session.loggedIn ? '/profile' : '/login'),
            child: Text(session.loggedIn ? 'View your profile' : 'Login'),
          )
        ]));
  }
}
