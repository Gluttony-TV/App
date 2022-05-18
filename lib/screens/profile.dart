import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gluttony_app/graphql/queries/query.graphql.dart';
import 'package:gluttony_app/hooks/useSession.dart';
import 'package:gluttony_app/shared/Layout.dart';
import 'package:gluttony_app/shared/UserIcon.dart';

class ProfileScreen extends HookWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final session = useSession();
    final user = useQuery$self();

    Widget buildContent() {
      if (user.result.isLoading) return const Text('Loading...');
      if (user.result.hasException) {
        return Text(user.result.exception.toString());
      }

      return Column(children: [
        Text(user.result.parsedData!.self.name),
        Text(user.result.parsedData!.self.email),
        UserIcon(user: user.result.parsedData!.self),
        ElevatedButton(
            onPressed: () => session.setToken(null, context),
            child: const Text('Logout'))
      ]);
    }

    return Layout(
        body: Center(
            child: Column(
      children: [
        ElevatedButton(onPressed: user.refetch, child: const Text('Refetch')),
        buildContent()
      ],
    )));
  }
}
