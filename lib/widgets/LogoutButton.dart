import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gluttony_app/hooks/useSession.dart';

class LogoutButton extends HookWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    final session = useSession();

    void _showDialog() {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Logout'),
              content: const Text('Are you sure you want to sign out?'),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Cancel')),
                TextButton(
                    onPressed: () => session.setToken(null, context),
                    child: const Text('OK')),
              ],
            );
          });
    }

    return ElevatedButton.icon(
        onPressed: _showDialog,
        icon: const Icon(Icons.logout),
        label: const Text('Logout'));
  }
}
