import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gluttony_app/hooks/useSession.dart';
import 'package:gluttony_app/shared/NavBar.dart';

class Layout extends HookWidget {
  final Widget? body;

  const Layout({Key? key, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final session = useSession();

    return Scaffold(
      appBar: AppBar(title: const Text('Gluttony')),
      bottomNavigationBar: session.loggedIn ? const NavBar() : null,
      body: body,
    );
  }
}
