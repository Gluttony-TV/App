import 'fragments.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
import 'show.graphql.dart';
import 'watched.graphql.dart';
part 'user.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$baseUser {
  Fragment$baseUser(
      {required this.id,
      required this.name,
      required this.joinedAt,
      required this.email,
      this.seeded,
      this.image,
      required this.settings,
      required this.$__typename});

  @override
  factory Fragment$baseUser.fromJson(Map<String, dynamic> json) =>
      _$Fragment$baseUserFromJson(json);

  final String id;

  final String name;

  final int joinedAt;

  final String email;

  final bool? seeded;

  final String? image;

  final Fragment$baseUser$settings settings;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$baseUserToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$joinedAt = joinedAt;
    final l$email = email;
    final l$seeded = seeded;
    final l$image = image;
    final l$settings = settings;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$joinedAt,
      l$email,
      l$seeded,
      l$image,
      l$settings,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$baseUser) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$joinedAt = joinedAt;
    final lOther$joinedAt = other.joinedAt;
    if (l$joinedAt != lOther$joinedAt) return false;
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    final l$seeded = seeded;
    final lOther$seeded = other.seeded;
    if (l$seeded != lOther$seeded) return false;
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) return false;
    final l$settings = settings;
    final lOther$settings = other.settings;
    if (l$settings != lOther$settings) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$baseUser on Fragment$baseUser {
  Fragment$baseUser copyWith(
          {String? id,
          String? name,
          int? joinedAt,
          String? email,
          bool? Function()? seeded,
          String? Function()? image,
          Fragment$baseUser$settings? settings,
          String? $__typename}) =>
      Fragment$baseUser(
          id: id == null ? this.id : id,
          name: name == null ? this.name : name,
          joinedAt: joinedAt == null ? this.joinedAt : joinedAt,
          email: email == null ? this.email : email,
          seeded: seeded == null ? this.seeded : seeded(),
          image: image == null ? this.image : image(),
          settings: settings == null ? this.settings : settings,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const fragmentDefinitionbaseUser = FragmentDefinitionNode(
    name: NameNode(value: 'baseUser'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'User'), isNonNull: false)),
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
          name: NameNode(value: 'joinedAt'),
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
          name: NameNode(value: 'seeded'),
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
          name: NameNode(value: 'settings'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
                name: NameNode(value: 'visibility'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                      name: NameNode(value: 'profile'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null),
                  FieldNode(
                      name: NameNode(value: 'progress'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null),
                  FieldNode(
                      name: NameNode(value: 'favourites'),
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
      FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const queryDocumentbaseUser = DocumentNode(definitions: [
  fragmentDefinitionbaseUser,
]);

extension ClientExtension$Fragment$baseUser on graphql.GraphQLClient {
  void writeFragment$baseUser(
          {required Fragment$baseUser data,
          required Map<String, dynamic> idFields,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'baseUser', document: queryDocumentbaseUser)),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$baseUser? readFragment$baseUser(
      {required Map<String, dynamic> idFields, bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'baseUser', document: queryDocumentbaseUser)),
        optimistic: optimistic);
    return result == null ? null : Fragment$baseUser.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Fragment$baseUser$settings {
  Fragment$baseUser$settings(
      {required this.visibility, required this.$__typename});

  @override
  factory Fragment$baseUser$settings.fromJson(Map<String, dynamic> json) =>
      _$Fragment$baseUser$settingsFromJson(json);

  final Fragment$baseUser$settings$visibility visibility;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$baseUser$settingsToJson(this);
  int get hashCode {
    final l$visibility = visibility;
    final l$$__typename = $__typename;
    return Object.hashAll([l$visibility, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$baseUser$settings) ||
        runtimeType != other.runtimeType) return false;
    final l$visibility = visibility;
    final lOther$visibility = other.visibility;
    if (l$visibility != lOther$visibility) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$baseUser$settings
    on Fragment$baseUser$settings {
  Fragment$baseUser$settings copyWith(
          {Fragment$baseUser$settings$visibility? visibility,
          String? $__typename}) =>
      Fragment$baseUser$settings(
          visibility: visibility == null ? this.visibility : visibility,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Fragment$baseUser$settings$visibility {
  Fragment$baseUser$settings$visibility(
      {required this.profile,
      required this.progress,
      required this.favourites,
      required this.$__typename});

  @override
  factory Fragment$baseUser$settings$visibility.fromJson(
          Map<String, dynamic> json) =>
      _$Fragment$baseUser$settings$visibilityFromJson(json);

  final bool profile;

  final bool progress;

  final bool favourites;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Fragment$baseUser$settings$visibilityToJson(this);
  int get hashCode {
    final l$profile = profile;
    final l$progress = progress;
    final l$favourites = favourites;
    final l$$__typename = $__typename;
    return Object.hashAll([l$profile, l$progress, l$favourites, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$baseUser$settings$visibility) ||
        runtimeType != other.runtimeType) return false;
    final l$profile = profile;
    final lOther$profile = other.profile;
    if (l$profile != lOther$profile) return false;
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) return false;
    final l$favourites = favourites;
    final lOther$favourites = other.favourites;
    if (l$favourites != lOther$favourites) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$baseUser$settings$visibility
    on Fragment$baseUser$settings$visibility {
  Fragment$baseUser$settings$visibility copyWith(
          {bool? profile,
          bool? progress,
          bool? favourites,
          String? $__typename}) =>
      Fragment$baseUser$settings$visibility(
          profile: profile == null ? this.profile : profile,
          progress: progress == null ? this.progress : progress,
          favourites: favourites == null ? this.favourites : favourites,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Fragment$baseAccount {
  Fragment$baseAccount(
      {required this.id,
      required this.provider,
      this.name,
      required this.$__typename});

  @override
  factory Fragment$baseAccount.fromJson(Map<String, dynamic> json) =>
      _$Fragment$baseAccountFromJson(json);

  final String id;

  final String provider;

  final String? name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$baseAccountToJson(this);
  int get hashCode {
    final l$id = id;
    final l$provider = provider;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$provider, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$baseAccount) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$provider = provider;
    final lOther$provider = other.provider;
    if (l$provider != lOther$provider) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$baseAccount on Fragment$baseAccount {
  Fragment$baseAccount copyWith(
          {String? id,
          String? provider,
          String? Function()? name,
          String? $__typename}) =>
      Fragment$baseAccount(
          id: id == null ? this.id : id,
          provider: provider == null ? this.provider : provider,
          name: name == null ? this.name : name(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const fragmentDefinitionbaseAccount = FragmentDefinitionNode(
    name: NameNode(value: 'baseAccount'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Account'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'id'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'provider'),
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
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const queryDocumentbaseAccount = DocumentNode(definitions: [
  fragmentDefinitionbaseAccount,
]);

extension ClientExtension$Fragment$baseAccount on graphql.GraphQLClient {
  void writeFragment$baseAccount(
          {required Fragment$baseAccount data,
          required Map<String, dynamic> idFields,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'baseAccount',
                  document: queryDocumentbaseAccount)),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$baseAccount? readFragment$baseAccount(
      {required Map<String, dynamic> idFields, bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'baseAccount',
                document: queryDocumentbaseAccount)),
        optimistic: optimistic);
    return result == null ? null : Fragment$baseAccount.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Variables$Query$user {
  Variables$Query$user({required this.id});

  @override
  factory Variables$Query$user.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$userFromJson(json);

  final String id;

  Map<String, dynamic> toJson() => _$Variables$Query$userToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$user) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class Query$user {
  Query$user({required this.user, required this.$__typename});

  @override
  factory Query$user.fromJson(Map<String, dynamic> json) =>
      _$Query$userFromJson(json);

  final Query$user$user user;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$userToJson(this);
  int get hashCode {
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$user) || runtimeType != other.runtimeType)
      return false;
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$user on Query$user {
  Query$user copyWith({Query$user$user? user, String? $__typename}) =>
      Query$user(
          user: user == null ? this.user : user,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const queryDocumentuser = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'user'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'getUser'),
            alias: NameNode(value: 'user'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'baseUser'), directives: []),
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
  fragmentDefinitionbaseUser,
]);
Query$user _parserFn$Query$user(Map<String, dynamic> data) =>
    Query$user.fromJson(data);

class Options$Query$user extends graphql.QueryOptions<Query$user> {
  Options$Query$user(
      {String? operationName,
      required Variables$Query$user variables,
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
            document: queryDocumentuser,
            parserFn: _parserFn$Query$user);
}

class WatchOptions$Query$user extends graphql.WatchQueryOptions<Query$user> {
  WatchOptions$Query$user(
      {String? operationName,
      required Variables$Query$user variables,
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
            document: queryDocumentuser,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$user);
}

class FetchMoreOptions$Query$user extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$user(
      {required graphql.UpdateQuery updateQuery,
      required Variables$Query$user variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: queryDocumentuser);
}

extension ClientExtension$Query$user on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$user>> query$user(
          Options$Query$user options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$user> watchQuery$user(
          WatchOptions$Query$user options) =>
      this.watchQuery(options);
  void writeQuery$user(
          {required Query$user data,
          required Variables$Query$user variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: queryDocumentuser),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  Query$user? readQuery$user(
      {required Variables$Query$user variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: queryDocumentuser),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : Query$user.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$user> useQuery$user(
        Options$Query$user options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$user> useWatchQuery$user(
        WatchOptions$Query$user options) =>
    graphql_flutter.useWatchQuery(options);

class Query$user$Widget extends graphql_flutter.Query<Query$user> {
  Query$user$Widget(
      {widgets.Key? key,
      required Options$Query$user options,
      required graphql_flutter.QueryBuilder<Query$user> builder})
      : super(key: key, options: options, builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$user$user implements Fragment$baseUser {
  Query$user$user(
      {required this.id,
      required this.name,
      required this.joinedAt,
      required this.email,
      this.seeded,
      this.image,
      required this.settings,
      required this.$__typename});

  @override
  factory Query$user$user.fromJson(Map<String, dynamic> json) =>
      _$Query$user$userFromJson(json);

  final String id;

  final String name;

  final int joinedAt;

  final String email;

  final bool? seeded;

  final String? image;

  final Query$user$user$settings settings;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$user$userToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$joinedAt = joinedAt;
    final l$email = email;
    final l$seeded = seeded;
    final l$image = image;
    final l$settings = settings;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$joinedAt,
      l$email,
      l$seeded,
      l$image,
      l$settings,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$user$user) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$joinedAt = joinedAt;
    final lOther$joinedAt = other.joinedAt;
    if (l$joinedAt != lOther$joinedAt) return false;
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    final l$seeded = seeded;
    final lOther$seeded = other.seeded;
    if (l$seeded != lOther$seeded) return false;
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) return false;
    final l$settings = settings;
    final lOther$settings = other.settings;
    if (l$settings != lOther$settings) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$user$user on Query$user$user {
  Query$user$user copyWith(
          {String? id,
          String? name,
          int? joinedAt,
          String? email,
          bool? Function()? seeded,
          String? Function()? image,
          Query$user$user$settings? settings,
          String? $__typename}) =>
      Query$user$user(
          id: id == null ? this.id : id,
          name: name == null ? this.name : name,
          joinedAt: joinedAt == null ? this.joinedAt : joinedAt,
          email: email == null ? this.email : email,
          seeded: seeded == null ? this.seeded : seeded(),
          image: image == null ? this.image : image(),
          settings: settings == null ? this.settings : settings,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$user$user$settings implements Fragment$baseUser$settings {
  Query$user$user$settings(
      {required this.visibility, required this.$__typename});

  @override
  factory Query$user$user$settings.fromJson(Map<String, dynamic> json) =>
      _$Query$user$user$settingsFromJson(json);

  final Query$user$user$settings$visibility visibility;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$user$user$settingsToJson(this);
  int get hashCode {
    final l$visibility = visibility;
    final l$$__typename = $__typename;
    return Object.hashAll([l$visibility, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$user$user$settings) ||
        runtimeType != other.runtimeType) return false;
    final l$visibility = visibility;
    final lOther$visibility = other.visibility;
    if (l$visibility != lOther$visibility) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$user$user$settings
    on Query$user$user$settings {
  Query$user$user$settings copyWith(
          {Query$user$user$settings$visibility? visibility,
          String? $__typename}) =>
      Query$user$user$settings(
          visibility: visibility == null ? this.visibility : visibility,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$user$user$settings$visibility
    implements Fragment$baseUser$settings$visibility {
  Query$user$user$settings$visibility(
      {required this.profile,
      required this.progress,
      required this.favourites,
      required this.$__typename});

  @override
  factory Query$user$user$settings$visibility.fromJson(
          Map<String, dynamic> json) =>
      _$Query$user$user$settings$visibilityFromJson(json);

  final bool profile;

  final bool progress;

  final bool favourites;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$user$user$settings$visibilityToJson(this);
  int get hashCode {
    final l$profile = profile;
    final l$progress = progress;
    final l$favourites = favourites;
    final l$$__typename = $__typename;
    return Object.hashAll([l$profile, l$progress, l$favourites, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$user$user$settings$visibility) ||
        runtimeType != other.runtimeType) return false;
    final l$profile = profile;
    final lOther$profile = other.profile;
    if (l$profile != lOther$profile) return false;
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) return false;
    final l$favourites = favourites;
    final lOther$favourites = other.favourites;
    if (l$favourites != lOther$favourites) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$user$user$settings$visibility
    on Query$user$user$settings$visibility {
  Query$user$user$settings$visibility copyWith(
          {bool? profile,
          bool? progress,
          bool? favourites,
          String? $__typename}) =>
      Query$user$user$settings$visibility(
          profile: profile == null ? this.profile : profile,
          progress: progress == null ? this.progress : progress,
          favourites: favourites == null ? this.favourites : favourites,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Variables$Query$userWatched {
  Variables$Query$userWatched({required this.id});

  @override
  factory Variables$Query$userWatched.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$userWatchedFromJson(json);

  final String id;

  Map<String, dynamic> toJson() => _$Variables$Query$userWatchedToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$userWatched) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class Query$userWatched {
  Query$userWatched(
      {required this.user, required this.watched, required this.$__typename});

  @override
  factory Query$userWatched.fromJson(Map<String, dynamic> json) =>
      _$Query$userWatchedFromJson(json);

  final Query$userWatched$user user;

  final Query$userWatched$watched watched;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$userWatchedToJson(this);
  int get hashCode {
    final l$user = user;
    final l$watched = watched;
    final l$$__typename = $__typename;
    return Object.hashAll([l$user, l$watched, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$userWatched) || runtimeType != other.runtimeType)
      return false;
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) return false;
    final l$watched = watched;
    final lOther$watched = other.watched;
    if (l$watched != lOther$watched) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$userWatched on Query$userWatched {
  Query$userWatched copyWith(
          {Query$userWatched$user? user,
          Query$userWatched$watched? watched,
          String? $__typename}) =>
      Query$userWatched(
          user: user == null ? this.user : user,
          watched: watched == null ? this.watched : watched,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const queryDocumentuserWatched = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'userWatched'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'getUser'),
            alias: NameNode(value: 'user'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'baseUser'), directives: []),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'getProgressesOf'),
            alias: NameNode(value: 'watched'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'user'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'pageInfo'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'Forwards'), directives: []),
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
  fragmentDefinitionbaseUser,
  fragmentDefinitionForwards,
  fragmentDefinitionprogressWithShow,
  fragmentDefinitionbaseProgress,
  fragmentDefinitionbaseShow,
]);
Query$userWatched _parserFn$Query$userWatched(Map<String, dynamic> data) =>
    Query$userWatched.fromJson(data);

class Options$Query$userWatched
    extends graphql.QueryOptions<Query$userWatched> {
  Options$Query$userWatched(
      {String? operationName,
      required Variables$Query$userWatched variables,
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
            document: queryDocumentuserWatched,
            parserFn: _parserFn$Query$userWatched);
}

class WatchOptions$Query$userWatched
    extends graphql.WatchQueryOptions<Query$userWatched> {
  WatchOptions$Query$userWatched(
      {String? operationName,
      required Variables$Query$userWatched variables,
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
            document: queryDocumentuserWatched,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$userWatched);
}

class FetchMoreOptions$Query$userWatched extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$userWatched(
      {required graphql.UpdateQuery updateQuery,
      required Variables$Query$userWatched variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: queryDocumentuserWatched);
}

extension ClientExtension$Query$userWatched on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$userWatched>> query$userWatched(
          Options$Query$userWatched options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$userWatched> watchQuery$userWatched(
          WatchOptions$Query$userWatched options) =>
      this.watchQuery(options);
  void writeQuery$userWatched(
          {required Query$userWatched data,
          required Variables$Query$userWatched variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: queryDocumentuserWatched),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  Query$userWatched? readQuery$userWatched(
      {required Variables$Query$userWatched variables,
      bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: queryDocumentuserWatched),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : Query$userWatched.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$userWatched> useQuery$userWatched(
        Options$Query$userWatched options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$userWatched> useWatchQuery$userWatched(
        WatchOptions$Query$userWatched options) =>
    graphql_flutter.useWatchQuery(options);

class Query$userWatched$Widget
    extends graphql_flutter.Query<Query$userWatched> {
  Query$userWatched$Widget(
      {widgets.Key? key,
      required Options$Query$userWatched options,
      required graphql_flutter.QueryBuilder<Query$userWatched> builder})
      : super(key: key, options: options, builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$userWatched$user implements Fragment$baseUser {
  Query$userWatched$user(
      {required this.id,
      required this.name,
      required this.joinedAt,
      required this.email,
      this.seeded,
      this.image,
      required this.settings,
      required this.$__typename});

  @override
  factory Query$userWatched$user.fromJson(Map<String, dynamic> json) =>
      _$Query$userWatched$userFromJson(json);

  final String id;

  final String name;

  final int joinedAt;

  final String email;

  final bool? seeded;

  final String? image;

  final Query$userWatched$user$settings settings;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$userWatched$userToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$joinedAt = joinedAt;
    final l$email = email;
    final l$seeded = seeded;
    final l$image = image;
    final l$settings = settings;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$joinedAt,
      l$email,
      l$seeded,
      l$image,
      l$settings,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$userWatched$user) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$joinedAt = joinedAt;
    final lOther$joinedAt = other.joinedAt;
    if (l$joinedAt != lOther$joinedAt) return false;
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    final l$seeded = seeded;
    final lOther$seeded = other.seeded;
    if (l$seeded != lOther$seeded) return false;
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) return false;
    final l$settings = settings;
    final lOther$settings = other.settings;
    if (l$settings != lOther$settings) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$userWatched$user on Query$userWatched$user {
  Query$userWatched$user copyWith(
          {String? id,
          String? name,
          int? joinedAt,
          String? email,
          bool? Function()? seeded,
          String? Function()? image,
          Query$userWatched$user$settings? settings,
          String? $__typename}) =>
      Query$userWatched$user(
          id: id == null ? this.id : id,
          name: name == null ? this.name : name,
          joinedAt: joinedAt == null ? this.joinedAt : joinedAt,
          email: email == null ? this.email : email,
          seeded: seeded == null ? this.seeded : seeded(),
          image: image == null ? this.image : image(),
          settings: settings == null ? this.settings : settings,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$userWatched$user$settings implements Fragment$baseUser$settings {
  Query$userWatched$user$settings(
      {required this.visibility, required this.$__typename});

  @override
  factory Query$userWatched$user$settings.fromJson(Map<String, dynamic> json) =>
      _$Query$userWatched$user$settingsFromJson(json);

  final Query$userWatched$user$settings$visibility visibility;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$userWatched$user$settingsToJson(this);
  int get hashCode {
    final l$visibility = visibility;
    final l$$__typename = $__typename;
    return Object.hashAll([l$visibility, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$userWatched$user$settings) ||
        runtimeType != other.runtimeType) return false;
    final l$visibility = visibility;
    final lOther$visibility = other.visibility;
    if (l$visibility != lOther$visibility) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$userWatched$user$settings
    on Query$userWatched$user$settings {
  Query$userWatched$user$settings copyWith(
          {Query$userWatched$user$settings$visibility? visibility,
          String? $__typename}) =>
      Query$userWatched$user$settings(
          visibility: visibility == null ? this.visibility : visibility,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$userWatched$user$settings$visibility
    implements Fragment$baseUser$settings$visibility {
  Query$userWatched$user$settings$visibility(
      {required this.profile,
      required this.progress,
      required this.favourites,
      required this.$__typename});

  @override
  factory Query$userWatched$user$settings$visibility.fromJson(
          Map<String, dynamic> json) =>
      _$Query$userWatched$user$settings$visibilityFromJson(json);

  final bool profile;

  final bool progress;

  final bool favourites;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$userWatched$user$settings$visibilityToJson(this);
  int get hashCode {
    final l$profile = profile;
    final l$progress = progress;
    final l$favourites = favourites;
    final l$$__typename = $__typename;
    return Object.hashAll([l$profile, l$progress, l$favourites, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$userWatched$user$settings$visibility) ||
        runtimeType != other.runtimeType) return false;
    final l$profile = profile;
    final lOther$profile = other.profile;
    if (l$profile != lOther$profile) return false;
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) return false;
    final l$favourites = favourites;
    final lOther$favourites = other.favourites;
    if (l$favourites != lOther$favourites) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$userWatched$user$settings$visibility
    on Query$userWatched$user$settings$visibility {
  Query$userWatched$user$settings$visibility copyWith(
          {bool? profile,
          bool? progress,
          bool? favourites,
          String? $__typename}) =>
      Query$userWatched$user$settings$visibility(
          profile: profile == null ? this.profile : profile,
          progress: progress == null ? this.progress : progress,
          favourites: favourites == null ? this.favourites : favourites,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$userWatched$watched {
  Query$userWatched$watched(
      {required this.pageInfo, required this.edges, required this.$__typename});

  @override
  factory Query$userWatched$watched.fromJson(Map<String, dynamic> json) =>
      _$Query$userWatched$watchedFromJson(json);

  final Query$userWatched$watched$pageInfo pageInfo;

  final List<Query$userWatched$watched$edges> edges;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$userWatched$watchedToJson(this);
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
    if (!(other is Query$userWatched$watched) ||
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

extension UtilityExtension$Query$userWatched$watched
    on Query$userWatched$watched {
  Query$userWatched$watched copyWith(
          {Query$userWatched$watched$pageInfo? pageInfo,
          List<Query$userWatched$watched$edges>? edges,
          String? $__typename}) =>
      Query$userWatched$watched(
          pageInfo: pageInfo == null ? this.pageInfo : pageInfo,
          edges: edges == null ? this.edges : edges,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$userWatched$watched$pageInfo implements Fragment$Forwards {
  Query$userWatched$watched$pageInfo(
      {required this.hasNextPage, this.endCursor, required this.$__typename});

  @override
  factory Query$userWatched$watched$pageInfo.fromJson(
          Map<String, dynamic> json) =>
      _$Query$userWatched$watched$pageInfoFromJson(json);

  final bool hasNextPage;

  final String? endCursor;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$userWatched$watched$pageInfoToJson(this);
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([l$hasNextPage, l$endCursor, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$userWatched$watched$pageInfo) ||
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

extension UtilityExtension$Query$userWatched$watched$pageInfo
    on Query$userWatched$watched$pageInfo {
  Query$userWatched$watched$pageInfo copyWith(
          {bool? hasNextPage,
          String? Function()? endCursor,
          String? $__typename}) =>
      Query$userWatched$watched$pageInfo(
          hasNextPage: hasNextPage == null ? this.hasNextPage : hasNextPage,
          endCursor: endCursor == null ? this.endCursor : endCursor(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$userWatched$watched$edges {
  Query$userWatched$watched$edges(
      {required this.node, required this.$__typename});

  @override
  factory Query$userWatched$watched$edges.fromJson(Map<String, dynamic> json) =>
      _$Query$userWatched$watched$edgesFromJson(json);

  final Query$userWatched$watched$edges$node node;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$userWatched$watched$edgesToJson(this);
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$userWatched$watched$edges) ||
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

extension UtilityExtension$Query$userWatched$watched$edges
    on Query$userWatched$watched$edges {
  Query$userWatched$watched$edges copyWith(
          {Query$userWatched$watched$edges$node? node, String? $__typename}) =>
      Query$userWatched$watched$edges(
          node: node == null ? this.node : node,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$userWatched$watched$edges$node
    implements Fragment$progressWithShow, Fragment$baseProgress {
  Query$userWatched$watched$edges$node(
      {required this.id,
      required this.watched,
      required this.showId,
      required this.userId,
      required this.$__typename,
      required this.$show});

  @override
  factory Query$userWatched$watched$edges$node.fromJson(
          Map<String, dynamic> json) =>
      _$Query$userWatched$watched$edges$nodeFromJson(json);

  final String id;

  final List<int> watched;

  final int showId;

  final String userId;

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(name: 'show')
  final Query$userWatched$watched$edges$node$show $show;

  Map<String, dynamic> toJson() =>
      _$Query$userWatched$watched$edges$nodeToJson(this);
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
    if (!(other is Query$userWatched$watched$edges$node) ||
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

extension UtilityExtension$Query$userWatched$watched$edges$node
    on Query$userWatched$watched$edges$node {
  Query$userWatched$watched$edges$node copyWith(
          {String? id,
          List<int>? watched,
          int? showId,
          String? userId,
          String? $__typename,
          Query$userWatched$watched$edges$node$show? $show}) =>
      Query$userWatched$watched$edges$node(
          id: id == null ? this.id : id,
          watched: watched == null ? this.watched : watched,
          showId: showId == null ? this.showId : showId,
          userId: userId == null ? this.userId : userId,
          $__typename: $__typename == null ? this.$__typename : $__typename,
          $show: $show == null ? this.$show : $show);
}

@JsonSerializable(explicitToJson: true)
class Query$userWatched$watched$edges$node$show
    implements Fragment$progressWithShow$show, Fragment$baseShow {
  Query$userWatched$watched$edges$node$show(
      {required this.id,
      required this.name,
      required this.overview,
      this.image,
      this.thumbnail,
      this.year,
      required this.status,
      required this.$__typename});

  @override
  factory Query$userWatched$watched$edges$node$show.fromJson(
          Map<String, dynamic> json) =>
      _$Query$userWatched$watched$edges$node$showFromJson(json);

  final int id;

  final String name;

  final String overview;

  final String? image;

  final String? thumbnail;

  final String? year;

  final Query$userWatched$watched$edges$node$show$status status;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$userWatched$watched$edges$node$showToJson(this);
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
    if (!(other is Query$userWatched$watched$edges$node$show) ||
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

extension UtilityExtension$Query$userWatched$watched$edges$node$show
    on Query$userWatched$watched$edges$node$show {
  Query$userWatched$watched$edges$node$show copyWith(
          {int? id,
          String? name,
          String? overview,
          String? Function()? image,
          String? Function()? thumbnail,
          String? Function()? year,
          Query$userWatched$watched$edges$node$show$status? status,
          String? $__typename}) =>
      Query$userWatched$watched$edges$node$show(
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
class Query$userWatched$watched$edges$node$show$status
    implements Fragment$progressWithShow$show$status, Fragment$baseShow$status {
  Query$userWatched$watched$edges$node$show$status(
      {required this.name, required this.$__typename});

  @override
  factory Query$userWatched$watched$edges$node$show$status.fromJson(
          Map<String, dynamic> json) =>
      _$Query$userWatched$watched$edges$node$show$statusFromJson(json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$userWatched$watched$edges$node$show$statusToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$userWatched$watched$edges$node$show$status) ||
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

extension UtilityExtension$Query$userWatched$watched$edges$node$show$status
    on Query$userWatched$watched$edges$node$show$status {
  Query$userWatched$watched$edges$node$show$status copyWith(
          {String? name, String? $__typename}) =>
      Query$userWatched$watched$edges$node$show$status(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Variables$Query$users {
  Variables$Query$users({this.after});

  @override
  factory Variables$Query$users.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$usersFromJson(json);

  final String? after;

  Map<String, dynamic> toJson() => _$Variables$Query$usersToJson(this);
  int get hashCode {
    final l$after = after;
    return Object.hashAll([l$after]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$users) || runtimeType != other.runtimeType)
      return false;
    final l$after = after;
    final lOther$after = other.after;
    if (l$after != lOther$after) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class Query$users {
  Query$users({required this.users, required this.$__typename});

  @override
  factory Query$users.fromJson(Map<String, dynamic> json) =>
      _$Query$usersFromJson(json);

  final Query$users$users users;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$usersToJson(this);
  int get hashCode {
    final l$users = users;
    final l$$__typename = $__typename;
    return Object.hashAll([l$users, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$users) || runtimeType != other.runtimeType)
      return false;
    final l$users = users;
    final lOther$users = other.users;
    if (l$users != lOther$users) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$users on Query$users {
  Query$users copyWith({Query$users$users? users, String? $__typename}) =>
      Query$users(
          users: users == null ? this.users : users,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const queryDocumentusers = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'users'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'after')),
            type: NamedTypeNode(
                name: NameNode(value: 'Cursor'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'getUsers'),
            alias: NameNode(value: 'users'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'after'),
                        value: VariableNode(name: NameNode(value: 'after')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'totalCount'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'pageInfo'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'Forwards'), directives: []),
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
                        name: NameNode(value: 'node'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                              name: NameNode(value: 'baseUser'),
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
  fragmentDefinitionForwards,
  fragmentDefinitionbaseUser,
]);
Query$users _parserFn$Query$users(Map<String, dynamic> data) =>
    Query$users.fromJson(data);

class Options$Query$users extends graphql.QueryOptions<Query$users> {
  Options$Query$users(
      {String? operationName,
      Variables$Query$users? variables,
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
            document: queryDocumentusers,
            parserFn: _parserFn$Query$users);
}

class WatchOptions$Query$users extends graphql.WatchQueryOptions<Query$users> {
  WatchOptions$Query$users(
      {String? operationName,
      Variables$Query$users? variables,
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
            document: queryDocumentusers,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$users);
}

class FetchMoreOptions$Query$users extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$users(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$users? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: queryDocumentusers);
}

extension ClientExtension$Query$users on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$users>> query$users(
          [Options$Query$users? options]) async =>
      await this.query(options ?? Options$Query$users());
  graphql.ObservableQuery<Query$users> watchQuery$users(
          [WatchOptions$Query$users? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$users());
  void writeQuery$users(
          {required Query$users data,
          Variables$Query$users? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: queryDocumentusers),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$users? readQuery$users(
      {Variables$Query$users? variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: queryDocumentusers),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : Query$users.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$users> useQuery$users(
        [Options$Query$users? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$users());
graphql.ObservableQuery<Query$users> useWatchQuery$users(
        [WatchOptions$Query$users? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$users());

class Query$users$Widget extends graphql_flutter.Query<Query$users> {
  Query$users$Widget(
      {widgets.Key? key,
      Options$Query$users? options,
      required graphql_flutter.QueryBuilder<Query$users> builder})
      : super(
            key: key,
            options: options ?? Options$Query$users(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$users$users {
  Query$users$users(
      {required this.totalCount,
      required this.pageInfo,
      required this.edges,
      required this.$__typename});

  @override
  factory Query$users$users.fromJson(Map<String, dynamic> json) =>
      _$Query$users$usersFromJson(json);

  final int totalCount;

  final Query$users$users$pageInfo pageInfo;

  final List<Query$users$users$edges> edges;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$users$usersToJson(this);
  int get hashCode {
    final l$totalCount = totalCount;
    final l$pageInfo = pageInfo;
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalCount,
      l$pageInfo,
      Object.hashAll(l$edges.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$users$users) || runtimeType != other.runtimeType)
      return false;
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) return false;
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

extension UtilityExtension$Query$users$users on Query$users$users {
  Query$users$users copyWith(
          {int? totalCount,
          Query$users$users$pageInfo? pageInfo,
          List<Query$users$users$edges>? edges,
          String? $__typename}) =>
      Query$users$users(
          totalCount: totalCount == null ? this.totalCount : totalCount,
          pageInfo: pageInfo == null ? this.pageInfo : pageInfo,
          edges: edges == null ? this.edges : edges,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$users$users$pageInfo implements Fragment$Forwards {
  Query$users$users$pageInfo(
      {required this.hasNextPage, this.endCursor, required this.$__typename});

  @override
  factory Query$users$users$pageInfo.fromJson(Map<String, dynamic> json) =>
      _$Query$users$users$pageInfoFromJson(json);

  final bool hasNextPage;

  final String? endCursor;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$users$users$pageInfoToJson(this);
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([l$hasNextPage, l$endCursor, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$users$users$pageInfo) ||
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

extension UtilityExtension$Query$users$users$pageInfo
    on Query$users$users$pageInfo {
  Query$users$users$pageInfo copyWith(
          {bool? hasNextPage,
          String? Function()? endCursor,
          String? $__typename}) =>
      Query$users$users$pageInfo(
          hasNextPage: hasNextPage == null ? this.hasNextPage : hasNextPage,
          endCursor: endCursor == null ? this.endCursor : endCursor(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$users$users$edges {
  Query$users$users$edges({required this.node, required this.$__typename});

  @override
  factory Query$users$users$edges.fromJson(Map<String, dynamic> json) =>
      _$Query$users$users$edgesFromJson(json);

  final Query$users$users$edges$node node;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$users$users$edgesToJson(this);
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$users$users$edges) || runtimeType != other.runtimeType)
      return false;
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$users$users$edges on Query$users$users$edges {
  Query$users$users$edges copyWith(
          {Query$users$users$edges$node? node, String? $__typename}) =>
      Query$users$users$edges(
          node: node == null ? this.node : node,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$users$users$edges$node implements Fragment$baseUser {
  Query$users$users$edges$node(
      {required this.id,
      required this.name,
      required this.joinedAt,
      required this.email,
      this.seeded,
      this.image,
      required this.settings,
      required this.$__typename});

  @override
  factory Query$users$users$edges$node.fromJson(Map<String, dynamic> json) =>
      _$Query$users$users$edges$nodeFromJson(json);

  final String id;

  final String name;

  final int joinedAt;

  final String email;

  final bool? seeded;

  final String? image;

  final Query$users$users$edges$node$settings settings;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$users$users$edges$nodeToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$joinedAt = joinedAt;
    final l$email = email;
    final l$seeded = seeded;
    final l$image = image;
    final l$settings = settings;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$joinedAt,
      l$email,
      l$seeded,
      l$image,
      l$settings,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$users$users$edges$node) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$joinedAt = joinedAt;
    final lOther$joinedAt = other.joinedAt;
    if (l$joinedAt != lOther$joinedAt) return false;
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    final l$seeded = seeded;
    final lOther$seeded = other.seeded;
    if (l$seeded != lOther$seeded) return false;
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) return false;
    final l$settings = settings;
    final lOther$settings = other.settings;
    if (l$settings != lOther$settings) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$users$users$edges$node
    on Query$users$users$edges$node {
  Query$users$users$edges$node copyWith(
          {String? id,
          String? name,
          int? joinedAt,
          String? email,
          bool? Function()? seeded,
          String? Function()? image,
          Query$users$users$edges$node$settings? settings,
          String? $__typename}) =>
      Query$users$users$edges$node(
          id: id == null ? this.id : id,
          name: name == null ? this.name : name,
          joinedAt: joinedAt == null ? this.joinedAt : joinedAt,
          email: email == null ? this.email : email,
          seeded: seeded == null ? this.seeded : seeded(),
          image: image == null ? this.image : image(),
          settings: settings == null ? this.settings : settings,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$users$users$edges$node$settings
    implements Fragment$baseUser$settings {
  Query$users$users$edges$node$settings(
      {required this.visibility, required this.$__typename});

  @override
  factory Query$users$users$edges$node$settings.fromJson(
          Map<String, dynamic> json) =>
      _$Query$users$users$edges$node$settingsFromJson(json);

  final Query$users$users$edges$node$settings$visibility visibility;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$users$users$edges$node$settingsToJson(this);
  int get hashCode {
    final l$visibility = visibility;
    final l$$__typename = $__typename;
    return Object.hashAll([l$visibility, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$users$users$edges$node$settings) ||
        runtimeType != other.runtimeType) return false;
    final l$visibility = visibility;
    final lOther$visibility = other.visibility;
    if (l$visibility != lOther$visibility) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$users$users$edges$node$settings
    on Query$users$users$edges$node$settings {
  Query$users$users$edges$node$settings copyWith(
          {Query$users$users$edges$node$settings$visibility? visibility,
          String? $__typename}) =>
      Query$users$users$edges$node$settings(
          visibility: visibility == null ? this.visibility : visibility,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$users$users$edges$node$settings$visibility
    implements Fragment$baseUser$settings$visibility {
  Query$users$users$edges$node$settings$visibility(
      {required this.profile,
      required this.progress,
      required this.favourites,
      required this.$__typename});

  @override
  factory Query$users$users$edges$node$settings$visibility.fromJson(
          Map<String, dynamic> json) =>
      _$Query$users$users$edges$node$settings$visibilityFromJson(json);

  final bool profile;

  final bool progress;

  final bool favourites;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$users$users$edges$node$settings$visibilityToJson(this);
  int get hashCode {
    final l$profile = profile;
    final l$progress = progress;
    final l$favourites = favourites;
    final l$$__typename = $__typename;
    return Object.hashAll([l$profile, l$progress, l$favourites, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$users$users$edges$node$settings$visibility) ||
        runtimeType != other.runtimeType) return false;
    final l$profile = profile;
    final lOther$profile = other.profile;
    if (l$profile != lOther$profile) return false;
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) return false;
    final l$favourites = favourites;
    final lOther$favourites = other.favourites;
    if (l$favourites != lOther$favourites) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$users$users$edges$node$settings$visibility
    on Query$users$users$edges$node$settings$visibility {
  Query$users$users$edges$node$settings$visibility copyWith(
          {bool? profile,
          bool? progress,
          bool? favourites,
          String? $__typename}) =>
      Query$users$users$edges$node$settings$visibility(
          profile: profile == null ? this.profile : profile,
          progress: progress == null ? this.progress : progress,
          favourites: favourites == null ? this.favourites : favourites,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$self {
  Query$self({required this.user, required this.$__typename});

  @override
  factory Query$self.fromJson(Map<String, dynamic> json) =>
      _$Query$selfFromJson(json);

  final Query$self$user user;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$selfToJson(this);
  int get hashCode {
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$self) || runtimeType != other.runtimeType)
      return false;
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$self on Query$self {
  Query$self copyWith({Query$self$user? user, String? $__typename}) =>
      Query$self(
          user: user == null ? this.user : user,
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
            alias: NameNode(value: 'user'),
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'baseUser'), directives: []),
              FieldNode(
                  name: NameNode(value: 'accounts'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'baseAccount'), directives: []),
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
  fragmentDefinitionbaseUser,
  fragmentDefinitionbaseAccount,
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
class Query$self$user implements Fragment$baseUser {
  Query$self$user(
      {required this.id,
      required this.name,
      required this.joinedAt,
      required this.email,
      this.seeded,
      this.image,
      required this.settings,
      required this.$__typename,
      required this.accounts});

  @override
  factory Query$self$user.fromJson(Map<String, dynamic> json) =>
      _$Query$self$userFromJson(json);

  final String id;

  final String name;

  final int joinedAt;

  final String email;

  final bool? seeded;

  final String? image;

  final Query$self$user$settings settings;

  @JsonKey(name: '__typename')
  final String $__typename;

  final List<Query$self$user$accounts> accounts;

  Map<String, dynamic> toJson() => _$Query$self$userToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$joinedAt = joinedAt;
    final l$email = email;
    final l$seeded = seeded;
    final l$image = image;
    final l$settings = settings;
    final l$$__typename = $__typename;
    final l$accounts = accounts;
    return Object.hashAll([
      l$id,
      l$name,
      l$joinedAt,
      l$email,
      l$seeded,
      l$image,
      l$settings,
      l$$__typename,
      Object.hashAll(l$accounts.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$self$user) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$joinedAt = joinedAt;
    final lOther$joinedAt = other.joinedAt;
    if (l$joinedAt != lOther$joinedAt) return false;
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    final l$seeded = seeded;
    final lOther$seeded = other.seeded;
    if (l$seeded != lOther$seeded) return false;
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) return false;
    final l$settings = settings;
    final lOther$settings = other.settings;
    if (l$settings != lOther$settings) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$accounts = accounts;
    final lOther$accounts = other.accounts;
    if (l$accounts.length != lOther$accounts.length) return false;
    for (int i = 0; i < l$accounts.length; i++) {
      final l$accounts$entry = l$accounts[i];
      final lOther$accounts$entry = lOther$accounts[i];
      if (l$accounts$entry != lOther$accounts$entry) return false;
    }

    return true;
  }
}

extension UtilityExtension$Query$self$user on Query$self$user {
  Query$self$user copyWith(
          {String? id,
          String? name,
          int? joinedAt,
          String? email,
          bool? Function()? seeded,
          String? Function()? image,
          Query$self$user$settings? settings,
          String? $__typename,
          List<Query$self$user$accounts>? accounts}) =>
      Query$self$user(
          id: id == null ? this.id : id,
          name: name == null ? this.name : name,
          joinedAt: joinedAt == null ? this.joinedAt : joinedAt,
          email: email == null ? this.email : email,
          seeded: seeded == null ? this.seeded : seeded(),
          image: image == null ? this.image : image(),
          settings: settings == null ? this.settings : settings,
          $__typename: $__typename == null ? this.$__typename : $__typename,
          accounts: accounts == null ? this.accounts : accounts);
}

@JsonSerializable(explicitToJson: true)
class Query$self$user$settings implements Fragment$baseUser$settings {
  Query$self$user$settings(
      {required this.visibility, required this.$__typename});

  @override
  factory Query$self$user$settings.fromJson(Map<String, dynamic> json) =>
      _$Query$self$user$settingsFromJson(json);

  final Query$self$user$settings$visibility visibility;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$self$user$settingsToJson(this);
  int get hashCode {
    final l$visibility = visibility;
    final l$$__typename = $__typename;
    return Object.hashAll([l$visibility, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$self$user$settings) ||
        runtimeType != other.runtimeType) return false;
    final l$visibility = visibility;
    final lOther$visibility = other.visibility;
    if (l$visibility != lOther$visibility) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$self$user$settings
    on Query$self$user$settings {
  Query$self$user$settings copyWith(
          {Query$self$user$settings$visibility? visibility,
          String? $__typename}) =>
      Query$self$user$settings(
          visibility: visibility == null ? this.visibility : visibility,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$self$user$settings$visibility
    implements Fragment$baseUser$settings$visibility {
  Query$self$user$settings$visibility(
      {required this.profile,
      required this.progress,
      required this.favourites,
      required this.$__typename});

  @override
  factory Query$self$user$settings$visibility.fromJson(
          Map<String, dynamic> json) =>
      _$Query$self$user$settings$visibilityFromJson(json);

  final bool profile;

  final bool progress;

  final bool favourites;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$self$user$settings$visibilityToJson(this);
  int get hashCode {
    final l$profile = profile;
    final l$progress = progress;
    final l$favourites = favourites;
    final l$$__typename = $__typename;
    return Object.hashAll([l$profile, l$progress, l$favourites, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$self$user$settings$visibility) ||
        runtimeType != other.runtimeType) return false;
    final l$profile = profile;
    final lOther$profile = other.profile;
    if (l$profile != lOther$profile) return false;
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) return false;
    final l$favourites = favourites;
    final lOther$favourites = other.favourites;
    if (l$favourites != lOther$favourites) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$self$user$settings$visibility
    on Query$self$user$settings$visibility {
  Query$self$user$settings$visibility copyWith(
          {bool? profile,
          bool? progress,
          bool? favourites,
          String? $__typename}) =>
      Query$self$user$settings$visibility(
          profile: profile == null ? this.profile : profile,
          progress: progress == null ? this.progress : progress,
          favourites: favourites == null ? this.favourites : favourites,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$self$user$accounts implements Fragment$baseAccount {
  Query$self$user$accounts(
      {required this.id,
      required this.provider,
      this.name,
      required this.$__typename});

  @override
  factory Query$self$user$accounts.fromJson(Map<String, dynamic> json) =>
      _$Query$self$user$accountsFromJson(json);

  final String id;

  final String provider;

  final String? name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$self$user$accountsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$provider = provider;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$provider, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$self$user$accounts) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$provider = provider;
    final lOther$provider = other.provider;
    if (l$provider != lOther$provider) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$self$user$accounts
    on Query$self$user$accounts {
  Query$self$user$accounts copyWith(
          {String? id,
          String? provider,
          String? Function()? name,
          String? $__typename}) =>
      Query$self$user$accounts(
          id: id == null ? this.id : id,
          provider: provider == null ? this.provider : provider,
          name: name == null ? this.name : name(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
