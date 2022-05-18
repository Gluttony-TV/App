import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gluttony_app/config.dart';
import 'package:gluttony_app/hooks/useSession.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class ApiProvider extends HookWidget {
  final Widget child;

  const ApiProvider({super.key, required Widget this.child});

  @override
  Widget build(BuildContext context) {
    final session = useSession();

    //await initHiveForFlutter();

    final auth = AuthLink(
        getToken: () => "$cookieName=${session.token}", headerKey: 'cookie');
    final Link link = auth.concat(HttpLink(graphqlHost));

    final ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        link: link,
        // The default store is the InMemoryStore, which does NOT persist to disk
        //cache: GraphQLCache(store: HiveStore()),
        cache: GraphQLCache(store: InMemoryStore()),
      ),
    );

    return GraphQLProvider(client: client, child: child);
  }
}
