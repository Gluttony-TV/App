String get apiHost {
  bool isProd = const bool.fromEnvironment('dart.vm.product');
  if (isProd) return 'https://gluttony.macarena.ceo/api';
  return 'https://f281-193-135-254-19.eu.ngrok.io/api';
}

String get graphqlHost {
  return "$apiHost/graphql";
}

String get cookieName {
  const String base = 'next-auth.session-token';
  if (apiHost.startsWith('https://')) {
    return "__Secure-$base";
  } else {
    return base;
  }
}
