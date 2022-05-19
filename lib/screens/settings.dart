import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gluttony_app/graphql/queries/user.graphql.dart';
import 'package:gluttony_app/widgets/Layout.dart';

class SettingsScreen extends HookWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = useQuery$self();

    Widget buildContent() {
      if (user.result.isLoading) return const CircularProgressIndicator();
      if (user.result.hasException) {
        return Text(user.result.exception.toString());
      }

      final settings = user.result.parsedData!.user.settings;

      return ListView(children: [
        SwitchListTile(
            title: const Text('Profile'),
            value: settings.visibility.profile,
            onChanged: (v) {}),
        SwitchListTile(
            title: const Text('Favourites'),
            value: settings.visibility.favourites,
            onChanged: (v) {}),
        SwitchListTile(
            title: const Text('Progresses'),
            value: settings.visibility.progress,
            onChanged: (v) {}),
      ]);
    }

    return Layout(
      title: 'Settings',
      body: buildContent(),
    );
  }
}
