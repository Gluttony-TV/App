import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gluttony_app/graphql/queries/show.graphql.dart';
import 'package:gluttony_app/widgets/dragable_card.dart';

class RateCards extends HookWidget {
  final Fragment$baseShow show1;
  final Fragment$baseShow show2;
  final double offset;

  const RateCards({
    super.key,
    this.offset = 0.0,
    required this.show1,
    required this.show2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          DragableCard(
              offset: offset, raising: offset < 0, child: Text(show1.name)),
          DragableCard(
              offset: offset, raising: offset > 0, child: Text(show2.name)),
        ]));
  }
}
