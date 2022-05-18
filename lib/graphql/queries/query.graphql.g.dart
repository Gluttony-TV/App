// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Query$self _$Query$selfFromJson(Map<String, dynamic> json) => Query$self(
      self: Query$self$self.fromJson(json['self'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$selfToJson(Query$self instance) =>
    <String, dynamic>{
      'self': instance.self.toJson(),
      '__typename': instance.$__typename,
    };

Query$self$self _$Query$self$selfFromJson(Map<String, dynamic> json) =>
    Query$self$self(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      joinedAt: json['joinedAt'] as int,
      image: json['image'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$self$selfToJson(Query$self$self instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'joinedAt': instance.joinedAt,
      'image': instance.image,
      '__typename': instance.$__typename,
    };
