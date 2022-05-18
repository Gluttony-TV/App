import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gluttony_app/widgets/Layout.dart';

class SearchScreen extends HookWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final search = useState('');

    return Layout(body: Column(children: [TextFormField(autofocus: true)]));
  }
}
