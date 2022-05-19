// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fragments.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fragment$Forwards _$Fragment$ForwardsFromJson(Map<String, dynamic> json) =>
    Fragment$Forwards(
      hasNextPage: json['hasNextPage'] as bool,
      endCursor: json['endCursor'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$ForwardsToJson(Fragment$Forwards instance) =>
    <String, dynamic>{
      'hasNextPage': instance.hasNextPage,
      'endCursor': instance.endCursor,
      '__typename': instance.$__typename,
    };

Fragment$Backwards _$Fragment$BackwardsFromJson(Map<String, dynamic> json) =>
    Fragment$Backwards(
      hasPreviousPage: json['hasPreviousPage'] as bool,
      startCursor: json['startCursor'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$BackwardsToJson(Fragment$Backwards instance) =>
    <String, dynamic>{
      'hasPreviousPage': instance.hasPreviousPage,
      'startCursor': instance.startCursor,
      '__typename': instance.$__typename,
    };
