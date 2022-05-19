import 'package:flutter/widgets.dart';
import 'package:gluttony_app/widgets/Layout.dart';

class UserArguments {
  final String id;

  const UserArguments({required this.id});
}

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Layout(body: Text('Not Found'));
  }
}
