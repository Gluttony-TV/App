String get apiHost {
  bool isProd = const bool.fromEnvironment('dart.vm.product');
  if (isProd) return 'https://gluttony.macarena.ceo/api';
  return 'https://713d-5-158-169-59.eu.ngrok.io/api';
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
