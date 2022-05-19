// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fragment$baseShow _$Fragment$baseShowFromJson(Map<String, dynamic> json) =>
    Fragment$baseShow(
      id: json['id'] as int,
      name: json['name'] as String,
      overview: json['overview'] as String,
      image: json['image'] as String?,
      thumbnail: json['thumbnail'] as String?,
      year: json['year'] as String?,
      status: Fragment$baseShow$status.fromJson(
          json['status'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$baseShowToJson(Fragment$baseShow instance) =>
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

Fragment$baseShow$status _$Fragment$baseShow$statusFromJson(
        Map<String, dynamic> json) =>
    Fragment$baseShow$status(
      name: json['name'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$baseShow$statusToJson(
        Fragment$baseShow$status instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Fragment$baseEpisode _$Fragment$baseEpisodeFromJson(
        Map<String, dynamic> json) =>
    Fragment$baseEpisode(
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

Map<String, dynamic> _$Fragment$baseEpisodeToJson(
        Fragment$baseEpisode instance) =>
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

Fragment$baseSeason _$Fragment$baseSeasonFromJson(Map<String, dynamic> json) =>
    Fragment$baseSeason(
      id: json['id'] as int,
      name: json['name'] as String?,
      number: json['number'] as int,
      type: Fragment$baseSeason$type.fromJson(
          json['type'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$baseSeasonToJson(
        Fragment$baseSeason instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'number': instance.number,
      'type': instance.type.toJson(),
      '__typename': instance.$__typename,
    };

Fragment$baseSeason$type _$Fragment$baseSeason$typeFromJson(
        Map<String, dynamic> json) =>
    Fragment$baseSeason$type(
      type: json['type'] as String,
      name: json['name'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$baseSeason$typeToJson(
        Fragment$baseSeason$type instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Fragment$withEpisodes _$Fragment$withEpisodesFromJson(
        Map<String, dynamic> json) =>
    Fragment$withEpisodes(
      episodes: (json['episodes'] as List<dynamic>)
          .map((e) => Fragment$withEpisodes$episodes.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$withEpisodesToJson(
        Fragment$withEpisodes instance) =>
    <String, dynamic>{
      'episodes': instance.episodes.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Fragment$withEpisodes$episodes _$Fragment$withEpisodes$episodesFromJson(
        Map<String, dynamic> json) =>
    Fragment$withEpisodes$episodes(
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

Map<String, dynamic> _$Fragment$withEpisodes$episodesToJson(
        Fragment$withEpisodes$episodes instance) =>
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

Fragment$withSeasons _$Fragment$withSeasonsFromJson(
        Map<String, dynamic> json) =>
    Fragment$withSeasons(
      id: json['id'] as int,
      name: json['name'] as String,
      overview: json['overview'] as String,
      image: json['image'] as String?,
      thumbnail: json['thumbnail'] as String?,
      year: json['year'] as String?,
      status: Fragment$withSeasons$status.fromJson(
          json['status'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
      seasons: (json['seasons'] as List<dynamic>)
          .map((e) =>
              Fragment$withSeasons$seasons.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Fragment$withSeasonsToJson(
        Fragment$withSeasons instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'image': instance.image,
      'thumbnail': instance.thumbnail,
      'year': instance.year,
      'status': instance.status.toJson(),
      '__typename': instance.$__typename,
      'seasons': instance.seasons.map((e) => e.toJson()).toList(),
    };

Fragment$withSeasons$status _$Fragment$withSeasons$statusFromJson(
        Map<String, dynamic> json) =>
    Fragment$withSeasons$status(
      name: json['name'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$withSeasons$statusToJson(
        Fragment$withSeasons$status instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Fragment$withSeasons$seasons _$Fragment$withSeasons$seasonsFromJson(
        Map<String, dynamic> json) =>
    Fragment$withSeasons$seasons(
      id: json['id'] as int,
      name: json['name'] as String?,
      number: json['number'] as int,
      type: Fragment$withSeasons$seasons$type.fromJson(
          json['type'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
      episodes: (json['episodes'] as List<dynamic>)
          .map((e) => Fragment$withSeasons$seasons$episodes.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Fragment$withSeasons$seasonsToJson(
        Fragment$withSeasons$seasons instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'number': instance.number,
      'type': instance.type.toJson(),
      '__typename': instance.$__typename,
      'episodes': instance.episodes.map((e) => e.toJson()).toList(),
    };

Fragment$withSeasons$seasons$type _$Fragment$withSeasons$seasons$typeFromJson(
        Map<String, dynamic> json) =>
    Fragment$withSeasons$seasons$type(
      type: json['type'] as String,
      name: json['name'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$withSeasons$seasons$typeToJson(
        Fragment$withSeasons$seasons$type instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Fragment$withSeasons$seasons$episodes
    _$Fragment$withSeasons$seasons$episodesFromJson(
            Map<String, dynamic> json) =>
        Fragment$withSeasons$seasons$episodes(
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

Map<String, dynamic> _$Fragment$withSeasons$seasons$episodesToJson(
        Fragment$withSeasons$seasons$episodes instance) =>
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

Variables$Query$show _$Variables$Query$showFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$show(
      id: json['id'] as int,
    );

Map<String, dynamic> _$Variables$Query$showToJson(
        Variables$Query$show instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

Query$show _$Query$showFromJson(Map<String, dynamic> json) => Query$show(
      $show: Query$show$show.fromJson(json['show'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$showToJson(Query$show instance) =>
    <String, dynamic>{
      'show': instance.$show.toJson(),
      '__typename': instance.$__typename,
    };

Query$show$show _$Query$show$showFromJson(Map<String, dynamic> json) =>
    Query$show$show(
      id: json['id'] as int,
      name: json['name'] as String,
      overview: json['overview'] as String,
      image: json['image'] as String?,
      thumbnail: json['thumbnail'] as String?,
      year: json['year'] as String?,
      status: Query$show$show$status.fromJson(
          json['status'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
      seasons: (json['seasons'] as List<dynamic>)
          .map((e) =>
              Query$show$show$seasons.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Query$show$showToJson(Query$show$show instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'image': instance.image,
      'thumbnail': instance.thumbnail,
      'year': instance.year,
      'status': instance.status.toJson(),
      '__typename': instance.$__typename,
      'seasons': instance.seasons.map((e) => e.toJson()).toList(),
    };

Query$show$show$status _$Query$show$show$statusFromJson(
        Map<String, dynamic> json) =>
    Query$show$show$status(
      name: json['name'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$show$show$statusToJson(
        Query$show$show$status instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Query$show$show$seasons _$Query$show$show$seasonsFromJson(
        Map<String, dynamic> json) =>
    Query$show$show$seasons(
      id: json['id'] as int,
      name: json['name'] as String?,
      number: json['number'] as int,
      type: Query$show$show$seasons$type.fromJson(
          json['type'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
      episodes: (json['episodes'] as List<dynamic>)
          .map((e) => Query$show$show$seasons$episodes.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Query$show$show$seasonsToJson(
        Query$show$show$seasons instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'number': instance.number,
      'type': instance.type.toJson(),
      '__typename': instance.$__typename,
      'episodes': instance.episodes.map((e) => e.toJson()).toList(),
    };

Query$show$show$seasons$type _$Query$show$show$seasons$typeFromJson(
        Map<String, dynamic> json) =>
    Query$show$show$seasons$type(
      type: json['type'] as String,
      name: json['name'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$show$show$seasons$typeToJson(
        Query$show$show$seasons$type instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Query$show$show$seasons$episodes _$Query$show$show$seasons$episodesFromJson(
        Map<String, dynamic> json) =>
    Query$show$show$seasons$episodes(
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

Map<String, dynamic> _$Query$show$show$seasons$episodesToJson(
        Query$show$show$seasons$episodes instance) =>
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

Variables$Query$search _$Variables$Query$searchFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$search(
      by: json['by'] as String,
    );

Map<String, dynamic> _$Variables$Query$searchToJson(
        Variables$Query$search instance) =>
    <String, dynamic>{
      'by': instance.by,
    };

Query$search _$Query$searchFromJson(Map<String, dynamic> json) => Query$search(
      results: (json['results'] as List<dynamic>)
          .map((e) => Query$search$results.fromJson(e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$searchToJson(Query$search instance) =>
    <String, dynamic>{
      'results': instance.results.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$search$results _$Query$search$resultsFromJson(
        Map<String, dynamic> json) =>
    Query$search$results(
      id: json['id'] as int,
      name: json['name'] as String,
      overview: json['overview'] as String,
      image: json['image'] as String?,
      thumbnail: json['thumbnail'] as String?,
      year: json['year'] as String?,
      status: Query$search$results$status.fromJson(
          json['status'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$search$resultsToJson(
        Query$search$results instance) =>
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

Query$search$results$status _$Query$search$results$statusFromJson(
        Map<String, dynamic> json) =>
    Query$search$results$status(
      name: json['name'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$search$results$statusToJson(
        Query$search$results$status instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };
