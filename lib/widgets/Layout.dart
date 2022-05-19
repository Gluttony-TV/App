import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gluttony_app/hooks/session.dart';
import 'package:gluttony_app/widgets/nav_bar.dart';

class Layout extends HookWidget {
  final Widget body;
  final String? title;

  const Layout({Key? key, required this.body, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final session = useSession();

    return Scaffold(
      appBar: AppBar(title: Text(title ?? 'Gluttony')),
      bottomNavigationBar: session.loggedIn ? const NavBar() : null,
      body: Center(
          child: Padding(padding: const EdgeInsets.all(8.0), child: body)),
    );
  }
}
