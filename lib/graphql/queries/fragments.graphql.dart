import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'fragments.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$Forwards {
  Fragment$Forwards(
      {required this.hasNextPage, this.endCursor, required this.$__typename});

  @override
  factory Fragment$Forwards.fromJson(Map<String, dynamic> json) =>
      _$Fragment$ForwardsFromJson(json);

  final bool hasNextPage;

  final String? endCursor;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$ForwardsToJson(this);
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([l$hasNextPage, l$endCursor, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$Forwards) || runtimeType != other.runtimeType)
      return false;
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

extension UtilityExtension$Fragment$Forwards on Fragment$Forwards {
  Fragment$Forwards copyWith(
          {bool? hasNextPage,
          String? Function()? endCursor,
          String? $__typename}) =>
      Fragment$Forwards(
          hasNextPage: hasNextPage == null ? this.hasNextPage : hasNextPage,
          endCursor: endCursor == null ? this.endCursor : endCursor(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const fragmentDefinitionForwards = FragmentDefinitionNode(
    name: NameNode(value: 'Forwards'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'PageInfo'), isNonNull: false)),
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
    ]));
const queryDocumentForwards = DocumentNode(definitions: [
  fragmentDefinitionForwards,
]);

extension ClientExtension$Fragment$Forwards on graphql.GraphQLClient {
  void writeFragment$Forwards(
          {required Fragment$Forwards data,
          required Map<String, dynamic> idFields,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'Forwards', document: queryDocumentForwards)),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$Forwards? readFragment$Forwards(
      {required Map<String, dynamic> idFields, bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'Forwards', document: queryDocumentForwards)),
        optimistic: optimistic);
    return result == null ? null : Fragment$Forwards.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Fragment$Backwards {
  Fragment$Backwards(
      {required this.hasPreviousPage,
      this.startCursor,
      required this.$__typename});

  @override
  factory Fragment$Backwards.fromJson(Map<String, dynamic> json) =>
      _$Fragment$BackwardsFromJson(json);

  final bool hasPreviousPage;

  final String? startCursor;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$BackwardsToJson(this);
  int get hashCode {
    final l$hasPreviousPage = hasPreviousPage;
    final l$startCursor = startCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([l$hasPreviousPage, l$startCursor, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$Backwards) || runtimeType != other.runtimeType)
      return false;
    final l$hasPreviousPage = hasPreviousPage;
    final lOther$hasPreviousPage = other.hasPreviousPage;
    if (l$hasPreviousPage != lOther$hasPreviousPage) return false;
    final l$startCursor = startCursor;
    final lOther$startCursor = other.startCursor;
    if (l$startCursor != lOther$startCursor) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$Backwards on Fragment$Backwards {
  Fragment$Backwards copyWith(
          {bool? hasPreviousPage,
          String? Function()? startCursor,
          String? $__typename}) =>
      Fragment$Backwards(
          hasPreviousPage:
              hasPreviousPage == null ? this.hasPreviousPage : hasPreviousPage,
          startCursor: startCursor == null ? this.startCursor : startCursor(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const fragmentDefinitionBackwards = FragmentDefinitionNode(
    name: NameNode(value: 'Backwards'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'PageInfo'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'hasPreviousPage'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'startCursor'),
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
const queryDocumentBackwards = DocumentNode(definitions: [
  fragmentDefinitionBackwards,
]);

extension ClientExtension$Fragment$Backwards on graphql.GraphQLClient {
  void writeFragment$Backwards(
          {required Fragment$Backwards data,
          required Map<String, dynamic> idFields,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'Backwards', document: queryDocumentBackwards)),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$Backwards? readFragment$Backwards(
      {required Map<String, dynamic> idFields, bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'Backwards', document: queryDocumentBackwards)),
        optimistic: optimistic);
    return result == null ? null : Fragment$Backwards.fromJson(result);
  }
}
