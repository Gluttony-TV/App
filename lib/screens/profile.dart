import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gluttony_app/graphql/queries/query.graphql.dart';
import 'package:gluttony_app/widgets/Layout.dart';
import 'package:gluttony_app/widgets/LogoutButton.dart';
import 'package:gluttony_app/widgets/ProfileButtons.dart';
import 'package:gluttony_app/widgets/UserIcon.dart';

class ProfileScreen extends HookWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = useQuery$self();

    Widget buildContent() {
      if (user.result.isLoading) return const CircularProgressIndicator();
      if (user.result.hasException) {
        return Text(user.result.exception.toString());
      }

      return Column(children: [
        Row(children: [
          Container(
            margin: const EdgeInsets.only(right: 12.0),
            child: UserIcon(user: user.result.parsedData!.self),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(user.result.parsedData!.self.name,
                style: Theme.of(context).textTheme.headline6),
            Text(user.result.parsedData!.self.email),
          ])
        ]),
        const ProfileButtons(),
        const LogoutButton(),
      ]);
    }

    return Layout(
      title: 'Profile',
      body: buildContent(),
    );
  }
}
