// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watched.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fragment$baseProgress _$Fragment$baseProgressFromJson(
        Map<String, dynamic> json) =>
    Fragment$baseProgress(
      id: json['id'] as String,
      watched: (json['watched'] as List<dynamic>).map((e) => e as int).toList(),
      showId: json['showId'] as int,
      userId: json['userId'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$baseProgressToJson(
        Fragment$baseProgress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'watched': instance.watched,
      'showId': instance.showId,
      'userId': instance.userId,
      '__typename': instance.$__typename,
    };

Fragment$progressWithShow _$Fragment$progressWithShowFromJson(
        Map<String, dynamic> json) =>
    Fragment$progressWithShow(
      id: json['id'] as String,
      watched: (json['watched'] as List<dynamic>).map((e) => e as int).toList(),
      showId: json['showId'] as int,
      userId: json['userId'] as String,
      $__typename: json['__typename'] as String,
      $show: Fragment$progressWithShow$show.fromJson(
          json['show'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Fragment$progressWithShowToJson(
        Fragment$progressWithShow instance) =>
    <String, dynamic>{
      'id': instance.id,
      'watched': instance.watched,
      'showId': instance.showId,
      'userId': instance.userId,
      '__typename': instance.$__typename,
      'show': instance.$show.toJson(),
    };

Fragment$progressWithShow$show _$Fragment$progressWithShow$showFromJson(
        Map<String, dynamic> json) =>
    Fragment$progressWithShow$show(
      id: json['id'] as int,
      name: json['name'] as String,
      overview: json['overview'] as String,
      image: json['image'] as String?,
      thumbnail: json['thumbnail'] as String?,
      year: json['year'] as String?,
      status: Fragment$progressWithShow$show$status.fromJson(
          json['status'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$progressWithShow$showToJson(
        Fragment$progressWithShow$show instance) =>
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

Fragment$progressWithShow$show$status
    _$Fragment$progressWithShow$show$statusFromJson(
            Map<String, dynamic> json) =>
        Fragment$progressWithShow$show$status(
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Fragment$progressWithShow$show$statusToJson(
        Fragment$progressWithShow$show$status instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Variables$Query$watched _$Variables$Query$watchedFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$watched(
      after: json['after'] as String?,
      amount: json['amount'] as int?,
    );

Map<String, dynamic> _$Variables$Query$watchedToJson(
        Variables$Query$watched instance) =>
    <String, dynamic>{
      'after': instance.after,
      'amount': instance.amount,
    };

Query$watched _$Query$watchedFromJson(Map<String, dynamic> json) =>
    Query$watched(
      progresses: Query$watched$progresses.fromJson(
          json['progresses'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$watchedToJson(Query$watched instance) =>
    <String, dynamic>{
      'progresses': instance.progresses.toJson(),
      '__typename': instance.$__typename,
    };

Query$watched$progresses _$Query$watched$progressesFromJson(
        Map<String, dynamic> json) =>
    Query$watched$progresses(
      pageInfo: Query$watched$progresses$pageInfo.fromJson(
          json['pageInfo'] as Map<String, dynamic>),
      edges: (json['edges'] as List<dynamic>)
          .map((e) => Query$watched$progresses$edges.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$watched$progressesToJson(
        Query$watched$progresses instance) =>
    <String, dynamic>{
      'pageInfo': instance.pageInfo.toJson(),
      'edges': instance.edges.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$watched$progresses$pageInfo _$Query$watched$progresses$pageInfoFromJson(
        Map<String, dynamic> json) =>
    Query$watched$progresses$pageInfo(
      hasNextPage: json['hasNextPage'] as bool,
      endCursor: json['endCursor'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$watched$progresses$pageInfoToJson(
        Query$watched$progresses$pageInfo instance) =>
    <String, dynamic>{
      'hasNextPage': instance.hasNextPage,
      'endCursor': instance.endCursor,
      '__typename': instance.$__typename,
    };

Query$watched$progresses$edges _$Query$watched$progresses$edgesFromJson(
        Map<String, dynamic> json) =>
    Query$watched$progresses$edges(
      cursor: json['cursor'] as String,
      node: Query$watched$progresses$edges$node.fromJson(
          json['node'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$watched$progresses$edgesToJson(
        Query$watched$progresses$edges instance) =>
    <String, dynamic>{
      'cursor': instance.cursor,
      'node': instance.node.toJson(),
      '__typename': instance.$__typename,
    };

Query$watched$progresses$edges$node
    _$Query$watched$progresses$edges$nodeFromJson(Map<String, dynamic> json) =>
        Query$watched$progresses$edges$node(
          id: json['id'] as String,
          watched:
              (json['watched'] as List<dynamic>).map((e) => e as int).toList(),
          showId: json['showId'] as int,
          userId: json['userId'] as String,
          $__typename: json['__typename'] as String,
          $show: Query$watched$progresses$edges$node$show.fromJson(
              json['show'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Query$watched$progresses$edges$nodeToJson(
        Query$watched$progresses$edges$node instance) =>
    <String, dynamic>{
      'id': instance.id,
      'watched': instance.watched,
      'showId': instance.showId,
      'userId': instance.userId,
      '__typename': instance.$__typename,
      'show': instance.$show.toJson(),
    };

Query$watched$progresses$edges$node$show
    _$Query$watched$progresses$edges$node$showFromJson(
            Map<String, dynamic> json) =>
        Query$watched$progresses$edges$node$show(
          id: json['id'] as int,
          name: json['name'] as String,
          overview: json['overview'] as String,
          image: json['image'] as String?,
          thumbnail: json['thumbnail'] as String?,
          year: json['year'] as String?,
          status: Query$watched$progresses$edges$node$show$status.fromJson(
              json['status'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$watched$progresses$edges$node$showToJson(
        Query$watched$progresses$edges$node$show instance) =>
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

Query$watched$progresses$edges$node$show$status
    _$Query$watched$progresses$edges$node$show$statusFromJson(
            Map<String, dynamic> json) =>
        Query$watched$progresses$edges$node$show$status(
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$watched$progresses$edges$node$show$statusToJson(
        Query$watched$progresses$edges$node$show$status instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Query$watchedEpisodes _$Query$watchedEpisodesFromJson(
        Map<String, dynamic> json) =>
    Query$watchedEpisodes(
      progresses: Query$watchedEpisodes$progresses.fromJson(
          json['progresses'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$watchedEpisodesToJson(
        Query$watchedEpisodes instance) =>
    <String, dynamic>{
      'progresses': instance.progresses.toJson(),
      '__typename': instance.$__typename,
    };

Query$watchedEpisodes$progresses _$Query$watchedEpisodes$progressesFromJson(
        Map<String, dynamic> json) =>
    Query$watchedEpisodes$progresses(
      edges: (json['edges'] as List<dynamic>)
          .map((e) => Query$watchedEpisodes$progresses$edges.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$watchedEpisodes$progressesToJson(
        Query$watchedEpisodes$progresses instance) =>
    <String, dynamic>{
      'edges': instance.edges.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$watchedEpisodes$progresses$edges
    _$Query$watchedEpisodes$progresses$edgesFromJson(
            Map<String, dynamic> json) =>
        Query$watchedEpisodes$progresses$edges(
          node: Query$watchedEpisodes$progresses$edges$node.fromJson(
              json['node'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$watchedEpisodes$progresses$edgesToJson(
        Query$watchedEpisodes$progresses$edges instance) =>
    <String, dynamic>{
      'node': instance.node.toJson(),
      '__typename': instance.$__typename,
    };

Query$watchedEpisodes$progresses$edges$node
    _$Query$watchedEpisodes$progresses$edges$nodeFromJson(
            Map<String, dynamic> json) =>
        Query$watchedEpisodes$progresses$edges$node(
          id: json['id'] as String,
          watched:
              (json['watched'] as List<dynamic>).map((e) => e as int).toList(),
          showId: json['showId'] as int,
          userId: json['userId'] as String,
          $__typename: json['__typename'] as String,
          $show: Query$watchedEpisodes$progresses$edges$node$show.fromJson(
              json['show'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Query$watchedEpisodes$progresses$edges$nodeToJson(
        Query$watchedEpisodes$progresses$edges$node instance) =>
    <String, dynamic>{
      'id': instance.id,
      'watched': instance.watched,
      'showId': instance.showId,
      'userId': instance.userId,
      '__typename': instance.$__typename,
      'show': instance.$show.toJson(),
    };

Query$watchedEpisodes$progresses$edges$node$show
    _$Query$watchedEpisodes$progresses$edges$node$showFromJson(
            Map<String, dynamic> json) =>
        Query$watchedEpisodes$progresses$edges$node$show(
          id: json['id'] as int,
          name: json['name'] as String,
          overview: json['overview'] as String,
          image: json['image'] as String?,
          thumbnail: json['thumbnail'] as String?,
          year: json['year'] as String?,
          status:
              Query$watchedEpisodes$progresses$edges$node$show$status.fromJson(
                  json['status'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
          episodes: (json['episodes'] as List<dynamic>)
              .map((e) =>
                  Query$watchedEpisodes$progresses$edges$node$show$episodes
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$Query$watchedEpisodes$progresses$edges$node$showToJson(
        Query$watchedEpisodes$progresses$edges$node$show instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'image': instance.image,
      'thumbnail': instance.thumbnail,
      'year': instance.year,
      'status': instance.status.toJson(),
      '__typename': instance.$__typename,
      'episodes': instance.episodes.map((e) => e.toJson()).toList(),
    };

Query$watchedEpisodes$progresses$edges$node$show$status
    _$Query$watchedEpisodes$progresses$edges$node$show$statusFromJson(
            Map<String, dynamic> json) =>
        Query$watchedEpisodes$progresses$edges$node$show$status(
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$watchedEpisodes$progresses$edges$node$show$statusToJson(
            Query$watchedEpisodes$progresses$edges$node$show$status instance) =>
        <String, dynamic>{
          'name': instance.name,
          '__typename': instance.$__typename,
        };

Query$watchedEpisodes$progresses$edges$node$show$episodes
    _$Query$watchedEpisodes$progresses$edges$node$show$episodesFromJson(
            Map<String, dynamic> json) =>
        Query$watchedEpisodes$progresses$edges$node$show$episodes(
          id: json['id'] as int,
          name: json['name'] as String,
          aired: json['aired'] as String?,
          runtime: json['runtime'] as int?,
          isMovie: json['isMovie'] as int,
          number: json['number'] as int,
          seasonNumber: json['seasonNumber'] as int,
          special: json['special'] as bool,
          due: json['due'] as bool,
          $__typename: json['__typename'] as String,
        );

Map<String,
    dynamic> _$Query$watchedEpisodes$progresses$edges$node$show$episodesToJson(
        Query$watchedEpisodes$progresses$edges$node$show$episodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'aired': instance.aired,
      'runtime': instance.runtime,
      'isMovie': instance.isMovie,
      'number': instance.number,
      'seasonNumber': instance.seasonNumber,
      'special': instance.special,
      'due': instance.due,
      '__typename': instance.$__typename,
    };

Variables$Query$progress _$Variables$Query$progressFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$progress(
      $show: json['show'] as int,
    );

Map<String, dynamic> _$Variables$Query$progressToJson(
        Variables$Query$progress instance) =>
    <String, dynamic>{
      'show': instance.$show,
    };

Query$progress _$Query$progressFromJson(Map<String, dynamic> json) =>
    Query$progress(
      progress: json['progress'] == null
          ? null
          : Query$progress$progress.fromJson(
              json['progress'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$progressToJson(Query$progress instance) =>
    <String, dynamic>{
      'progress': instance.progress?.toJson(),
      '__typename': instance.$__typename,
    };

Query$progress$progress _$Query$progress$progressFromJson(
        Map<String, dynamic> json) =>
    Query$progress$progress(
      id: json['id'] as String,
      watched: (json['watched'] as List<dynamic>).map((e) => e as int).toList(),
      showId: json['showId'] as int,
      userId: json['userId'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$progress$progressToJson(
        Query$progress$progress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'watched': instance.watched,
      'showId': instance.showId,
      'userId': instance.userId,
      '__typename': instance.$__typename,
    };

Variables$Mutation$setWatched _$Variables$Mutation$setWatchedFromJson(
        Map<String, dynamic> json) =>
    Variables$Mutation$setWatched(
      $show: json['show'] as int,
      episodes:
          (json['episodes'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$Variables$Mutation$setWatchedToJson(
        Variables$Mutation$setWatched instance) =>
    <String, dynamic>{
      'show': instance.$show,
      'episodes': instance.episodes,
    };

Mutation$setWatched _$Mutation$setWatchedFromJson(Map<String, dynamic> json) =>
    Mutation$setWatched(
      setWatched: Mutation$setWatched$setWatched.fromJson(
          json['setWatched'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$setWatchedToJson(
        Mutation$setWatched instance) =>
    <String, dynamic>{
      'setWatched': instance.setWatched.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$setWatched$setWatched _$Mutation$setWatched$setWatchedFromJson(
        Map<String, dynamic> json) =>
    Mutation$setWatched$setWatched(
      id: json['id'] as String,
      watched: (json['watched'] as List<dynamic>).map((e) => e as int).toList(),
      showId: json['showId'] as int,
      userId: json['userId'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$setWatched$setWatchedToJson(
        Mutation$setWatched$setWatched instance) =>
    <String, dynamic>{
      'id': instance.id,
      'watched': instance.watched,
      'showId': instance.showId,
      'userId': instance.userId,
      '__typename': instance.$__typename,
    };
