import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gluttony_app/graphql/queries/user.graphql.dart';
import 'package:gluttony_app/widgets/layout.dart';
import 'package:gluttony_app/widgets/logout_button.dart';
import 'package:gluttony_app/widgets/profile_buttons.dart';
import 'package:gluttony_app/widgets/user_icon.dart';

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

      return Row(children: [
        Container(
          margin: const EdgeInsets.all(12.0),
          child: UserIcon(user: user.result.parsedData!.user),
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(user.result.parsedData!.user.name,
              style: Theme.of(context).textTheme.headline6),
          Text(user.result.parsedData!.user.email),
        ])
      ]);
    }

    return Layout(
      title: 'Profile',
      body: Column(children: [
        buildContent(),
        const ProfileButtons(),
        const LogoutButton(),
      ]),
    );
  }
}
