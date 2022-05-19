// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fragment$baseUser _$Fragment$baseUserFromJson(Map<String, dynamic> json) =>
    Fragment$baseUser(
      id: json['id'] as String,
      name: json['name'] as String,
      joinedAt: json['joinedAt'] as int,
      email: json['email'] as String,
      seeded: json['seeded'] as bool?,
      image: json['image'] as String?,
      settings: Fragment$baseUser$settings.fromJson(
          json['settings'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$baseUserToJson(Fragment$baseUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'joinedAt': instance.joinedAt,
      'email': instance.email,
      'seeded': instance.seeded,
      'image': instance.image,
      'settings': instance.settings.toJson(),
      '__typename': instance.$__typename,
    };

Fragment$baseUser$settings _$Fragment$baseUser$settingsFromJson(
        Map<String, dynamic> json) =>
    Fragment$baseUser$settings(
      visibility: Fragment$baseUser$settings$visibility.fromJson(
          json['visibility'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$baseUser$settingsToJson(
        Fragment$baseUser$settings instance) =>
    <String, dynamic>{
      'visibility': instance.visibility.toJson(),
      '__typename': instance.$__typename,
    };

Fragment$baseUser$settings$visibility
    _$Fragment$baseUser$settings$visibilityFromJson(
            Map<String, dynamic> json) =>
        Fragment$baseUser$settings$visibility(
          profile: json['profile'] as bool,
          progress: json['progress'] as bool,
          favourites: json['favourites'] as bool,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Fragment$baseUser$settings$visibilityToJson(
        Fragment$baseUser$settings$visibility instance) =>
    <String, dynamic>{
      'profile': instance.profile,
      'progress': instance.progress,
      'favourites': instance.favourites,
      '__typename': instance.$__typename,
    };

Fragment$baseAccount _$Fragment$baseAccountFromJson(
        Map<String, dynamic> json) =>
    Fragment$baseAccount(
      id: json['id'] as String,
      provider: json['provider'] as String,
      name: json['name'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$baseAccountToJson(
        Fragment$baseAccount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'provider': instance.provider,
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Variables$Query$user _$Variables$Query$userFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$user(
      id: json['id'] as String,
    );

Map<String, dynamic> _$Variables$Query$userToJson(
        Variables$Query$user instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

Query$user _$Query$userFromJson(Map<String, dynamic> json) => Query$user(
      user: Query$user$user.fromJson(json['user'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$userToJson(Query$user instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      '__typename': instance.$__typename,
    };

Query$user$user _$Query$user$userFromJson(Map<String, dynamic> json) =>
    Query$user$user(
      id: json['id'] as String,
      name: json['name'] as String,
      joinedAt: json['joinedAt'] as int,
      email: json['email'] as String,
      seeded: json['seeded'] as bool?,
      image: json['image'] as String?,
      settings: Query$user$user$settings.fromJson(
          json['settings'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$user$userToJson(Query$user$user instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'joinedAt': instance.joinedAt,
      'email': instance.email,
      'seeded': instance.seeded,
      'image': instance.image,
      'settings': instance.settings.toJson(),
      '__typename': instance.$__typename,
    };

Query$user$user$settings _$Query$user$user$settingsFromJson(
        Map<String, dynamic> json) =>
    Query$user$user$settings(
      visibility: Query$user$user$settings$visibility.fromJson(
          json['visibility'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$user$user$settingsToJson(
        Query$user$user$settings instance) =>
    <String, dynamic>{
      'visibility': instance.visibility.toJson(),
      '__typename': instance.$__typename,
    };

Query$user$user$settings$visibility
    _$Query$user$user$settings$visibilityFromJson(Map<String, dynamic> json) =>
        Query$user$user$settings$visibility(
          profile: json['profile'] as bool,
          progress: json['progress'] as bool,
          favourites: json['favourites'] as bool,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$user$user$settings$visibilityToJson(
        Query$user$user$settings$visibility instance) =>
    <String, dynamic>{
      'profile': instance.profile,
      'progress': instance.progress,
      'favourites': instance.favourites,
      '__typename': instance.$__typename,
    };

Variables$Query$userWatched _$Variables$Query$userWatchedFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$userWatched(
      id: json['id'] as String,
    );

Map<String, dynamic> _$Variables$Query$userWatchedToJson(
        Variables$Query$userWatched instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

Query$userWatched _$Query$userWatchedFromJson(Map<String, dynamic> json) =>
    Query$userWatched(
      user:
          Query$userWatched$user.fromJson(json['user'] as Map<String, dynamic>),
      watched: Query$userWatched$watched.fromJson(
          json['watched'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$userWatchedToJson(Query$userWatched instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'watched': instance.watched.toJson(),
      '__typename': instance.$__typename,
    };

Query$userWatched$user _$Query$userWatched$userFromJson(
        Map<String, dynamic> json) =>
    Query$userWatched$user(
      id: json['id'] as String,
      name: json['name'] as String,
      joinedAt: json['joinedAt'] as int,
      email: json['email'] as String,
      seeded: json['seeded'] as bool?,
      image: json['image'] as String?,
      settings: Query$userWatched$user$settings.fromJson(
          json['settings'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$userWatched$userToJson(
        Query$userWatched$user instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'joinedAt': instance.joinedAt,
      'email': instance.email,
      'seeded': instance.seeded,
      'image': instance.image,
      'settings': instance.settings.toJson(),
      '__typename': instance.$__typename,
    };

Query$userWatched$user$settings _$Query$userWatched$user$settingsFromJson(
        Map<String, dynamic> json) =>
    Query$userWatched$user$settings(
      visibility: Query$userWatched$user$settings$visibility.fromJson(
          json['visibility'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$userWatched$user$settingsToJson(
        Query$userWatched$user$settings instance) =>
    <String, dynamic>{
      'visibility': instance.visibility.toJson(),
      '__typename': instance.$__typename,
    };

Query$userWatched$user$settings$visibility
    _$Query$userWatched$user$settings$visibilityFromJson(
            Map<String, dynamic> json) =>
        Query$userWatched$user$settings$visibility(
          profile: json['profile'] as bool,
          progress: json['progress'] as bool,
          favourites: json['favourites'] as bool,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$userWatched$user$settings$visibilityToJson(
        Query$userWatched$user$settings$visibility instance) =>
    <String, dynamic>{
      'profile': instance.profile,
      'progress': instance.progress,
      'favourites': instance.favourites,
      '__typename': instance.$__typename,
    };

Query$userWatched$watched _$Query$userWatched$watchedFromJson(
        Map<String, dynamic> json) =>
    Query$userWatched$watched(
      pageInfo: Query$userWatched$watched$pageInfo.fromJson(
          json['pageInfo'] as Map<String, dynamic>),
      edges: (json['edges'] as List<dynamic>)
          .map((e) => Query$userWatched$watched$edges.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$userWatched$watchedToJson(
        Query$userWatched$watched instance) =>
    <String, dynamic>{
      'pageInfo': instance.pageInfo.toJson(),
      'edges': instance.edges.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$userWatched$watched$pageInfo _$Query$userWatched$watched$pageInfoFromJson(
        Map<String, dynamic> json) =>
    Query$userWatched$watched$pageInfo(
      hasNextPage: json['hasNextPage'] as bool,
      endCursor: json['endCursor'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$userWatched$watched$pageInfoToJson(
        Query$userWatched$watched$pageInfo instance) =>
    <String, dynamic>{
      'hasNextPage': instance.hasNextPage,
      'endCursor': instance.endCursor,
      '__typename': instance.$__typename,
    };

Query$userWatched$watched$edges _$Query$userWatched$watched$edgesFromJson(
        Map<String, dynamic> json) =>
    Query$userWatched$watched$edges(
      node: Query$userWatched$watched$edges$node.fromJson(
          json['node'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$userWatched$watched$edgesToJson(
        Query$userWatched$watched$edges instance) =>
    <String, dynamic>{
      'node': instance.node.toJson(),
      '__typename': instance.$__typename,
    };

Query$userWatched$watched$edges$node
    _$Query$userWatched$watched$edges$nodeFromJson(Map<String, dynamic> json) =>
        Query$userWatched$watched$edges$node(
          id: json['id'] as String,
          watched:
              (json['watched'] as List<dynamic>).map((e) => e as int).toList(),
          showId: json['showId'] as int,
          userId: json['userId'] as String,
          $__typename: json['__typename'] as String,
          $show: Query$userWatched$watched$edges$node$show.fromJson(
              json['show'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Query$userWatched$watched$edges$nodeToJson(
        Query$userWatched$watched$edges$node instance) =>
    <String, dynamic>{
      'id': instance.id,
      'watched': instance.watched,
      'showId': instance.showId,
      'userId': instance.userId,
      '__typename': instance.$__typename,
      'show': instance.$show.toJson(),
    };

Query$userWatched$watched$edges$node$show
    _$Query$userWatched$watched$edges$node$showFromJson(
            Map<String, dynamic> json) =>
        Query$userWatched$watched$edges$node$show(
          id: json['id'] as int,
          name: json['name'] as String,
          overview: json['overview'] as String,
          image: json['image'] as String?,
          thumbnail: json['thumbnail'] as String?,
          year: json['year'] as String?,
          status: Query$userWatched$watched$edges$node$show$status.fromJson(
              json['status'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$userWatched$watched$edges$node$showToJson(
        Query$userWatched$watched$edges$node$show instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'image': instance.image,
      'thumbnail': instance.thumbnail,
      'year': instance.year,
      'status': instance.status.toJson(),
      '__typename': instance.$__typename,
    };

Query$userWatched$watched$edges$node$show$status
    _$Query$userWatched$watched$edges$node$show$statusFromJson(
            Map<String, dynamic> json) =>
        Query$userWatched$watched$edges$node$show$status(
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$userWatched$watched$edges$node$show$statusToJson(
        Query$userWatched$watched$edges$node$show$status instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Variables$Query$users _$Variables$Query$usersFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$users(
      after: json['after'] as String?,
    );

Map<String, dynamic> _$Variables$Query$usersToJson(
        Variables$Query$users instance) =>
    <String, dynamic>{
      'after': instance.after,
    };

Query$users _$Query$usersFromJson(Map<String, dynamic> json) => Query$users(
      users: Query$users$users.fromJson(json['users'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$usersToJson(Query$users instance) =>
    <String, dynamic>{
      'users': instance.users.toJson(),
      '__typename': instance.$__typename,
    };

Query$users$users _$Query$users$usersFromJson(Map<String, dynamic> json) =>
    Query$users$users(
      totalCount: json['totalCount'] as int,
      pageInfo: Query$users$users$pageInfo.fromJson(
          json['pageInfo'] as Map<String, dynamic>),
      edges: (json['edges'] as List<dynamic>)
          .map((e) =>
              Query$users$users$edges.fromJson(e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$users$usersToJson(Query$users$users instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageInfo': instance.pageInfo.toJson(),
      'edges': instance.edges.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$users$users$pageInfo _$Query$users$users$pageInfoFromJson(
        Map<String, dynamic> json) =>
    Query$users$users$pageInfo(
      hasNextPage: json['hasNextPage'] as bool,
      endCursor: json['endCursor'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$users$users$pageInfoToJson(
        Query$users$users$pageInfo instance) =>
    <String, dynamic>{
      'hasNextPage': instance.hasNextPage,
      'endCursor': instance.endCursor,
      '__typename': instance.$__typename,
    };

Query$users$users$edges _$Query$users$users$edgesFromJson(
        Map<String, dynamic> json) =>
    Query$users$users$edges(
      node: Query$users$users$edges$node.fromJson(
          json['node'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$users$users$edgesToJson(
        Query$users$users$edges instance) =>
    <String, dynamic>{
      'node': instance.node.toJson(),
      '__typename': instance.$__typename,
    };

Query$users$users$edges$node _$Query$users$users$edges$nodeFromJson(
        Map<String, dynamic> json) =>
    Query$users$users$edges$node(
      id: json['id'] as String,
      name: json['name'] as String,
      joinedAt: json['joinedAt'] as int,
      email: json['email'] as String,
      seeded: json['seeded'] as bool?,
      image: json['image'] as String?,
      settings: Query$users$users$edges$node$settings.fromJson(
          json['settings'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$users$users$edges$nodeToJson(
        Query$users$users$edges$node instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'joinedAt': instance.joinedAt,
      'email': instance.email,
      'seeded': instance.seeded,
      'image': instance.image,
      'settings': instance.settings.toJson(),
      '__typename': instance.$__typename,
    };

Query$users$users$edges$node$settings
    _$Query$users$users$edges$node$settingsFromJson(
            Map<String, dynamic> json) =>
        Query$users$users$edges$node$settings(
          visibility: Query$users$users$edges$node$settings$visibility.fromJson(
              json['visibility'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$users$users$edges$node$settingsToJson(
        Query$users$users$edges$node$settings instance) =>
    <String, dynamic>{
      'visibility': instance.visibility.toJson(),
      '__typename': instance.$__typename,
    };

Query$users$users$edges$node$settings$visibility
    _$Query$users$users$edges$node$settings$visibilityFromJson(
            Map<String, dynamic> json) =>
        Query$users$users$edges$node$settings$visibility(
          profile: json['profile'] as bool,
          progress: json['progress'] as bool,
          favourites: json['favourites'] as bool,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$users$users$edges$node$settings$visibilityToJson(
        Query$users$users$edges$node$settings$visibility instance) =>
    <String, dynamic>{
      'profile': instance.profile,
      'progress': instance.progress,
      'favourites': instance.favourites,
      '__typename': instance.$__typename,
    };

Query$self _$Query$selfFromJson(Map<String, dynamic> json) => Query$self(
      user: Query$self$user.fromJson(json['user'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$selfToJson(Query$self instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      '__typename': instance.$__typename,
    };

Query$self$user _$Query$self$userFromJson(Map<String, dynamic> json) =>
    Query$self$user(
      id: json['id'] as String,
      name: json['name'] as String,
      joinedAt: json['joinedAt'] as int,
      email: json['email'] as String,
      seeded: json['seeded'] as bool?,
      image: json['image'] as String?,
      settings: Query$self$user$settings.fromJson(
          json['settings'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
      accounts: (json['accounts'] as List<dynamic>)
          .map((e) =>
              Query$self$user$accounts.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Query$self$userToJson(Query$self$user instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'joinedAt': instance.joinedAt,
      'email': instance.email,
      'seeded': instance.seeded,
      'image': instance.image,
      'settings': instance.settings.toJson(),
      '__typename': instance.$__typename,
      'accounts': instance.accounts.map((e) => e.toJson()).toList(),
    };

Query$self$user$settings _$Query$self$user$settingsFromJson(
        Map<String, dynamic> json) =>
    Query$self$user$settings(
      visibility: Query$self$user$settings$visibility.fromJson(
          json['visibility'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$self$user$settingsToJson(
        Query$self$user$settings instance) =>
    <String, dynamic>{
      'visibility': instance.visibility.toJson(),
      '__typename': instance.$__typename,
    };

Query$self$user$settings$visibility
    _$Query$self$user$settings$visibilityFromJson(Map<String, dynamic> json) =>
        Query$self$user$settings$visibility(
          profile: json['profile'] as bool,
          progress: json['progress'] as bool,
          favourites: json['favourites'] as bool,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$self$user$settings$visibilityToJson(
        Query$self$user$settings$visibility instance) =>
    <String, dynamic>{
      'profile': instance.profile,
      'progress': instance.progress,
      'favourites': instance.favourites,
      '__typename': instance.$__typename,
    };

Query$self$user$accounts _$Query$self$user$accountsFromJson(
        Map<String, dynamic> json) =>
    Query$self$user$accounts(
      id: json['id'] as String,
      provider: json['provider'] as String,
      name: json['name'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$self$user$accountsToJson(
        Query$self$user$accounts instance) =>
    <String, dynamic>{
      'id': instance.id,
      'provider': instance.provider,
      'name': instance.name,
      '__typename': instance.$__typename,
    };
