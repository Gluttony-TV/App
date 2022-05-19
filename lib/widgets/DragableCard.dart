import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DragableCard extends HookWidget {
  final Widget child;
  final double offset;
  final bool raising;

  const DragableCard({
    super.key,
    required this.child,
    this.offset = 0.0,
    this.raising = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    //final controller = useAnimationController();
    //final animation =
    //    CurvedAnimation(parent: controller, curve: Curves.easeOut);

    final mult = (raising ? -1 : 0.5);
    final degrees = min(20.0, max(-20.0, offset / 1000)) * -mult;
    final double dy = offset.abs() * mult * 0.5;
    final dx = raising ? offset / 3 : 0.0;
    final opacity = raising ? 1.0 : max(0.2, min(1.0, 1.0 - dy.abs() / 20));

    return Expanded(
        child: AspectRatio(
            aspectRatio: 1,
            child: Container(
                margin: const EdgeInsets.all(8.0),
                child: Transform.translate(
                  offset: Offset(dx, dy),
                  child: Transform.rotate(
                      angle: degrees,
                      //child: RotationTransition(
                      //    turns: animation,
                      child: Opacity(
                          opacity: opacity,
                          child: Material(
                              borderRadius: BorderRadius.circular(12.0),
                              color: theme.colorScheme.primary,
                              child: InkWell(
                                child: Center(child: child),
                              )))),
                ))));
  }
}
