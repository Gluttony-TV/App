import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gluttony_app/graphql/queries/watched.graphql.dart';
import 'package:gluttony_app/screens/show.dart';
import 'package:gluttony_app/widgets/Layout.dart';

class WatchedScreen extends HookWidget {
  const WatchedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final watched = useQuery$watched();

    if (watched.result.isLoading) {
      return const Layout(body: CircularProgressIndicator());
    }

    return Layout(
        body: ListView.builder(
            itemCount: watched.result.parsedData?.progresses.edges.length ?? 0,
            itemBuilder: (_, index) {
              final show =
                  watched.result.parsedData?.progresses.edges[index].node.$show;
              return TextButton(
                  onPressed: () => Navigator.pushNamed(context, '/show/:id',
                      arguments: ShowArguments(id: show!.id)),
                  child: Text(show!.name));
            }));
  }
}
