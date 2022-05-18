import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'query.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Query$self {
  Query$self({required this.self, required this.$__typename});

  @override
  factory Query$self.fromJson(Map<String, dynamic> json) =>
      _$Query$selfFromJson(json);

  final Query$self$self self;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$selfToJson(this);
  int get hashCode {
    final l$self = self;
    final l$$__typename = $__typename;
    return Object.hashAll([l$self, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$self) || runtimeType != other.runtimeType)
      return false;
    final l$self = self;
    final lOther$self = other.self;
    if (l$self != lOther$self) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$self on Query$self {
  Query$self copyWith({Query$self$self? self, String? $__typename}) =>
      Query$self(
          self: self == null ? this.self : self,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const queryDocumentself = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'self'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'self'),
            alias: null,
            arguments: [],
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
                  name: NameNode(value: 'email'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'joinedAt'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'image'),
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
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
Query$self _parserFn$Query$self(Map<String, dynamic> data) =>
    Query$self.fromJson(data);

class Options$Query$self extends graphql.QueryOptions<Query$self> {
  Options$Query$self(
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
            document: queryDocumentself,
            parserFn: _parserFn$Query$self);
}

class WatchOptions$Query$self extends graphql.WatchQueryOptions<Query$self> {
  WatchOptions$Query$self(
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
            document: queryDocumentself,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$self);
}

class FetchMoreOptions$Query$self extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$self({required graphql.UpdateQuery updateQuery})
      : super(updateQuery: updateQuery, document: queryDocumentself);
}

extension ClientExtension$Query$self on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$self>> query$self(
          [Options$Query$self? options]) async =>
      await this.query(options ?? Options$Query$self());
  graphql.ObservableQuery<Query$self> watchQuery$self(
          [WatchOptions$Query$self? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$self());
  void writeQuery$self({required Query$self data, bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: queryDocumentself)),
          data: data.toJson(),
          broadcast: broadcast);
  Query$self? readQuery$self({bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: queryDocumentself)),
        optimistic: optimistic);
    return result == null ? null : Query$self.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$self> useQuery$self(
        [Options$Query$self? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$self());
graphql.ObservableQuery<Query$self> useWatchQuery$self(
        [WatchOptions$Query$self? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$self());

class Query$self$Widget extends graphql_flutter.Query<Query$self> {
  Query$self$Widget(
      {widgets.Key? key,
      Options$Query$self? options,
      required graphql_flutter.QueryBuilder<Query$self> builder})
      : super(
            key: key,
            options: options ?? Options$Query$self(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$self$self {
  Query$self$self(
      {required this.id,
      required this.name,
      required this.email,
      required this.joinedAt,
      this.image,
      required this.$__typename});

  @override
  factory Query$self$self.fromJson(Map<String, dynamic> json) =>
      _$Query$self$selfFromJson(json);

  final String id;

  final String name;

  final String email;

  final int joinedAt;

  final String? image;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$self$selfToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$email = email;
    final l$joinedAt = joinedAt;
    final l$image = image;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [l$id, l$name, l$email, l$joinedAt, l$image, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$self$self) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    final l$joinedAt = joinedAt;
    final lOther$joinedAt = other.joinedAt;
    if (l$joinedAt != lOther$joinedAt) return false;
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$self$self on Query$self$self {
  Query$self$self copyWith(
          {String? id,
          String? name,
          String? email,
          int? joinedAt,
          String? Function()? image,
          String? $__typename}) =>
      Query$self$self(
          id: id == null ? this.id : id,
          name: name == null ? this.name : name,
          email: email == null ? this.email : email,
          joinedAt: joinedAt == null ? this.joinedAt : joinedAt,
          image: image == null ? this.image : image(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
