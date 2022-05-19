import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gluttony_app/widgets/layout.dart';

enum SearchSubject {
  users(icon: Icons.person_search),
  shows(icon: Icons.movie);

  final IconData icon;

  const SearchSubject({required this.icon});
}

class SearchScreen extends HookWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final search = useState('');
    final subject = useState(SearchSubject.shows);
    final theme = Theme.of(context);

    final subjectButtons = useMemoized(
        () => SearchSubject.values
            .map((s) => IconButton(
                color: s == subject.value
                    ? theme.colorScheme.primary
                    : theme.iconTheme.color,
                key: Key(s.name),
                onPressed: () => subject.value = s,
                icon: Icon(s.icon)))
            .toList(),
        [subject.value, theme]);

    return Layout(
        body: Column(children: [
      Container(
          margin: const EdgeInsets.only(bottom: 16.0),
          child: TextFormField(
              autofocus: true, onChanged: (v) => search.value = v)),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: subjectButtons)
    ]));
  }
}
