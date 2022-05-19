import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gluttony_app/graphql/queries/show.graphql.dart';
import 'package:gluttony_app/graphql/queries/watched.graphql.dart';
import 'package:gluttony_app/widgets/layout.dart';
import 'package:gluttony_app/widgets/rate_cards.dart';

class RateScreen extends HookWidget {
  const RateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final offset = useState(0.0);
    final shows = useQuery$watched();

    final cards = useState<List<Fragment$baseShow>>([]);

    Future<void> reload() async {
      cards.value = [];
      await Future.delayed(const Duration(milliseconds: 400));
      cards.value = shows.result.parsedData!.progresses.edges
          .map((edge) => edge.node.$show)
          .toList();
      cards.value.shuffle();
    }

    useEffect(() {
      reload();
      return null;
    }, const []);

    if (cards.value.length < 2) {
      return const Layout(body: CircularProgressIndicator());
    }

    Future<void> dragEnd(DragEndDetails details) async {
      if (offset.value.abs() > 160) {
        await reload();
      }
      offset.value = 0.0;
    }

    return Layout(
        body: GestureDetector(
            onHorizontalDragUpdate: (details) =>
                offset.value += details.delta.dx,
            onHorizontalDragEnd: dragEnd,
            child: Container(
                color: Colors.transparent,
                child: Column(children: [
                  Expanded(
                      child: Center(
                          child: RateCards(
                    offset: offset.value,
                    show1: cards.value[0],
                    show2: cards.value[1],
                  )))
                ]))));
  }
}
