// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Input$PaginationInput _$Input$PaginationInputFromJson(
        Map<String, dynamic> json) =>
    Input$PaginationInput(
      after: json['after'] as String?,
      first: json['first'] as int?,
      before: json['before'] as String?,
      last: json['last'] as int?,
    );

Map<String, dynamic> _$Input$PaginationInputToJson(
        Input$PaginationInput instance) =>
    <String, dynamic>{
      'after': instance.after,
      'first': instance.first,
      'before': instance.before,
      'last': instance.last,
    };
