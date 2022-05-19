import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'lists.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$baseList {
  Fragment$baseList(
      {required this.id,
      required this.name,
      required this.slug,
      required this.userId,
      required this.$__typename});

  @override
  factory Fragment$baseList.fromJson(Map<String, dynamic> json) =>
      _$Fragment$baseListFromJson(json);

  final String id;

  final String name;

  final String slug;

  final String userId;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$baseListToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$slug = slug;
    final l$userId = userId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$slug, l$userId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$baseList) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) return false;
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$baseList on Fragment$baseList {
  Fragment$baseList copyWith(
          {String? id,
          String? name,
          String? slug,
          String? userId,
          String? $__typename}) =>
      Fragment$baseList(
          id: id == null ? this.id : id,
          name: name == null ? this.name : name,
          slug: slug == null ? this.slug : slug,
          userId: userId == null ? this.userId : userId,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const fragmentDefinitionbaseList = FragmentDefinitionNode(
    name: NameNode(value: 'baseList'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'List'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'id'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'slug'),
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
const queryDocumentbaseList = DocumentNode(definitions: [
  fragmentDefinitionbaseList,
]);

extension ClientExtension$Fragment$baseList on graphql.GraphQLClient {
  void writeFragment$baseList(
          {required Fragment$baseList data,
          required Map<String, dynamic> idFields,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'baseList', document: queryDocumentbaseList)),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$baseList? readFragment$baseList(
      {required Map<String, dynamic> idFields, bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'baseList', document: queryDocumentbaseList)),
        optimistic: optimistic);
    return result == null ? null : Fragment$baseList.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Query$lists {
  Query$lists({required this.lists, required this.$__typename});

  @override
  factory Query$lists.fromJson(Map<String, dynamic> json) =>
      _$Query$listsFromJson(json);

  final List<Query$lists$lists> lists;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$listsToJson(this);
  int get hashCode {
    final l$lists = lists;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [Object.hashAll(l$lists.map((v) => v)), l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$lists) || runtimeType != other.runtimeType)
      return false;
    final l$lists = lists;
    final lOther$lists = other.lists;
    if (l$lists.length != lOther$lists.length) return false;
    for (int i = 0; i < l$lists.length; i++) {
      final l$lists$entry = l$lists[i];
      final lOther$lists$entry = lOther$lists[i];
      if (l$lists$entry != lOther$lists$entry) return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$lists on Query$lists {
  Query$lists copyWith({List<Query$lists$lists>? lists, String? $__typename}) =>
      Query$lists(
          lists: lists == null ? this.lists : lists,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const queryDocumentlists = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'lists'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'getOwnLists'),
            alias: NameNode(value: 'lists'),
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'baseList'), directives: []),
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
  fragmentDefinitionbaseList,
]);
Query$lists _parserFn$Query$lists(Map<String, dynamic> data) =>
    Query$lists.fromJson(data);

class Options$Query$lists extends graphql.QueryOptions<Query$lists> {
  Options$Query$lists(
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
            document: queryDocumentlists,
            parserFn: _parserFn$Query$lists);
}

class WatchOptions$Query$lists extends graphql.WatchQueryOptions<Query$lists> {
  WatchOptions$Query$lists(
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
            document: queryDocumentlists,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$lists);
}

class FetchMoreOptions$Query$lists extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$lists({required graphql.UpdateQuery updateQuery})
      : super(updateQuery: updateQuery, document: queryDocumentlists);
}

extension ClientExtension$Query$lists on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$lists>> query$lists(
          [Options$Query$lists? options]) async =>
      await this.query(options ?? Options$Query$lists());
  graphql.ObservableQuery<Query$lists> watchQuery$lists(
          [WatchOptions$Query$lists? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$lists());
  void writeQuery$lists({required Query$lists data, bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: queryDocumentlists)),
          data: data.toJson(),
          broadcast: broadcast);
  Query$lists? readQuery$lists({bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: queryDocumentlists)),
        optimistic: optimistic);
    return result == null ? null : Query$lists.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$lists> useQuery$lists(
        [Options$Query$lists? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$lists());
graphql.ObservableQuery<Query$lists> useWatchQuery$lists(
        [WatchOptions$Query$lists? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$lists());

class Query$lists$Widget extends graphql_flutter.Query<Query$lists> {
  Query$lists$Widget(
      {widgets.Key? key,
      Options$Query$lists? options,
      required graphql_flutter.QueryBuilder<Query$lists> builder})
      : super(
            key: key,
            options: options ?? Options$Query$lists(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$lists$lists implements Fragment$baseList {
  Query$lists$lists(
      {required this.id,
      required this.name,
      required this.slug,
      required this.userId,
      required this.$__typename});

  @override
  factory Query$lists$lists.fromJson(Map<String, dynamic> json) =>
      _$Query$lists$listsFromJson(json);

  final String id;

  final String name;

  final String slug;

  final String userId;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$lists$listsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$slug = slug;
    final l$userId = userId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$slug, l$userId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$lists$lists) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) return false;
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$lists$lists on Query$lists$lists {
  Query$lists$lists copyWith(
          {String? id,
          String? name,
          String? slug,
          String? userId,
          String? $__typename}) =>
      Query$lists$lists(
          id: id == null ? this.id : id,
          name: name == null ? this.name : name,
          slug: slug == null ? this.slug : slug,
          userId: userId == null ? this.userId : userId,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
