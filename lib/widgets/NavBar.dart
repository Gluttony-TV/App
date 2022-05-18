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
    NavBarRoute(icon: Icons.search, label: 'Search', path: '/search'),
    NavBarRoute(icon: Icons.movie, label: 'Watched', path: '/watched'),
    NavBarRoute(icon: Icons.star, label: 'Rate', path: '/rate'),
    NavBarRoute(icon: Icons.person, label: 'Profile', path: '/profile'),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final currentRoute = ModalRoute.of(context)?.settings.name;
    final selected = useMemoized(
        () => routes.indexWhere((r) => r.path == currentRoute), [currentRoute]);

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
        onTap: onTap,
        selectedItemColor: theme.colorScheme.primary,
        currentIndex: max(selected, 0),
        type: BottomNavigationBarType.fixed,
        items: items);
  }
}
