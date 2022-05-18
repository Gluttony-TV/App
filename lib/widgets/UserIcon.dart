import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/cupertino.dart';
import 'package:gluttony_app/graphql/queries/query.graphql.dart';

class UserIcon extends StatelessWidget {
  final Query$self$self user;

  const UserIcon({super.key, required this.user});

  String get gravatarUrl {
    final hashed = md5.convert(utf8.encode(user.email));
    return "https://www.gravatar.com/avatar/$hashed?r=g&d=mp";
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Image.network(user.image ?? gravatarUrl),
    );
  }
}
