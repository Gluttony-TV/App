import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gluttony_app/graphql/queries/show.graphql.dart';
import 'package:gluttony_app/widgets/layout.dart';

class ShowArguments {
  final int id;

  const ShowArguments({required this.id});
}

class ShowScreen extends HookWidget {
  const ShowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final args = ModalRoute.of(context)!.settings.arguments as ShowArguments;
    final show = useQuery$show(
        Options$Query$show(variables: Variables$Query$show(id: args.id)));

    if (show.result.isLoading) {
      return const Layout(body: CircularProgressIndicator());
    }

    return Layout(
        body: SingleChildScrollView(
            child: Column(children: [
      Text(show.result.parsedData!.$show.name,
          style: theme.textTheme.headline3),
      Text(show.result.parsedData!.$show.overview),
      Image.network(
        show.result.parsedData!.$show.image!,
        fit: BoxFit.cover,
      )
    ])));
  }
}
