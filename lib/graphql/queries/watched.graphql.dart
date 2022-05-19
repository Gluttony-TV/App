import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
import 'show.graphql.dart';
part 'watched.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$baseProgress {
  Fragment$baseProgress(
      {required this.id,
      required this.watched,
      required this.showId,
      required this.userId,
      required this.$__typename});

  @override
  factory Fragment$baseProgress.fromJson(Map<String, dynamic> json) =>
      _$Fragment$baseProgressFromJson(json);

  final String id;

  final List<int> watched;

  final int showId;

  final String userId;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$baseProgressToJson(this);
  int get hashCode {
    final l$id = id;
    final l$watched = watched;
    final l$showId = showId;
    final l$userId = userId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$watched.map((v) => v)),
      l$showId,
      l$userId,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$baseProgress) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$watched = watched;
    final lOther$watched = other.watched;
    if (l$watched.length != lOther$watched.length) return false;
    for (int i = 0; i < l$watched.length; i++) {
      final l$watched$entry = l$watched[i];
      final lOther$watched$entry = lOther$watched[i];
      if (l$watched$entry != lOther$watched$entry) return false;
    }

    final l$showId = showId;
    final lOther$showId = other.showId;
    if (l$showId != lOther$showId) return false;
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$baseProgress on Fragment$baseProgress {
  Fragment$baseProgress copyWith(
          {String? id,
          List<int>? watched,
          int? showId,
          String? userId,
          String? $__typename}) =>
      Fragment$baseProgress(
          id: id == null ? this.id : id,
          watched: watched == null ? this.watched : watched,
          showId: showId == null ? this.showId : showId,
          userId: userId == null ? this.userId : userId,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const fragmentDefinitionbaseProgress = FragmentDefinitionNode(
    name: NameNode(value: 'baseProgress'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Progress'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'id'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'watched'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'showId'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'userId'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const queryDocumentbaseProgress = DocumentNode(definitions: [
  fragmentDefinitionbaseProgress,
]);

extension ClientExtension$Fragment$baseProgress on graphql.GraphQLClient {
  void writeFragment$baseProgress(
          {required Fragment$baseProgress data,
          required Map<String, dynamic> idFields,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'baseProgress',
                  document: queryDocumentbaseProgress)),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$baseProgress? readFragment$baseProgress(
      {required Map<String, dynamic> idFields, bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'baseProgress',
                document: queryDocumentbaseProgress)),
        optimistic: optimistic);
    return result == null ? null : Fragment$baseProgress.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Fragment$progressWithShow implements Fragment$baseProgress {
  Fragment$progressWithShow(
      {required this.id,
      required this.watched,
      required this.showId,
      required this.userId,
      required this.$__typename,
      required this.$show});

  @override
  factory Fragment$progressWithShow.fromJson(Map<String, dynamic> json) =>
      _$Fragment$progressWithShowFromJson(json);

  final String id;

  final List<int> watched;

  final int showId;

  final String userId;

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(name: 'show')
  final Fragment$progressWithShow$show $show;

  Map<String, dynamic> toJson() => _$Fragment$progressWithShowToJson(this);
  int get hashCode {
    final l$id = id;
    final l$watched = watched;
    final l$showId = showId;
    final l$userId = userId;
    final l$$__typename = $__typename;
    final l$$show = $show;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$watched.map((v) => v)),
      l$showId,
      l$userId,
      l$$__typename,
      l$$show
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$progressWithShow) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$watched = watched;
    final lOther$watched = other.watched;
    if (l$watched.length != lOther$watched.length) return false;
    for (int i = 0; i < l$watched.length; i++) {
      final l$watched$entry = l$watched[i];
      final lOther$watched$entry = lOther$watched[i];
      if (l$watched$entry != lOther$watched$entry) return false;
    }

    final l$showId = showId;
    final lOther$showId = other.showId;
    if (l$showId != lOther$showId) return false;
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$$show = $show;
    final lOther$$show = other.$show;
    if (l$$show != lOther$$show) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$progressWithShow
    on Fragment$progressWithShow {
  Fragment$progressWithShow copyWith(
          {String? id,
          List<int>? watched,
          int? showId,
          String? userId,
          String? $__typename,
          Fragment$progressWithShow$show? $show}) =>
      Fragment$progressWithShow(
          id: id == null ? this.id : id,
          watched: watched == null ? this.watched : watched,
          showId: showId == null ? this.showId : showId,
          userId: userId == null ? this.userId : userId,
          $__typename: $__typename == null ? this.$__typename : $__typename,
          $show: $show == null ? this.$show : $show);
}

const fragmentDefinitionprogressWithShow = FragmentDefinitionNode(
    name: NameNode(value: 'progressWithShow'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Progress'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FragmentSpreadNode(name: NameNode(value: 'baseProgress'), directives: []),
      FieldNode(
          name: NameNode(value: 'show'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(
                name: NameNode(value: 'baseShow'), directives: []),
            FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null)
          ])),
      FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const queryDocumentprogressWithShow = DocumentNode(definitions: [
  fragmentDefinitionprogressWithShow,
  fragmentDefinitionbaseProgress,
  fragmentDefinitionbaseShow,
]);

extension ClientExtension$Fragment$progressWithShow on graphql.GraphQLClient {
  void writeFragment$progressWithShow(
          {required Fragment$progressWithShow data,
          required Map<String, dynamic> idFields,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'progressWithShow',
                  document: queryDocumentprogressWithShow)),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$progressWithShow? readFragment$progressWithShow(
      {required Map<String, dynamic> idFields, bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'progressWithShow',
                document: queryDocumentprogressWithShow)),
        optimistic: optimistic);
    return result == null ? null : Fragment$progressWithShow.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Fragment$progressWithShow$show implements Fragment$baseShow {
  Fragment$progressWithShow$show(
      {required this.id,
      required this.name,
      required this.overview,
      this.image,
      this.thumbnail,
      this.year,
      required this.status,
      required this.$__typename});

  @override
  factory Fragment$progressWithShow$show.fromJson(Map<String, dynamic> json) =>
      _$Fragment$progressWithShow$showFromJson(json);

  final int id;

  final String name;

  final String overview;

  final String? image;

  final String? thumbnail;

  final String? year;

  final Fragment$progressWithShow$show$status status;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$progressWithShow$showToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$overview = overview;
    final l$image = image;
    final l$thumbnail = thumbnail;
    final l$year = year;
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$overview,
      l$image,
      l$thumbnail,
      l$year,
      l$status,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$progressWithShow$show) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$overview = overview;
    final lOther$overview = other.overview;
    if (l$overview != lOther$overview) return false;
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) return false;
    final l$thumbnail = thumbnail;
    final lOther$thumbnail = other.thumbnail;
    if (l$thumbnail != lOther$thumbnail) return false;
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) return false;
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$progressWithShow$show
    on Fragment$progressWithShow$show {
  Fragment$progressWithShow$show copyWith(
          {int? id,
          String? name,
          String? overview,
          String? Function()? image,
          String? Function()? thumbnail,
          String? Function()? year,
          Fragment$progressWithShow$show$status? status,
          String? $__typename}) =>
      Fragment$progressWithShow$show(
          id: id == null ? this.id : id,
          name: name == null ? this.name : name,
          overview: overview == null ? this.overview : overview,
          image: image == null ? this.image : image(),
          thumbnail: thumbnail == null ? this.thumbnail : thumbnail(),
          year: year == null ? this.year : year(),
          status: status == null ? this.status : status,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Fragment$progressWithShow$show$status
    implements Fragment$baseShow$status {
  Fragment$progressWithShow$show$status(
      {required this.name, required this.$__typename});

  @override
  factory Fragment$progressWithShow$show$status.fromJson(
          Map<String, dynamic> json) =>
      _$Fragment$progressWithShow$show$statusFromJson(json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Fragment$progressWithShow$show$statusToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$progressWithShow$show$status) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$progressWithShow$show$status
    on Fragment$progressWithShow$show$status {
  Fragment$progressWithShow$show$status copyWith(
          {String? name, String? $__typename}) =>
      Fragment$progressWithShow$show$status(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Variables$Query$watched {
  Variables$Query$watched({this.after, this.amount});

  @override
  factory Variables$Query$watched.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$watchedFromJson(json);

  final String? after;

  final int? amount;

  Map<String, dynamic> toJson() => _$Variables$Query$watchedToJson(this);
  int get hashCode {
    final l$after = after;
    final l$amount = amount;
    return Object.hashAll([l$after, l$amount]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$watched) || runtimeType != other.runtimeType)
      return false;
    final l$after = after;
    final lOther$after = other.after;
    if (l$after != lOther$after) return false;
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class Query$watched {
  Query$watched({required this.progresses, required this.$__typename});

  @override
  factory Query$watched.fromJson(Map<String, dynamic> json) =>
      _$Query$watchedFromJson(json);

  final Query$watched$progresses progresses;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$watchedToJson(this);
  int get hashCode {
    final l$progresses = progresses;
    final l$$__typename = $__typename;
    return Object.hashAll([l$progresses, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$watched) || runtimeType != other.runtimeType)
      return false;
    final l$progresses = progresses;
    final lOther$progresses = other.progresses;
    if (l$progresses != lOther$progresses) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$watched on Query$watched {
  Query$watched copyWith(
          {Query$watched$progresses? progresses, String? $__typename}) =>
      Query$watched(
          progresses: progresses == null ? this.progresses : progresses,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const queryDocumentwatched = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'watched'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'after')),
            type: NamedTypeNode(
                name: NameNode(value: 'Cursor'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'amount')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'getOwnProgresses'),
            alias: NameNode(value: 'progresses'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'first'),
                        value: VariableNode(name: NameNode(value: 'amount'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'after'),
                        value: VariableNode(name: NameNode(value: 'after')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'pageInfo'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'hasNextPage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'endCursor'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'edges'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'cursor'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'node'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                              name: NameNode(value: 'progressWithShow'),
                              directives: []),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  fragmentDefinitionprogressWithShow,
  fragmentDefinitionbaseProgress,
  fragmentDefinitionbaseShow,
]);
Query$watched _parserFn$Query$watched(Map<String, dynamic> data) =>
    Query$watched.fromJson(data);

class Options$Query$watched extends graphql.QueryOptions<Query$watched> {
  Options$Query$watched(
      {String? operationName,
      Variables$Query$watched? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: queryDocumentwatched,
            parserFn: _parserFn$Query$watched);
}

class WatchOptions$Query$watched
    extends graphql.WatchQueryOptions<Query$watched> {
  WatchOptions$Query$watched(
      {String? operationName,
      Variables$Query$watched? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: queryDocumentwatched,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$watched);
}

class FetchMoreOptions$Query$watched extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$watched(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$watched? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: queryDocumentwatched);
}

extension ClientExtension$Query$watched on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$watched>> query$watched(
          [Options$Query$watched? options]) async =>
      await this.query(options ?? Options$Query$watched());
  graphql.ObservableQuery<Query$watched> watchQuery$watched(
          [WatchOptions$Query$watched? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$watched());
  void writeQuery$watched(
          {required Query$watched data,
          Variables$Query$watched? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: queryDocumentwatched),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$watched? readQuery$watched(
      {Variables$Query$watched? variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: queryDocumentwatched),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : Query$watched.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$watched> useQuery$watched(
        [Options$Query$watched? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$watched());
graphql.ObservableQuery<Query$watched> useWatchQuery$watched(
        [WatchOptions$Query$watched? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$watched());

class Query$watched$Widget extends graphql_flutter.Query<Query$watched> {
  Query$watched$Widget(
      {widgets.Key? key,
      Options$Query$watched? options,
      required graphql_flutter.QueryBuilder<Query$watched> builder})
      : super(
            key: key,
            options: options ?? Options$Query$watched(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$watched$progresses {
  Query$watched$progresses(
      {required this.pageInfo, required this.edges, required this.$__typename});

  @override
  factory Query$watched$progresses.fromJson(Map<String, dynamic> json) =>
      _$Query$watched$progressesFromJson(json);

  final Query$watched$progresses$pageInfo pageInfo;

  final List<Query$watched$progresses$edges> edges;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$watched$progressesToJson(this);
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [l$pageInfo, Object.hashAll(l$edges.map((v) => v)), l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$watched$progresses) ||
        runtimeType != other.runtimeType) return false;
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) return false;
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges.length != lOther$edges.length) return false;
    for (int i = 0; i < l$edges.length; i++) {
      final l$edges$entry = l$edges[i];
      final lOther$edges$entry = lOther$edges[i];
      if (l$edges$entry != lOther$edges$entry) return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$watched$progresses
    on Query$watched$progresses {
  Query$watched$progresses copyWith(
          {Query$watched$progresses$pageInfo? pageInfo,
          List<Query$watched$progresses$edges>? edges,
          String? $__typename}) =>
      Query$watched$progresses(
          pageInfo: pageInfo == null ? this.pageInfo : pageInfo,
          edges: edges == null ? this.edges : edges,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$watched$progresses$pageInfo {
  Query$watched$progresses$pageInfo(
      {required this.hasNextPage, this.endCursor, required this.$__typename});

  @override
  factory Query$watched$progresses$pageInfo.fromJson(
          Map<String, dynamic> json) =>
      _$Query$watched$progresses$pageInfoFromJson(json);

  final bool hasNextPage;

  final String? endCursor;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$watched$progresses$pageInfoToJson(this);
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([l$hasNextPage, l$endCursor, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$watched$progresses$pageInfo) ||
        runtimeType != other.runtimeType) return false;
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) return false;
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$watched$progresses$pageInfo
    on Query$watched$progresses$pageInfo {
  Query$watched$progresses$pageInfo copyWith(
          {bool? hasNextPage,
          String? Function()? endCursor,
          String? $__typename}) =>
      Query$watched$progresses$pageInfo(
          hasNextPage: hasNextPage == null ? this.hasNextPage : hasNextPage,
          endCursor: endCursor == null ? this.endCursor : endCursor(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$watched$progresses$edges {
  Query$watched$progresses$edges(
      {required this.cursor, required this.node, required this.$__typename});

  @override
  factory Query$watched$progresses$edges.fromJson(Map<String, dynamic> json) =>
      _$Query$watched$progresses$edgesFromJson(json);

  final String cursor;

  final Query$watched$progresses$edges$node node;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$watched$progresses$edgesToJson(this);
  int get hashCode {
    final l$cursor = cursor;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$cursor, l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$watched$progresses$edges) ||
        runtimeType != other.runtimeType) return false;
    final l$cursor = cursor;
    final lOther$cursor = other.cursor;
    if (l$cursor != lOther$cursor) return false;
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$watched$progresses$edges
    on Query$watched$progresses$edges {
  Query$watched$progresses$edges copyWith(
          {String? cursor,
          Query$watched$progresses$edges$node? node,
          String? $__typename}) =>
      Query$watched$progresses$edges(
          cursor: cursor == null ? this.cursor : cursor,
          node: node == null ? this.node : node,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$watched$progresses$edges$node
    implements Fragment$progressWithShow, Fragment$baseProgress {
  Query$watched$progresses$edges$node(
      {required this.id,
      required this.watched,
      required this.showId,
      required this.userId,
      required this.$__typename,
      required this.$show});

  @override
  factory Query$watched$progresses$edges$node.fromJson(
          Map<String, dynamic> json) =>
      _$Query$watched$progresses$edges$nodeFromJson(json);

  final String id;

  final List<int> watched;

  final int showId;

  final String userId;

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(name: 'show')
  final Query$watched$progresses$edges$node$show $show;

  Map<String, dynamic> toJson() =>
      _$Query$watched$progresses$edges$nodeToJson(this);
  int get hashCode {
    final l$id = id;
    final l$watched = watched;
    final l$showId = showId;
    final l$userId = userId;
    final l$$__typename = $__typename;
    final l$$show = $show;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$watched.map((v) => v)),
      l$showId,
      l$userId,
      l$$__typename,
      l$$show
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$watched$progresses$edges$node) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$watched = watched;
    final lOther$watched = other.watched;
    if (l$watched.length != lOther$watched.length) return false;
    for (int i = 0; i < l$watched.length; i++) {
      final l$watched$entry = l$watched[i];
      final lOther$watched$entry = lOther$watched[i];
      if (l$watched$entry != lOther$watched$entry) return false;
    }

    final l$showId = showId;
    final lOther$showId = other.showId;
    if (l$showId != lOther$showId) return false;
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$$show = $show;
    final lOther$$show = other.$show;
    if (l$$show != lOther$$show) return false;
    return true;
  }
}

extension UtilityExtension$Query$watched$progresses$edges$node
    on Query$watched$progresses$edges$node {
  Query$watched$progresses$edges$node copyWith(
          {String? id,
          List<int>? watched,
          int? showId,
          String? userId,
          String? $__typename,
          Query$watched$progresses$edges$node$show? $show}) =>
      Query$watched$progresses$edges$node(
          id: id == null ? this.id : id,
          watched: watched == null ? this.watched : watched,
          showId: showId == null ? this.showId : showId,
          userId: userId == null ? this.userId : userId,
          $__typename: $__typename == null ? this.$__typename : $__typename,
          $show: $show == null ? this.$show : $show);
}

@JsonSerializable(explicitToJson: true)
class Query$watched$progresses$edges$node$show
    implements Fragment$progressWithShow$show, Fragment$baseShow {
  Query$watched$progresses$edges$node$show(
      {required this.id,
      required this.name,
      required this.overview,
      this.image,
      this.thumbnail,
      this.year,
      required this.status,
      required this.$__typename});

  @override
  factory Query$watched$progresses$edges$node$show.fromJson(
          Map<String, dynamic> json) =>
      _$Query$watched$progresses$edges$node$showFromJson(json);

  final int id;

  final String name;

  final String overview;

  final String? image;

  final String? thumbnail;

  final String? year;

  final Query$watched$progresses$edges$node$show$status status;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$watched$progresses$edges$node$showToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$overview = overview;
    final l$image = image;
    final l$thumbnail = thumbnail;
    final l$year = year;
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$overview,
      l$image,
      l$thumbnail,
      l$year,
      l$status,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$watched$progresses$edges$node$show) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$overview = overview;
    final lOther$overview = other.overview;
    if (l$overview != lOther$overview) return false;
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) return false;
    final l$thumbnail = thumbnail;
    final lOther$thumbnail = other.thumbnail;
    if (l$thumbnail != lOther$thumbnail) return false;
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) return false;
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$watched$progresses$edges$node$show
    on Query$watched$progresses$edges$node$show {
  Query$watched$progresses$edges$node$show copyWith(
          {int? id,
          String? name,
          String? overview,
          String? Function()? image,
          String? Function()? thumbnail,
          String? Function()? year,
          Query$watched$progresses$edges$node$show$status? status,
          String? $__typename}) =>
      Query$watched$progresses$edges$node$show(
          id: id == null ? this.id : id,
          name: name == null ? this.name : name,
          overview: overview == null ? this.overview : overview,
          image: image == null ? this.image : image(),
          thumbnail: thumbnail == null ? this.thumbnail : thumbnail(),
          year: year == null ? this.year : year(),
          status: status == null ? this.status : status,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$watched$progresses$edges$node$show$status
    implements Fragment$progressWithShow$show$status, Fragment$baseShow$status {
  Query$watched$progresses$edges$node$show$status(
      {required this.name, required this.$__typename});

  @override
  factory Query$watched$progresses$edges$node$show$status.fromJson(
          Map<String, dynamic> json) =>
      _$Query$watched$progresses$edges$node$show$statusFromJson(json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$watched$progresses$edges$node$show$statusToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$watched$progresses$edges$node$show$status) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$watched$progresses$edges$node$show$status
    on Query$watched$progresses$edges$node$show$status {
  Query$watched$progresses$edges$node$show$status copyWith(
          {String? name, String? $__typename}) =>
      Query$watched$progresses$edges$node$show$status(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$watchedEpisodes {
  Query$watchedEpisodes({required this.progresses, required this.$__typename});

  @override
  factory Query$watchedEpisodes.fromJson(Map<String, dynamic> json) =>
      _$Query$watchedEpisodesFromJson(json);

  final Query$watchedEpisodes$progresses progresses;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$watchedEpisodesToJson(this);
  int get hashCode {
    final l$progresses = progresses;
    final l$$__typename = $__typename;
    return Object.hashAll([l$progresses, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$watchedEpisodes) || runtimeType != other.runtimeType)
      return false;
    final l$progresses = progresses;
    final lOther$progresses = other.progresses;
    if (l$progresses != lOther$progresses) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$watchedEpisodes on Query$watchedEpisodes {
  Query$watchedEpisodes copyWith(
          {Query$watchedEpisodes$progresses? progresses,
          String? $__typename}) =>
      Query$watchedEpisodes(
          progresses: progresses == null ? this.progresses : progresses,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const queryDocumentwatchedEpisodes = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'watchedEpisodes'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'getOwnProgresses'),
            alias: NameNode(value: 'progresses'),
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'edges'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'node'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                              name: NameNode(value: 'progressWithShow'),
                              directives: []),
                          FieldNode(
                              name: NameNode(value: 'show'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FragmentSpreadNode(
                                    name: NameNode(value: 'withEpisodes'),
                                    directives: []),
                                FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  fragmentDefinitionprogressWithShow,
  fragmentDefinitionwithEpisodes,
  fragmentDefinitionbaseProgress,
  fragmentDefinitionbaseShow,
  fragmentDefinitionbaseEpisode,
]);
Query$watchedEpisodes _parserFn$Query$watchedEpisodes(
        Map<String, dynamic> data) =>
    Query$watchedEpisodes.fromJson(data);

class Options$Query$watchedEpisodes
    extends graphql.QueryOptions<Query$watchedEpisodes> {
  Options$Query$watchedEpisodes(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: queryDocumentwatchedEpisodes,
            parserFn: _parserFn$Query$watchedEpisodes);
}

class WatchOptions$Query$watchedEpisodes
    extends graphql.WatchQueryOptions<Query$watchedEpisodes> {
  WatchOptions$Query$watchedEpisodes(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: queryDocumentwatchedEpisodes,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$watchedEpisodes);
}

class FetchMoreOptions$Query$watchedEpisodes extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$watchedEpisodes(
      {required graphql.UpdateQuery updateQuery})
      : super(updateQuery: updateQuery, document: queryDocumentwatchedEpisodes);
}

extension ClientExtension$Query$watchedEpisodes on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$watchedEpisodes>> query$watchedEpisodes(
          [Options$Query$watchedEpisodes? options]) async =>
      await this.query(options ?? Options$Query$watchedEpisodes());
  graphql.ObservableQuery<Query$watchedEpisodes> watchQuery$watchedEpisodes(
          [WatchOptions$Query$watchedEpisodes? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$watchedEpisodes());
  void writeQuery$watchedEpisodes(
          {required Query$watchedEpisodes data, bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: queryDocumentwatchedEpisodes)),
          data: data.toJson(),
          broadcast: broadcast);
  Query$watchedEpisodes? readQuery$watchedEpisodes({bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: queryDocumentwatchedEpisodes)),
        optimistic: optimistic);
    return result == null ? null : Query$watchedEpisodes.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$watchedEpisodes> useQuery$watchedEpisodes(
        [Options$Query$watchedEpisodes? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$watchedEpisodes());
graphql.ObservableQuery<Query$watchedEpisodes> useWatchQuery$watchedEpisodes(
        [WatchOptions$Query$watchedEpisodes? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$watchedEpisodes());

class Query$watchedEpisodes$Widget
    extends graphql_flutter.Query<Query$watchedEpisodes> {
  Query$watchedEpisodes$Widget(
      {widgets.Key? key,
      Options$Query$watchedEpisodes? options,
      required graphql_flutter.QueryBuilder<Query$watchedEpisodes> builder})
      : super(
            key: key,
            options: options ?? Options$Query$watchedEpisodes(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$watchedEpisodes$progresses {
  Query$watchedEpisodes$progresses(
      {required this.edges, required this.$__typename});

  @override
  factory Query$watchedEpisodes$progresses.fromJson(
          Map<String, dynamic> json) =>
      _$Query$watchedEpisodes$progressesFromJson(json);

  final List<Query$watchedEpisodes$progresses$edges> edges;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$watchedEpisodes$progressesToJson(this);
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [Object.hashAll(l$edges.map((v) => v)), l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$watchedEpisodes$progresses) ||
        runtimeType != other.runtimeType) return false;
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges.length != lOther$edges.length) return false;
    for (int i = 0; i < l$edges.length; i++) {
      final l$edges$entry = l$edges[i];
      final lOther$edges$entry = lOther$edges[i];
      if (l$edges$entry != lOther$edges$entry) return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$watchedEpisodes$progresses
    on Query$watchedEpisodes$progresses {
  Query$watchedEpisodes$progresses copyWith(
          {List<Query$watchedEpisodes$progresses$edges>? edges,
          String? $__typename}) =>
      Query$watchedEpisodes$progresses(
          edges: edges == null ? this.edges : edges,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$watchedEpisodes$progresses$edges {
  Query$watchedEpisodes$progresses$edges(
      {required this.node, required this.$__typename});

  @override
  factory Query$watchedEpisodes$progresses$edges.fromJson(
          Map<String, dynamic> json) =>
      _$Query$watchedEpisodes$progresses$edgesFromJson(json);

  final Query$watchedEpisodes$progresses$edges$node node;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$watchedEpisodes$progresses$edgesToJson(this);
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$watchedEpisodes$progresses$edges) ||
        runtimeType != other.runtimeType) return false;
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$watchedEpisodes$progresses$edges
    on Query$watchedEpisodes$progresses$edges {
  Query$watchedEpisodes$progresses$edges copyWith(
          {Query$watchedEpisodes$progresses$edges$node? node,
          String? $__typename}) =>
      Query$watchedEpisodes$progresses$edges(
          node: node == null ? this.node : node,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$watchedEpisodes$progresses$edges$node
    implements Fragment$progressWithShow, Fragment$baseProgress {
  Query$watchedEpisodes$progresses$edges$node(
      {required this.id,
      required this.watched,
      required this.showId,
      required this.userId,
      required this.$__typename,
      required this.$show});

  @override
  factory Query$watchedEpisodes$progresses$edges$node.fromJson(
          Map<String, dynamic> json) =>
      _$Query$watchedEpisodes$progresses$edges$nodeFromJson(json);

  final String id;

  final List<int> watched;

  final int showId;

  final String userId;

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(name: 'show')
  final Query$watchedEpisodes$progresses$edges$node$show $show;

  Map<String, dynamic> toJson() =>
      _$Query$watchedEpisodes$progresses$edges$nodeToJson(this);
  int get hashCode {
    final l$id = id;
    final l$watched = watched;
    final l$showId = showId;
    final l$userId = userId;
    final l$$__typename = $__typename;
    final l$$show = $show;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$watched.map((v) => v)),
      l$showId,
      l$userId,
      l$$__typename,
      l$$show
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$watchedEpisodes$progresses$edges$node) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$watched = watched;
    final lOther$watched = other.watched;
    if (l$watched.length != lOther$watched.length) return false;
    for (int i = 0; i < l$watched.length; i++) {
      final l$watched$entry = l$watched[i];
      final lOther$watched$entry = lOther$watched[i];
      if (l$watched$entry != lOther$watched$entry) return false;
    }

    final l$showId = showId;
    final lOther$showId = other.showId;
    if (l$showId != lOther$showId) return false;
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$$show = $show;
    final lOther$$show = other.$show;
    if (l$$show != lOther$$show) return false;
    return true;
  }
}

extension UtilityExtension$Query$watchedEpisodes$progresses$edges$node
    on Query$watchedEpisodes$progresses$edges$node {
  Query$watchedEpisodes$progresses$edges$node copyWith(
          {String? id,
          List<int>? watched,
          int? showId,
          String? userId,
          String? $__typename,
          Query$watchedEpisodes$progresses$edges$node$show? $show}) =>
      Query$watchedEpisodes$progresses$edges$node(
          id: id == null ? this.id : id,
          watched: watched == null ? this.watched : watched,
          showId: showId == null ? this.showId : showId,
          userId: userId == null ? this.userId : userId,
          $__typename: $__typename == null ? this.$__typename : $__typename,
          $show: $show == null ? this.$show : $show);
}

@JsonSerializable(explicitToJson: true)
class Query$watchedEpisodes$progresses$edges$node$show
    implements
        Fragment$progressWithShow$show,
        Fragment$baseShow,
        Fragment$withEpisodes {
  Query$watchedEpisodes$progresses$edges$node$show(
      {required this.id,
      required this.name,
      required this.overview,
      this.image,
      this.thumbnail,
      this.year,
      required this.status,
      required this.$__typename,
      required this.episodes});

  @override
  factory Query$watchedEpisodes$progresses$edges$node$show.fromJson(
          Map<String, dynamic> json) =>
      _$Query$watchedEpisodes$progresses$edges$node$showFromJson(json);

  final int id;

  final String name;

  final String overview;

  final String? image;

  final String? thumbnail;

  final String? year;

  final Query$watchedEpisodes$progresses$edges$node$show$status status;

  @JsonKey(name: '__typename')
  final String $__typename;

  final List<Query$watchedEpisodes$progresses$edges$node$show$episodes>
      episodes;

  Map<String, dynamic> toJson() =>
      _$Query$watchedEpisodes$progresses$edges$node$showToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$overview = overview;
    final l$image = image;
    final l$thumbnail = thumbnail;
    final l$year = year;
    final l$status = status;
    final l$$__typename = $__typename;
    final l$episodes = episodes;
    return Object.hashAll([
      l$id,
      l$name,
      l$overview,
      l$image,
      l$thumbnail,
      l$year,
      l$status,
      l$$__typename,
      Object.hashAll(l$episodes.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$watchedEpisodes$progresses$edges$node$show) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$overview = overview;
    final lOther$overview = other.overview;
    if (l$overview != lOther$overview) return false;
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) return false;
    final l$thumbnail = thumbnail;
    final lOther$thumbnail = other.thumbnail;
    if (l$thumbnail != lOther$thumbnail) return false;
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) return false;
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$episodes = episodes;
    final lOther$episodes = other.episodes;
    if (l$episodes.length != lOther$episodes.length) return false;
    for (int i = 0; i < l$episodes.length; i++) {
      final l$episodes$entry = l$episodes[i];
      final lOther$episodes$entry = lOther$episodes[i];
      if (l$episodes$entry != lOther$episodes$entry) return false;
    }

    return true;
  }
}

extension UtilityExtension$Query$watchedEpisodes$progresses$edges$node$show
    on Query$watchedEpisodes$progresses$edges$node$show {
  Query$watchedEpisodes$progresses$edges$node$show copyWith(
          {int? id,
          String? name,
          String? overview,
          String? Function()? image,
          String? Function()? thumbnail,
          String? Function()? year,
          Query$watchedEpisodes$progresses$edges$node$show$status? status,
          String? $__typename,
          List<Query$watchedEpisodes$progresses$edges$node$show$episodes>?
              episodes}) =>
      Query$watchedEpisodes$progresses$edges$node$show(
          id: id == null ? this.id : id,
          name: name == null ? this.name : name,
          overview: overview == null ? this.overview : overview,
          image: image == null ? this.image : image(),
          thumbnail: thumbnail == null ? this.thumbnail : thumbnail(),
          year: year == null ? this.year : year(),
          status: status == null ? this.status : status,
          $__typename: $__typename == null ? this.$__typename : $__typename,
          episodes: episodes == null ? this.episodes : episodes);
}

@JsonSerializable(explicitToJson: true)
class Query$watchedEpisodes$progresses$edges$node$show$status
    implements Fragment$progressWithShow$show$status, Fragment$baseShow$status {
  Query$watchedEpisodes$progresses$edges$node$show$status(
      {required this.name, required this.$__typename});

  @override
  factory Query$watchedEpisodes$progresses$edges$node$show$status.fromJson(
          Map<String, dynamic> json) =>
      _$Query$watchedEpisodes$progresses$edges$node$show$statusFromJson(json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$watchedEpisodes$progresses$edges$node$show$statusToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$watchedEpisodes$progresses$edges$node$show$status) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$watchedEpisodes$progresses$edges$node$show$status
    on Query$watchedEpisodes$progresses$edges$node$show$status {
  Query$watchedEpisodes$progresses$edges$node$show$status copyWith(
          {String? name, String? $__typename}) =>
      Query$watchedEpisodes$progresses$edges$node$show$status(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$watchedEpisodes$progresses$edges$node$show$episodes
    implements Fragment$withEpisodes$episodes, Fragment$baseEpisode {
  Query$watchedEpisodes$progresses$edges$node$show$episodes(
      {required this.id,
      required this.name,
      this.aired,
      this.runtime,
      required this.isMovie,
      required this.number,
      required this.seasonNumber,
      required this.special,
      required this.due,
      required this.$__typename});

  @override
  factory Query$watchedEpisodes$progresses$edges$node$show$episodes.fromJson(
          Map<String, dynamic> json) =>
      _$Query$watchedEpisodes$progresses$edges$node$show$episodesFromJson(json);

  final int id;

  final String name;

  final String? aired;

  final int? runtime;

  final int isMovie;

  final int number;

  final int seasonNumber;

  final bool special;

  final bool due;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$watchedEpisodes$progresses$edges$node$show$episodesToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$aired = aired;
    final l$runtime = runtime;
    final l$isMovie = isMovie;
    final l$number = number;
    final l$seasonNumber = seasonNumber;
    final l$special = special;
    final l$due = due;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$aired,
      l$runtime,
      l$isMovie,
      l$number,
      l$seasonNumber,
      l$special,
      l$due,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$watchedEpisodes$progresses$edges$node$show$episodes) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$aired = aired;
    final lOther$aired = other.aired;
    if (l$aired != lOther$aired) return false;
    final l$runtime = runtime;
    final lOther$runtime = other.runtime;
    if (l$runtime != lOther$runtime) return false;
    final l$isMovie = isMovie;
    final lOther$isMovie = other.isMovie;
    if (l$isMovie != lOther$isMovie) return false;
    final l$number = number;
    final lOther$number = other.number;
    if (l$number != lOther$number) return false;
    final l$seasonNumber = seasonNumber;
    final lOther$seasonNumber = other.seasonNumber;
    if (l$seasonNumber != lOther$seasonNumber) return false;
    final l$special = special;
    final lOther$special = other.special;
    if (l$special != lOther$special) return false;
    final l$due = due;
    final lOther$due = other.due;
    if (l$due != lOther$due) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$watchedEpisodes$progresses$edges$node$show$episodes
    on Query$watchedEpisodes$progresses$edges$node$show$episodes {
  Query$watchedEpisodes$progresses$edges$node$show$episodes copyWith(
          {int? id,
          String? name,
          String? Function()? aired,
          int? Function()? runtime,
          int? isMovie,
          int? number,
          int? seasonNumber,
          bool? special,
          bool? due,
          String? $__typename}) =>
      Query$watchedEpisodes$progresses$edges$node$show$episodes(
          id: id == null ? this.id : id,
          name: name == null ? this.name : name,
          aired: aired == null ? this.aired : aired(),
          runtime: runtime == null ? this.runtime : runtime(),
          isMovie: isMovie == null ? this.isMovie : isMovie,
          number: number == null ? this.number : number,
          seasonNumber: seasonNumber == null ? this.seasonNumber : seasonNumber,
          special: special == null ? this.special : special,
          due: due == null ? this.due : due,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Variables$Query$progress {
  Variables$Query$progress({required this.$show});

  @override
  factory Variables$Query$progress.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$progressFromJson(json);

  @JsonKey(name: 'show')
  final int $show;

  Map<String, dynamic> toJson() => _$Variables$Query$progressToJson(this);
  int get hashCode {
    final l$$show = $show;
    return Object.hashAll([l$$show]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$progress) ||
        runtimeType != other.runtimeType) return false;
    final l$$show = $show;
    final lOther$$show = other.$show;
    if (l$$show != lOther$$show) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class Query$progress {
  Query$progress({this.progress, required this.$__typename});

  @override
  factory Query$progress.fromJson(Map<String, dynamic> json) =>
      _$Query$progressFromJson(json);

  final Query$progress$progress? progress;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$progressToJson(this);
  int get hashCode {
    final l$progress = progress;
    final l$$__typename = $__typename;
    return Object.hashAll([l$progress, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$progress) || runtimeType != other.runtimeType)
      return false;
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$progress on Query$progress {
  Query$progress copyWith(
          {Query$progress$progress? Function()? progress,
          String? $__typename}) =>
      Query$progress(
          progress: progress == null ? this.progress : progress(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const queryDocumentprogress = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'progress'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'show')),
            type:
                NamedTypeNode(name: NameNode(value: 'ApiID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'getOwnProgress'),
            alias: NameNode(value: 'progress'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'show'),
                  value: VariableNode(name: NameNode(value: 'show')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'baseProgress'), directives: []),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  fragmentDefinitionbaseProgress,
]);
Query$progress _parserFn$Query$progress(Map<String, dynamic> data) =>
    Query$progress.fromJson(data);

class Options$Query$progress extends graphql.QueryOptions<Query$progress> {
  Options$Query$progress(
      {String? operationName,
      required Variables$Query$progress variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: queryDocumentprogress,
            parserFn: _parserFn$Query$progress);
}

class WatchOptions$Query$progress
    extends graphql.WatchQueryOptions<Query$progress> {
  WatchOptions$Query$progress(
      {String? operationName,
      required Variables$Query$progress variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: queryDocumentprogress,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$progress);
}

class FetchMoreOptions$Query$progress extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$progress(
      {required graphql.UpdateQuery updateQuery,
      required Variables$Query$progress variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: queryDocumentprogress);
}

extension ClientExtension$Query$progress on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$progress>> query$progress(
          Options$Query$progress options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$progress> watchQuery$progress(
          WatchOptions$Query$progress options) =>
      this.watchQuery(options);
  void writeQuery$progress(
          {required Query$progress data,
          required Variables$Query$progress variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: queryDocumentprogress),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  Query$progress? readQuery$progress(
      {required Variables$Query$progress variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: queryDocumentprogress),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : Query$progress.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$progress> useQuery$progress(
        Options$Query$progress options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$progress> useWatchQuery$progress(
        WatchOptions$Query$progress options) =>
    graphql_flutter.useWatchQuery(options);

class Query$progress$Widget extends graphql_flutter.Query<Query$progress> {
  Query$progress$Widget(
      {widgets.Key? key,
      required Options$Query$progress options,
      required graphql_flutter.QueryBuilder<Query$progress> builder})
      : super(key: key, options: options, builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$progress$progress implements Fragment$baseProgress {
  Query$progress$progress(
      {required this.id,
      required this.watched,
      required this.showId,
      required this.userId,
      required this.$__typename});

  @override
  factory Query$progress$progress.fromJson(Map<String, dynamic> json) =>
      _$Query$progress$progressFromJson(json);

  final String id;

  final List<int> watched;

  final int showId;

  final String userId;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$progress$progressToJson(this);
  int get hashCode {
    final l$id = id;
    final l$watched = watched;
    final l$showId = showId;
    final l$userId = userId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$watched.map((v) => v)),
      l$showId,
      l$userId,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$progress$progress) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$watched = watched;
    final lOther$watched = other.watched;
    if (l$watched.length != lOther$watched.length) return false;
    for (int i = 0; i < l$watched.length; i++) {
      final l$watched$entry = l$watched[i];
      final lOther$watched$entry = lOther$watched[i];
      if (l$watched$entry != lOther$watched$entry) return false;
    }

    final l$showId = showId;
    final lOther$showId = other.showId;
    if (l$showId != lOther$showId) return false;
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$progress$progress on Query$progress$progress {
  Query$progress$progress copyWith(
          {String? id,
          List<int>? watched,
          int? showId,
          String? userId,
          String? $__typename}) =>
      Query$progress$progress(
          id: id == null ? this.id : id,
          watched: watched == null ? this.watched : watched,
          showId: showId == null ? this.showId : showId,
          userId: userId == null ? this.userId : userId,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Variables$Mutation$setWatched {
  Variables$Mutation$setWatched({required this.$show, required this.episodes});

  @override
  factory Variables$Mutation$setWatched.fromJson(Map<String, dynamic> json) =>
      _$Variables$Mutation$setWatchedFromJson(json);

  @JsonKey(name: 'show')
  final int $show;

  final List<int> episodes;

  Map<String, dynamic> toJson() => _$Variables$Mutation$setWatchedToJson(this);
  int get hashCode {
    final l$$show = $show;
    final l$episodes = episodes;
    return Object.hashAll([l$$show, Object.hashAll(l$episodes.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Mutation$setWatched) ||
        runtimeType != other.runtimeType) return false;
    final l$$show = $show;
    final lOther$$show = other.$show;
    if (l$$show != lOther$$show) return false;
    final l$episodes = episodes;
    final lOther$episodes = other.episodes;
    if (l$episodes.length != lOther$episodes.length) return false;
    for (int i = 0; i < l$episodes.length; i++) {
      final l$episodes$entry = l$episodes[i];
      final lOther$episodes$entry = lOther$episodes[i];
      if (l$episodes$entry != lOther$episodes$entry) return false;
    }

    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class Mutation$setWatched {
  Mutation$setWatched({required this.setWatched, required this.$__typename});

  @override
  factory Mutation$setWatched.fromJson(Map<String, dynamic> json) =>
      _$Mutation$setWatchedFromJson(json);

  final Mutation$setWatched$setWatched setWatched;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Mutation$setWatchedToJson(this);
  int get hashCode {
    final l$setWatched = setWatched;
    final l$$__typename = $__typename;
    return Object.hashAll([l$setWatched, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$setWatched) || runtimeType != other.runtimeType)
      return false;
    final l$setWatched = setWatched;
    final lOther$setWatched = other.setWatched;
    if (l$setWatched != lOther$setWatched) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$setWatched on Mutation$setWatched {
  Mutation$setWatched copyWith(
          {Mutation$setWatched$setWatched? setWatched, String? $__typename}) =>
      Mutation$setWatched(
          setWatched: setWatched == null ? this.setWatched : setWatched,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const queryDocumentsetWatched = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'setWatched'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'show')),
            type:
                NamedTypeNode(name: NameNode(value: 'ApiID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'episodes')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'ApiID'), isNonNull: true),
                isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'setWatched'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'show'),
                  value: VariableNode(name: NameNode(value: 'show'))),
              ArgumentNode(
                  name: NameNode(value: 'episodes'),
                  value: VariableNode(name: NameNode(value: 'episodes')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'baseProgress'), directives: []),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  fragmentDefinitionbaseProgress,
]);
Mutation$setWatched _parserFn$Mutation$setWatched(Map<String, dynamic> data) =>
    Mutation$setWatched.fromJson(data);
typedef OnMutationCompleted$Mutation$setWatched = FutureOr<void> Function(
    dynamic, Mutation$setWatched?);

class Options$Mutation$setWatched
    extends graphql.MutationOptions<Mutation$setWatched> {
  Options$Mutation$setWatched(
      {String? operationName,
      required Variables$Mutation$setWatched variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$setWatched? onCompleted,
      graphql.OnMutationUpdate<Mutation$setWatched>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFn$Mutation$setWatched(data)),
            update: update,
            onError: onError,
            document: queryDocumentsetWatched,
            parserFn: _parserFn$Mutation$setWatched);

  final OnMutationCompleted$Mutation$setWatched? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$setWatched
    extends graphql.WatchQueryOptions<Mutation$setWatched> {
  WatchOptions$Mutation$setWatched(
      {String? operationName,
      required Variables$Mutation$setWatched variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: queryDocumentsetWatched,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$setWatched);
}

extension ClientExtension$Mutation$setWatched on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$setWatched>> mutate$setWatched(
          Options$Mutation$setWatched options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$setWatched> watchMutation$setWatched(
          WatchOptions$Mutation$setWatched options) =>
      this.watchMutation(options);
}

class Mutation$setWatched$HookResult {
  Mutation$setWatched$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$setWatched runMutation;

  final graphql.QueryResult<Mutation$setWatched> result;
}

Mutation$setWatched$HookResult useMutation$setWatched(
    [WidgetOptions$Mutation$setWatched? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$setWatched());
  return Mutation$setWatched$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$setWatched> useWatchMutation$setWatched(
        WatchOptions$Mutation$setWatched options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$setWatched
    extends graphql.MutationOptions<Mutation$setWatched> {
  WidgetOptions$Mutation$setWatched(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$setWatched? onCompleted,
      graphql.OnMutationUpdate<Mutation$setWatched>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFn$Mutation$setWatched(data)),
            update: update,
            onError: onError,
            document: queryDocumentsetWatched,
            parserFn: _parserFn$Mutation$setWatched);

  final OnMutationCompleted$Mutation$setWatched? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$setWatched
    = graphql.MultiSourceResult<Mutation$setWatched>
        Function(Variables$Mutation$setWatched, {Object? optimisticResult});
typedef Builder$Mutation$setWatched = widgets.Widget Function(
    RunMutation$Mutation$setWatched, graphql.QueryResult<Mutation$setWatched>?);

class Mutation$setWatched$Widget
    extends graphql_flutter.Mutation<Mutation$setWatched> {
  Mutation$setWatched$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$setWatched? options,
      required Builder$Mutation$setWatched builder})
      : super(
            key: key,
            options: options ?? WidgetOptions$Mutation$setWatched(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable(explicitToJson: true)
class Mutation$setWatched$setWatched implements Fragment$baseProgress {
  Mutation$setWatched$setWatched(
      {required this.id,
      required this.watched,
      required this.showId,
      required this.userId,
      required this.$__typename});

  @override
  factory Mutation$setWatched$setWatched.fromJson(Map<String, dynamic> json) =>
      _$Mutation$setWatched$setWatchedFromJson(json);

  final String id;

  final List<int> watched;

  final int showId;

  final String userId;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Mutation$setWatched$setWatchedToJson(this);
  int get hashCode {
    final l$id = id;
    final l$watched = watched;
    final l$showId = showId;
    final l$userId = userId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$watched.map((v) => v)),
      l$showId,
      l$userId,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$setWatched$setWatched) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$watched = watched;
    final lOther$watched = other.watched;
    if (l$watched.length != lOther$watched.length) return false;
    for (int i = 0; i < l$watched.length; i++) {
      final l$watched$entry = l$watched[i];
      final lOther$watched$entry = lOther$watched[i];
      if (l$watched$entry != lOther$watched$entry) return false;
    }

    final l$showId = showId;
    final lOther$showId = other.showId;
    if (l$showId != lOther$showId) return false;
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$setWatched$setWatched
    on Mutation$setWatched$setWatched {
  Mutation$setWatched$setWatched copyWith(
          {String? id,
          List<int>? watched,
          int? showId,
          String? userId,
          String? $__typename}) =>
      Mutation$setWatched$setWatched(
          id: id == null ? this.id : id,
          watched: watched == null ? this.watched : watched,
          showId: showId == null ? this.showId : showId,
          userId: userId == null ? this.userId : userId,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
