import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class NavBarRoute {
  final IconData icon;
  final String label;
  final String path;
  const NavBarRoute(
      {required this.icon, required this.label, required this.path});
}

class NavBar extends HookWidget {
  const NavBar({super.key});

  static const routes = [
    NavBarRoute(icon: Icons.home, label: 'Home', path: '/'),
    NavBarRoute(icon: Icons.login, label: 'Watched', path: '/watched'),
    NavBarRoute(icon: Icons.person, label: 'Profile', path: '/profile'),
  ];

  @override
  Widget build(BuildContext context) {
    final currentRoute = ModalRoute.of(context)?.settings.name;
    final selected =
        useMemoized(() => routes.indexWhere((r) => r.path == currentRoute));

    final items = useMemoized(
        () => routes
            .map((route) => BottomNavigationBarItem(
                icon: Icon(route.icon), label: route.label))
            .toList(),
        const [routes]);

    void onTap(int index) {
      Navigator.pushNamed(context, routes[index].path);
    }

    return BottomNavigationBar(
        onTap: onTap, currentIndex: max(selected, 0), items: items);
  }
}
