import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).buttonTheme;

    return Container(
        margin: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(children: [
          TextButton.icon(
              onPressed: () => Navigator.pushNamed(context, '/lists'),
              icon: const Icon(Icons.list),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(theme.height)),
              label: const Text('List'))
        ]));
  }
}
