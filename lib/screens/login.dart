import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gluttony_app/config.dart';
import 'package:gluttony_app/hooks/useSession.dart';
import 'package:gluttony_app/shared/Layout.dart';
import 'package:webview_cookie_manager/webview_cookie_manager.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LoginScreen extends HookWidget {
  final cookieManager = WebviewCookieManager();

  final loginUrl = "$apiHost/auth/signin";

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final session = useSession();

    useEffect(() {
      WebView.platform = AndroidWebView();
      return () {
        WebView.platform = null;
      };
    }, const []);

    Future<NavigationDecision> postLogin(NavigationRequest req) async {
      if (loginUrl == req.url) return NavigationDecision.navigate;

      final cookies = cookieManager.getCookies(req.url);
      session.setToken(cookies.then((cookies) {
        return cookies.firstWhere((c) => c.name == cookieName).value;
      }), context);

      return NavigationDecision.prevent;
    }

    return Layout(
        body: WebView(initialUrl: loginUrl, navigationDelegate: postLogin));
  }
}
