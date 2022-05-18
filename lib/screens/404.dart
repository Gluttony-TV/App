import 'package:flutter/widgets.dart';
import 'package:gluttony_app/widgets/Layout.dart';

class NotFound extends StatelessWidget {
  const NotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return const Layout(body: Text('Not Found'));
  }
}
