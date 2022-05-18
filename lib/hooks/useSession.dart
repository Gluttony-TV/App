import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:provider/provider.dart';

class Session {
  final String? token;
  final Function(FutureOr<String>?, BuildContext) setToken;

  bool get loggedIn {
    return token != null;
  }

  const Session({this.token, required this.setToken});
}

const storage = FlutterSecureStorage();

Session useSession() {
  final context = useContext();
  return context.watch<Session>();
}

class SessionProvider extends HookWidget {
  final Widget child;

  const SessionProvider({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final token = useState<String?>(null);

    useEffect(() {
      storage.read(key: 'token').then((value) {
        token.value = value;
      });
    }, [storage]);

    final setToken =
        useCallback((FutureOr<String>? future, BuildContext context) async {
      final navigator = Navigator.of(context);
      final newToken = await future;
      if (newToken != null) {
        storage.write(key: 'token', value: newToken);
      } else {
        storage.delete(key: 'token');
      }
      token.value = newToken;
      navigator.pushNamed('/');
    }, [token]);

    return ProxyProvider0(
        update: (_, __) => Session(token: token.value, setToken: setToken),
        child: child);
  }
}
