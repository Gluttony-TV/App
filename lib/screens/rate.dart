import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gluttony_app/widgets/Layout.dart';

class RateScreen extends HookWidget {
  const RateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Layout(body: Text('Rate'));
  }
}
