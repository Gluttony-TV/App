import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'favourites.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$Query$isFavourite {
  Variables$Query$isFavourite({required this.$show});

  @override
  factory Variables$Query$isFavourite.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$isFavouriteFromJson(json);

  @JsonKey(name: 'show')
  final int $show;

  Map<String, dynamic> toJson() => _$Variables$Query$isFavouriteToJson(this);
  int get hashCode {
    final l$$show = $show;
    return Object.hashAll([l$$show]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$isFavourite) ||
        runtimeType != other.runtimeType) return false;
    final l$$show = $show;
    final lOther$$show = other.$show;
    if (l$$show != lOther$$show) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class Query$isFavourite {
  Query$isFavourite({required this.isFavourite, required this.$__typename});

  @override
  factory Query$isFavourite.fromJson(Map<String, dynamic> json) =>
      _$Query$isFavouriteFromJson(json);

  final bool isFavourite;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$isFavouriteToJson(this);
  int get hashCode {
    final l$isFavourite = isFavourite;
    final l$$__typename = $__typename;
    return Object.hashAll([l$isFavourite, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$isFavourite) || runtimeType != other.runtimeType)
      return false;
    final l$isFavourite = isFavourite;
    final lOther$isFavourite = other.isFavourite;
    if (l$isFavourite != lOther$isFavourite) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$isFavourite on Query$isFavourite {
  Query$isFavourite copyWith({bool? isFavourite, String? $__typename}) =>
      Query$isFavourite(
          isFavourite: isFavourite == null ? this.isFavourite : isFavourite,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const queryDocumentisFavourite = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'isFavourite'),
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
            name: NameNode(value: 'isInList'),
            alias: NameNode(value: 'isFavourite'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'show'),
                  value: VariableNode(name: NameNode(value: 'show'))),
              ArgumentNode(
                  name: NameNode(value: 'primary'),
                  value: BooleanValueNode(value: true))
            ],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
Query$isFavourite _parserFn$Query$isFavourite(Map<String, dynamic> data) =>
    Query$isFavourite.fromJson(data);

class Options$Query$isFavourite
    extends graphql.QueryOptions<Query$isFavourite> {
  Options$Query$isFavourite(
      {String? operationName,
      required Variables$Query$isFavourite variables,
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
            document: queryDocumentisFavourite,
            parserFn: _parserFn$Query$isFavourite);
}

class WatchOptions$Query$isFavourite
    extends graphql.WatchQueryOptions<Query$isFavourite> {
  WatchOptions$Query$isFavourite(
      {String? operationName,
      required Variables$Query$isFavourite variables,
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
            document: queryDocumentisFavourite,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$isFavourite);
}

class FetchMoreOptions$Query$isFavourite extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$isFavourite(
      {required graphql.UpdateQuery updateQuery,
      required Variables$Query$isFavourite variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: queryDocumentisFavourite);
}

extension ClientExtension$Query$isFavourite on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$isFavourite>> query$isFavourite(
          Options$Query$isFavourite options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$isFavourite> watchQuery$isFavourite(
          WatchOptions$Query$isFavourite options) =>
      this.watchQuery(options);
  void writeQuery$isFavourite(
          {required Query$isFavourite data,
          required Variables$Query$isFavourite variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: queryDocumentisFavourite),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  Query$isFavourite? readQuery$isFavourite(
      {required Variables$Query$isFavourite variables,
      bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: queryDocumentisFavourite),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : Query$isFavourite.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$isFavourite> useQuery$isFavourite(
        Options$Query$isFavourite options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$isFavourite> useWatchQuery$isFavourite(
        WatchOptions$Query$isFavourite options) =>
    graphql_flutter.useWatchQuery(options);

class Query$isFavourite$Widget
    extends graphql_flutter.Query<Query$isFavourite> {
  Query$isFavourite$Widget(
      {widgets.Key? key,
      required Options$Query$isFavourite options,
      required graphql_flutter.QueryBuilder<Query$isFavourite> builder})
      : super(key: key, options: options, builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Variables$Mutation$addFavourite {
  Variables$Mutation$addFavourite({required this.shows});

  @override
  factory Variables$Mutation$addFavourite.fromJson(Map<String, dynamic> json) =>
      _$Variables$Mutation$addFavouriteFromJson(json);

  final List<int> shows;

  Map<String, dynamic> toJson() =>
      _$Variables$Mutation$addFavouriteToJson(this);
  int get hashCode {
    final l$shows = shows;
    return Object.hashAll([Object.hashAll(l$shows.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Mutation$addFavourite) ||
        runtimeType != other.runtimeType) return false;
    final l$shows = shows;
    final lOther$shows = other.shows;
    if (l$shows.length != lOther$shows.length) return false;
    for (int i = 0; i < l$shows.length; i++) {
      final l$shows$entry = l$shows[i];
      final lOther$shows$entry = lOther$shows[i];
      if (l$shows$entry != lOther$shows$entry) return false;
    }

    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class Mutation$addFavourite {
  Mutation$addFavourite({required this.list, required this.$__typename});

  @override
  factory Mutation$addFavourite.fromJson(Map<String, dynamic> json) =>
      _$Mutation$addFavouriteFromJson(json);

  final Mutation$addFavourite$list list;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Mutation$addFavouriteToJson(this);
  int get hashCode {
    final l$list = list;
    final l$$__typename = $__typename;
    return Object.hashAll([l$list, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$addFavourite) || runtimeType != other.runtimeType)
      return false;
    final l$list = list;
    final lOther$list = other.list;
    if (l$list != lOther$list) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$addFavourite on Mutation$addFavourite {
  Mutation$addFavourite copyWith(
          {Mutation$addFavourite$list? list, String? $__typename}) =>
      Mutation$addFavourite(
          list: list == null ? this.list : list,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const queryDocumentaddFavourite = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'addFavourite'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'shows')),
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
            name: NameNode(value: 'addToList'),
            alias: NameNode(value: 'list'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'shows'),
                  value: VariableNode(name: NameNode(value: 'shows'))),
              ArgumentNode(
                  name: NameNode(value: 'primary'),
                  value: BooleanValueNode(value: true))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
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
Mutation$addFavourite _parserFn$Mutation$addFavourite(
        Map<String, dynamic> data) =>
    Mutation$addFavourite.fromJson(data);
typedef OnMutationCompleted$Mutation$addFavourite = FutureOr<void> Function(
    dynamic, Mutation$addFavourite?);

class Options$Mutation$addFavourite
    extends graphql.MutationOptions<Mutation$addFavourite> {
  Options$Mutation$addFavourite(
      {String? operationName,
      required Variables$Mutation$addFavourite variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$addFavourite? onCompleted,
      graphql.OnMutationUpdate<Mutation$addFavourite>? update,
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
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$addFavourite(data)),
            update: update,
            onError: onError,
            document: queryDocumentaddFavourite,
            parserFn: _parserFn$Mutation$addFavourite);

  final OnMutationCompleted$Mutation$addFavourite? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$addFavourite
    extends graphql.WatchQueryOptions<Mutation$addFavourite> {
  WatchOptions$Mutation$addFavourite(
      {String? operationName,
      required Variables$Mutation$addFavourite variables,
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
            document: queryDocumentaddFavourite,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$addFavourite);
}

extension ClientExtension$Mutation$addFavourite on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$addFavourite>> mutate$addFavourite(
          Options$Mutation$addFavourite options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$addFavourite> watchMutation$addFavourite(
          WatchOptions$Mutation$addFavourite options) =>
      this.watchMutation(options);
}

class Mutation$addFavourite$HookResult {
  Mutation$addFavourite$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$addFavourite runMutation;

  final graphql.QueryResult<Mutation$addFavourite> result;
}

Mutation$addFavourite$HookResult useMutation$addFavourite(
    [WidgetOptions$Mutation$addFavourite? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$addFavourite());
  return Mutation$addFavourite$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$addFavourite> useWatchMutation$addFavourite(
        WatchOptions$Mutation$addFavourite options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$addFavourite
    extends graphql.MutationOptions<Mutation$addFavourite> {
  WidgetOptions$Mutation$addFavourite(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$addFavourite? onCompleted,
      graphql.OnMutationUpdate<Mutation$addFavourite>? update,
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
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$addFavourite(data)),
            update: update,
            onError: onError,
            document: queryDocumentaddFavourite,
            parserFn: _parserFn$Mutation$addFavourite);

  final OnMutationCompleted$Mutation$addFavourite? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$addFavourite
    = graphql.MultiSourceResult<Mutation$addFavourite>
        Function(Variables$Mutation$addFavourite, {Object? optimisticResult});
typedef Builder$Mutation$addFavourite = widgets.Widget Function(
    RunMutation$Mutation$addFavourite,
    graphql.QueryResult<Mutation$addFavourite>?);

class Mutation$addFavourite$Widget
    extends graphql_flutter.Mutation<Mutation$addFavourite> {
  Mutation$addFavourite$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$addFavourite? options,
      required Builder$Mutation$addFavourite builder})
      : super(
            key: key,
            options: options ?? WidgetOptions$Mutation$addFavourite(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable(explicitToJson: true)
class Mutation$addFavourite$list {
  Mutation$addFavourite$list({required this.id, required this.$__typename});

  @override
  factory Mutation$addFavourite$list.fromJson(Map<String, dynamic> json) =>
      _$Mutation$addFavourite$listFromJson(json);

  final String id;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Mutation$addFavourite$listToJson(this);
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$addFavourite$list) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$addFavourite$list
    on Mutation$addFavourite$list {
  Mutation$addFavourite$list copyWith({String? id, String? $__typename}) =>
      Mutation$addFavourite$list(
          id: id == null ? this.id : id,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Variables$Mutation$removeFavourite {
  Variables$Mutation$removeFavourite({required this.shows});

  @override
  factory Variables$Mutation$removeFavourite.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$Mutation$removeFavouriteFromJson(json);

  final List<int> shows;

  Map<String, dynamic> toJson() =>
      _$Variables$Mutation$removeFavouriteToJson(this);
  int get hashCode {
    final l$shows = shows;
    return Object.hashAll([Object.hashAll(l$shows.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Mutation$removeFavourite) ||
        runtimeType != other.runtimeType) return false;
    final l$shows = shows;
    final lOther$shows = other.shows;
    if (l$shows.length != lOther$shows.length) return false;
    for (int i = 0; i < l$shows.length; i++) {
      final l$shows$entry = l$shows[i];
      final lOther$shows$entry = lOther$shows[i];
      if (l$shows$entry != lOther$shows$entry) return false;
    }

    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class Mutation$removeFavourite {
  Mutation$removeFavourite({required this.list, required this.$__typename});

  @override
  factory Mutation$removeFavourite.fromJson(Map<String, dynamic> json) =>
      _$Mutation$removeFavouriteFromJson(json);

  final Mutation$removeFavourite$list list;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Mutation$removeFavouriteToJson(this);
  int get hashCode {
    final l$list = list;
    final l$$__typename = $__typename;
    return Object.hashAll([l$list, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$removeFavourite) ||
        runtimeType != other.runtimeType) return false;
    final l$list = list;
    final lOther$list = other.list;
    if (l$list != lOther$list) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$removeFavourite
    on Mutation$removeFavourite {
  Mutation$removeFavourite copyWith(
          {Mutation$removeFavourite$list? list, String? $__typename}) =>
      Mutation$removeFavourite(
          list: list == null ? this.list : list,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const queryDocumentremoveFavourite = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'removeFavourite'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'shows')),
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
            name: NameNode(value: 'removeFromList'),
            alias: NameNode(value: 'list'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'shows'),
                  value: VariableNode(name: NameNode(value: 'shows'))),
              ArgumentNode(
                  name: NameNode(value: 'primary'),
                  value: BooleanValueNode(value: true))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
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
Mutation$removeFavourite _parserFn$Mutation$removeFavourite(
        Map<String, dynamic> data) =>
    Mutation$removeFavourite.fromJson(data);
typedef OnMutationCompleted$Mutation$removeFavourite = FutureOr<void> Function(
    dynamic, Mutation$removeFavourite?);

class Options$Mutation$removeFavourite
    extends graphql.MutationOptions<Mutation$removeFavourite> {
  Options$Mutation$removeFavourite(
      {String? operationName,
      required Variables$Mutation$removeFavourite variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$removeFavourite? onCompleted,
      graphql.OnMutationUpdate<Mutation$removeFavourite>? update,
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
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$removeFavourite(data)),
            update: update,
            onError: onError,
            document: queryDocumentremoveFavourite,
            parserFn: _parserFn$Mutation$removeFavourite);

  final OnMutationCompleted$Mutation$removeFavourite? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$removeFavourite
    extends graphql.WatchQueryOptions<Mutation$removeFavourite> {
  WatchOptions$Mutation$removeFavourite(
      {String? operationName,
      required Variables$Mutation$removeFavourite variables,
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
            document: queryDocumentremoveFavourite,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$removeFavourite);
}

extension ClientExtension$Mutation$removeFavourite on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$removeFavourite>> mutate$removeFavourite(
          Options$Mutation$removeFavourite options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$removeFavourite>
      watchMutation$removeFavourite(
              WatchOptions$Mutation$removeFavourite options) =>
          this.watchMutation(options);
}

class Mutation$removeFavourite$HookResult {
  Mutation$removeFavourite$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$removeFavourite runMutation;

  final graphql.QueryResult<Mutation$removeFavourite> result;
}

Mutation$removeFavourite$HookResult useMutation$removeFavourite(
    [WidgetOptions$Mutation$removeFavourite? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$removeFavourite());
  return Mutation$removeFavourite$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$removeFavourite>
    useWatchMutation$removeFavourite(
            WatchOptions$Mutation$removeFavourite options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$removeFavourite
    extends graphql.MutationOptions<Mutation$removeFavourite> {
  WidgetOptions$Mutation$removeFavourite(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$removeFavourite? onCompleted,
      graphql.OnMutationUpdate<Mutation$removeFavourite>? update,
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
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$removeFavourite(data)),
            update: update,
            onError: onError,
            document: queryDocumentremoveFavourite,
            parserFn: _parserFn$Mutation$removeFavourite);

  final OnMutationCompleted$Mutation$removeFavourite? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$removeFavourite = graphql
        .MultiSourceResult<Mutation$removeFavourite>
    Function(Variables$Mutation$removeFavourite, {Object? optimisticResult});
typedef Builder$Mutation$removeFavourite = widgets.Widget Function(
    RunMutation$Mutation$removeFavourite,
    graphql.QueryResult<Mutation$removeFavourite>?);

class Mutation$removeFavourite$Widget
    extends graphql_flutter.Mutation<Mutation$removeFavourite> {
  Mutation$removeFavourite$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$removeFavourite? options,
      required Builder$Mutation$removeFavourite builder})
      : super(
            key: key,
            options: options ?? WidgetOptions$Mutation$removeFavourite(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable(explicitToJson: true)
class Mutation$removeFavourite$list {
  Mutation$removeFavourite$list({required this.id, required this.$__typename});

  @override
  factory Mutation$removeFavourite$list.fromJson(Map<String, dynamic> json) =>
      _$Mutation$removeFavourite$listFromJson(json);

  final String id;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Mutation$removeFavourite$listToJson(this);
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$removeFavourite$list) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$removeFavourite$list
    on Mutation$removeFavourite$list {
  Mutation$removeFavourite$list copyWith({String? id, String? $__typename}) =>
      Mutation$removeFavourite$list(
          id: id == null ? this.id : id,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
