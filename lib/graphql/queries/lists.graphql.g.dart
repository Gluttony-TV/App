// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lists.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fragment$baseList _$Fragment$baseListFromJson(Map<String, dynamic> json) =>
    Fragment$baseList(
      id: json['id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
      userId: json['userId'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$baseListToJson(Fragment$baseList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'userId': instance.userId,
      '__typename': instance.$__typename,
    };

Query$lists _$Query$listsFromJson(Map<String, dynamic> json) => Query$lists(
      lists: (json['lists'] as List<dynamic>)
          .map((e) => Query$lists$lists.fromJson(e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$listsToJson(Query$lists instance) =>
    <String, dynamic>{
      'lists': instance.lists.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$lists$lists _$Query$lists$listsFromJson(Map<String, dynamic> json) =>
    Query$lists$lists(
      id: json['id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
      userId: json['userId'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$lists$listsToJson(Query$lists$lists instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'userId': instance.userId,
      '__typename': instance.$__typename,
    };
