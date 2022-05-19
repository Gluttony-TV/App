// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourites.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variables$Query$isFavourite _$Variables$Query$isFavouriteFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$isFavourite(
      $show: json['show'] as int,
    );

Map<String, dynamic> _$Variables$Query$isFavouriteToJson(
        Variables$Query$isFavourite instance) =>
    <String, dynamic>{
      'show': instance.$show,
    };

Query$isFavourite _$Query$isFavouriteFromJson(Map<String, dynamic> json) =>
    Query$isFavourite(
      isFavourite: json['isFavourite'] as bool,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$isFavouriteToJson(Query$isFavourite instance) =>
    <String, dynamic>{
      'isFavourite': instance.isFavourite,
      '__typename': instance.$__typename,
    };

Variables$Mutation$addFavourite _$Variables$Mutation$addFavouriteFromJson(
        Map<String, dynamic> json) =>
    Variables$Mutation$addFavourite(
      shows: (json['shows'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$Variables$Mutation$addFavouriteToJson(
        Variables$Mutation$addFavourite instance) =>
    <String, dynamic>{
      'shows': instance.shows,
    };

Mutation$addFavourite _$Mutation$addFavouriteFromJson(
        Map<String, dynamic> json) =>
    Mutation$addFavourite(
      list: Mutation$addFavourite$list.fromJson(
          json['list'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$addFavouriteToJson(
        Mutation$addFavourite instance) =>
    <String, dynamic>{
      'list': instance.list.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$addFavourite$list _$Mutation$addFavourite$listFromJson(
        Map<String, dynamic> json) =>
    Mutation$addFavourite$list(
      id: json['id'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$addFavourite$listToJson(
        Mutation$addFavourite$list instance) =>
    <String, dynamic>{
      'id': instance.id,
      '__typename': instance.$__typename,
    };

Variables$Mutation$removeFavourite _$Variables$Mutation$removeFavouriteFromJson(
        Map<String, dynamic> json) =>
    Variables$Mutation$removeFavourite(
      shows: (json['shows'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$Variables$Mutation$removeFavouriteToJson(
        Variables$Mutation$removeFavourite instance) =>
    <String, dynamic>{
      'shows': instance.shows,
    };

Mutation$removeFavourite _$Mutation$removeFavouriteFromJson(
        Map<String, dynamic> json) =>
    Mutation$removeFavourite(
      list: Mutation$removeFavourite$list.fromJson(
          json['list'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$removeFavouriteToJson(
        Mutation$removeFavourite instance) =>
    <String, dynamic>{
      'list': instance.list.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$removeFavourite$list _$Mutation$removeFavourite$listFromJson(
        Map<String, dynamic> json) =>
    Mutation$removeFavourite$list(
      id: json['id'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$removeFavourite$listToJson(
        Mutation$removeFavourite$list instance) =>
    <String, dynamic>{
      'id': instance.id,
      '__typename': instance.$__typename,
    };
