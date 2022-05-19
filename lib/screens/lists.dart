import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gluttony_app/graphql/queries/lists.graphql.dart';
import 'package:gluttony_app/widgets/layout.dart';

class ListsScreen extends HookWidget {
  const ListsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final lists = useQuery$lists();

    final content = useMemoized(
        () =>
            lists.result.parsedData?.lists
                .map((list) =>
                    ListTile(key: Key(list.name), title: Text(list.name)))
                .toList() ??
            [],
        [lists.result]);

    if (lists.result.hasException) {
      return Layout(body: Text(lists.result.exception?.toString() ?? ''));
    }
    return Layout(body: ListView(children: content));
  }
}
