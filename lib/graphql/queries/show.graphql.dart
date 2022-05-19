import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'show.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$baseShow {
  Fragment$baseShow(
      {required this.id,
      required this.name,
      required this.overview,
      this.image,
      this.thumbnail,
      this.year,
      required this.status,
      required this.$__typename});

  @override
  factory Fragment$baseShow.fromJson(Map<String, dynamic> json) =>
      _$Fragment$baseShowFromJson(json);

  final int id;

  final String name;

  final String overview;

  final String? image;

  final String? thumbnail;

  final String? year;

  final Fragment$baseShow$status status;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$baseShowToJson(this);
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
    if (!(other is Fragment$baseShow) || runtimeType != other.runtimeType)
      return false;
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

extension UtilityExtension$Fragment$baseShow on Fragment$baseShow {
  Fragment$baseShow copyWith(
          {int? id,
          String? name,
          String? overview,
          String? Function()? image,
          String? Function()? thumbnail,
          String? Function()? year,
          Fragment$baseShow$status? status,
          String? $__typename}) =>
      Fragment$baseShow(
          id: id == null ? this.id : id,
          name: name == null ? this.name : name,
          overview: overview == null ? this.overview : overview,
          image: image == null ? this.image : image(),
          thumbnail: thumbnail == null ? this.thumbnail : thumbnail(),
          year: year == null ? this.year : year(),
          status: status == null ? this.status : status,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const fragmentDefinitionbaseShow = FragmentDefinitionNode(
    name: NameNode(value: 'baseShow'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Show'), isNonNull: false)),
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
          name: NameNode(value: 'overview'),
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
          name: NameNode(value: 'thumbnail'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'year'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'status'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
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
          ])),
      FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const queryDocumentbaseShow = DocumentNode(definitions: [
  fragmentDefinitionbaseShow,
]);

extension ClientExtension$Fragment$baseShow on graphql.GraphQLClient {
  void writeFragment$baseShow(
          {required Fragment$baseShow data,
          required Map<String, dynamic> idFields,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'baseShow', document: queryDocumentbaseShow)),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$baseShow? readFragment$baseShow(
      {required Map<String, dynamic> idFields, bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'baseShow', document: queryDocumentbaseShow)),
        optimistic: optimistic);
    return result == null ? null : Fragment$baseShow.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Fragment$baseShow$status {
  Fragment$baseShow$status({required this.name, required this.$__typename});

  @override
  factory Fragment$baseShow$status.fromJson(Map<String, dynamic> json) =>
      _$Fragment$baseShow$statusFromJson(json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$baseShow$statusToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$baseShow$status) ||
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

extension UtilityExtension$Fragment$baseShow$status
    on Fragment$baseShow$status {
  Fragment$baseShow$status copyWith({String? name, String? $__typename}) =>
      Fragment$baseShow$status(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Fragment$baseEpisode {
  Fragment$baseEpisode(
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
  factory Fragment$baseEpisode.fromJson(Map<String, dynamic> json) =>
      _$Fragment$baseEpisodeFromJson(json);

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

  Map<String, dynamic> toJson() => _$Fragment$baseEpisodeToJson(this);
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
    if (!(other is Fragment$baseEpisode) || runtimeType != other.runtimeType)
      return false;
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

extension UtilityExtension$Fragment$baseEpisode on Fragment$baseEpisode {
  Fragment$baseEpisode copyWith(
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
      Fragment$baseEpisode(
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

const fragmentDefinitionbaseEpisode = FragmentDefinitionNode(
    name: NameNode(value: 'baseEpisode'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Episode'), isNonNull: false)),
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
          name: NameNode(value: 'aired'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'runtime'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'isMovie'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'number'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'seasonNumber'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'special'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'due'),
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
const queryDocumentbaseEpisode = DocumentNode(definitions: [
  fragmentDefinitionbaseEpisode,
]);

extension ClientExtension$Fragment$baseEpisode on graphql.GraphQLClient {
  void writeFragment$baseEpisode(
          {required Fragment$baseEpisode data,
          required Map<String, dynamic> idFields,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'baseEpisode',
                  document: queryDocumentbaseEpisode)),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$baseEpisode? readFragment$baseEpisode(
      {required Map<String, dynamic> idFields, bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'baseEpisode',
                document: queryDocumentbaseEpisode)),
        optimistic: optimistic);
    return result == null ? null : Fragment$baseEpisode.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Fragment$baseSeason {
  Fragment$baseSeason(
      {required this.id,
      this.name,
      required this.number,
      required this.type,
      required this.$__typename});

  @override
  factory Fragment$baseSeason.fromJson(Map<String, dynamic> json) =>
      _$Fragment$baseSeasonFromJson(json);

  final int id;

  final String? name;

  final int number;

  final Fragment$baseSeason$type type;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$baseSeasonToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$number = number;
    final l$type = type;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$number, l$type, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$baseSeason) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$number = number;
    final lOther$number = other.number;
    if (l$number != lOther$number) return false;
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$baseSeason on Fragment$baseSeason {
  Fragment$baseSeason copyWith(
          {int? id,
          String? Function()? name,
          int? number,
          Fragment$baseSeason$type? type,
          String? $__typename}) =>
      Fragment$baseSeason(
          id: id == null ? this.id : id,
          name: name == null ? this.name : name(),
          number: number == null ? this.number : number,
          type: type == null ? this.type : type,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const fragmentDefinitionbaseSeason = FragmentDefinitionNode(
    name: NameNode(value: 'baseSeason'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Season'), isNonNull: false)),
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
          name: NameNode(value: 'number'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'type'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
                name: NameNode(value: 'type'),
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
          ])),
      FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const queryDocumentbaseSeason = DocumentNode(definitions: [
  fragmentDefinitionbaseSeason,
]);

extension ClientExtension$Fragment$baseSeason on graphql.GraphQLClient {
  void writeFragment$baseSeason(
          {required Fragment$baseSeason data,
          required Map<String, dynamic> idFields,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'baseSeason',
                  document: queryDocumentbaseSeason)),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$baseSeason? readFragment$baseSeason(
      {required Map<String, dynamic> idFields, bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'baseSeason', document: queryDocumentbaseSeason)),
        optimistic: optimistic);
    return result == null ? null : Fragment$baseSeason.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Fragment$baseSeason$type {
  Fragment$baseSeason$type(
      {required this.type, required this.name, required this.$__typename});

  @override
  factory Fragment$baseSeason$type.fromJson(Map<String, dynamic> json) =>
      _$Fragment$baseSeason$typeFromJson(json);

  final String type;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$baseSeason$typeToJson(this);
  int get hashCode {
    final l$type = type;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$type, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$baseSeason$type) ||
        runtimeType != other.runtimeType) return false;
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$baseSeason$type
    on Fragment$baseSeason$type {
  Fragment$baseSeason$type copyWith(
          {String? type, String? name, String? $__typename}) =>
      Fragment$baseSeason$type(
          type: type == null ? this.type : type,
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Fragment$withEpisodes {
  Fragment$withEpisodes({required this.episodes, required this.$__typename});

  @override
  factory Fragment$withEpisodes.fromJson(Map<String, dynamic> json) =>
      _$Fragment$withEpisodesFromJson(json);

  final List<Fragment$withEpisodes$episodes> episodes;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$withEpisodesToJson(this);
  int get hashCode {
    final l$episodes = episodes;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [Object.hashAll(l$episodes.map((v) => v)), l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$withEpisodes) || runtimeType != other.runtimeType)
      return false;
    final l$episodes = episodes;
    final lOther$episodes = other.episodes;
    if (l$episodes.length != lOther$episodes.length) return false;
    for (int i = 0; i < l$episodes.length; i++) {
      final l$episodes$entry = l$episodes[i];
      final lOther$episodes$entry = lOther$episodes[i];
      if (l$episodes$entry != lOther$episodes$entry) return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$withEpisodes on Fragment$withEpisodes {
  Fragment$withEpisodes copyWith(
          {List<Fragment$withEpisodes$episodes>? episodes,
          String? $__typename}) =>
      Fragment$withEpisodes(
          episodes: episodes == null ? this.episodes : episodes,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const fragmentDefinitionwithEpisodes = FragmentDefinitionNode(
    name: NameNode(value: 'withEpisodes'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Show'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'episodes'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(
                name: NameNode(value: 'baseEpisode'), directives: []),
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
const queryDocumentwithEpisodes = DocumentNode(definitions: [
  fragmentDefinitionwithEpisodes,
  fragmentDefinitionbaseEpisode,
]);

extension ClientExtension$Fragment$withEpisodes on graphql.GraphQLClient {
  void writeFragment$withEpisodes(
          {required Fragment$withEpisodes data,
          required Map<String, dynamic> idFields,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'withEpisodes',
                  document: queryDocumentwithEpisodes)),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$withEpisodes? readFragment$withEpisodes(
      {required Map<String, dynamic> idFields, bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'withEpisodes',
                document: queryDocumentwithEpisodes)),
        optimistic: optimistic);
    return result == null ? null : Fragment$withEpisodes.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Fragment$withEpisodes$episodes implements Fragment$baseEpisode {
  Fragment$withEpisodes$episodes(
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
  factory Fragment$withEpisodes$episodes.fromJson(Map<String, dynamic> json) =>
      _$Fragment$withEpisodes$episodesFromJson(json);

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

  Map<String, dynamic> toJson() => _$Fragment$withEpisodes$episodesToJson(this);
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
    if (!(other is Fragment$withEpisodes$episodes) ||
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

extension UtilityExtension$Fragment$withEpisodes$episodes
    on Fragment$withEpisodes$episodes {
  Fragment$withEpisodes$episodes copyWith(
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
      Fragment$withEpisodes$episodes(
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
class Fragment$withSeasons implements Fragment$baseShow {
  Fragment$withSeasons(
      {required this.id,
      required this.name,
      required this.overview,
      this.image,
      this.thumbnail,
      this.year,
      required this.status,
      required this.$__typename,
      required this.seasons});

  @override
  factory Fragment$withSeasons.fromJson(Map<String, dynamic> json) =>
      _$Fragment$withSeasonsFromJson(json);

  final int id;

  final String name;

  final String overview;

  final String? image;

  final String? thumbnail;

  final String? year;

  final Fragment$withSeasons$status status;

  @JsonKey(name: '__typename')
  final String $__typename;

  final List<Fragment$withSeasons$seasons> seasons;

  Map<String, dynamic> toJson() => _$Fragment$withSeasonsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$overview = overview;
    final l$image = image;
    final l$thumbnail = thumbnail;
    final l$year = year;
    final l$status = status;
    final l$$__typename = $__typename;
    final l$seasons = seasons;
    return Object.hashAll([
      l$id,
      l$name,
      l$overview,
      l$image,
      l$thumbnail,
      l$year,
      l$status,
      l$$__typename,
      Object.hashAll(l$seasons.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$withSeasons) || runtimeType != other.runtimeType)
      return false;
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
    final l$seasons = seasons;
    final lOther$seasons = other.seasons;
    if (l$seasons.length != lOther$seasons.length) return false;
    for (int i = 0; i < l$seasons.length; i++) {
      final l$seasons$entry = l$seasons[i];
      final lOther$seasons$entry = lOther$seasons[i];
      if (l$seasons$entry != lOther$seasons$entry) return false;
    }

    return true;
  }
}

extension UtilityExtension$Fragment$withSeasons on Fragment$withSeasons {
  Fragment$withSeasons copyWith(
          {int? id,
          String? name,
          String? overview,
          String? Function()? image,
          String? Function()? thumbnail,
          String? Function()? year,
          Fragment$withSeasons$status? status,
          String? $__typename,
          List<Fragment$withSeasons$seasons>? seasons}) =>
      Fragment$withSeasons(
          id: id == null ? this.id : id,
          name: name == null ? this.name : name,
          overview: overview == null ? this.overview : overview,
          image: image == null ? this.image : image(),
          thumbnail: thumbnail == null ? this.thumbnail : thumbnail(),
          year: year == null ? this.year : year(),
          status: status == null ? this.status : status,
          $__typename: $__typename == null ? this.$__typename : $__typename,
          seasons: seasons == null ? this.seasons : seasons);
}

const fragmentDefinitionwithSeasons = FragmentDefinitionNode(
    name: NameNode(value: 'withSeasons'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Show'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FragmentSpreadNode(name: NameNode(value: 'baseShow'), directives: []),
      FieldNode(
          name: NameNode(value: 'seasons'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(
                name: NameNode(value: 'baseSeason'), directives: []),
            FieldNode(
                name: NameNode(value: 'episodes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                      name: NameNode(value: 'baseEpisode'), directives: []),
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
const queryDocumentwithSeasons = DocumentNode(definitions: [
  fragmentDefinitionwithSeasons,
  fragmentDefinitionbaseShow,
  fragmentDefinitionbaseSeason,
  fragmentDefinitionbaseEpisode,
]);

extension ClientExtension$Fragment$withSeasons on graphql.GraphQLClient {
  void writeFragment$withSeasons(
          {required Fragment$withSeasons data,
          required Map<String, dynamic> idFields,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'withSeasons',
                  document: queryDocumentwithSeasons)),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$withSeasons? readFragment$withSeasons(
      {required Map<String, dynamic> idFields, bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'withSeasons',
                document: queryDocumentwithSeasons)),
        optimistic: optimistic);
    return result == null ? null : Fragment$withSeasons.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Fragment$withSeasons$status implements Fragment$baseShow$status {
  Fragment$withSeasons$status({required this.name, required this.$__typename});

  @override
  factory Fragment$withSeasons$status.fromJson(Map<String, dynamic> json) =>
      _$Fragment$withSeasons$statusFromJson(json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$withSeasons$statusToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$withSeasons$status) ||
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

extension UtilityExtension$Fragment$withSeasons$status
    on Fragment$withSeasons$status {
  Fragment$withSeasons$status copyWith({String? name, String? $__typename}) =>
      Fragment$withSeasons$status(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Fragment$withSeasons$seasons implements Fragment$baseSeason {
  Fragment$withSeasons$seasons(
      {required this.id,
      this.name,
      required this.number,
      required this.type,
      required this.$__typename,
      required this.episodes});

  @override
  factory Fragment$withSeasons$seasons.fromJson(Map<String, dynamic> json) =>
      _$Fragment$withSeasons$seasonsFromJson(json);

  final int id;

  final String? name;

  final int number;

  final Fragment$withSeasons$seasons$type type;

  @JsonKey(name: '__typename')
  final String $__typename;

  final List<Fragment$withSeasons$seasons$episodes> episodes;

  Map<String, dynamic> toJson() => _$Fragment$withSeasons$seasonsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$number = number;
    final l$type = type;
    final l$$__typename = $__typename;
    final l$episodes = episodes;
    return Object.hashAll([
      l$id,
      l$name,
      l$number,
      l$type,
      l$$__typename,
      Object.hashAll(l$episodes.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$withSeasons$seasons) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$number = number;
    final lOther$number = other.number;
    if (l$number != lOther$number) return false;
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) return false;
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

extension UtilityExtension$Fragment$withSeasons$seasons
    on Fragment$withSeasons$seasons {
  Fragment$withSeasons$seasons copyWith(
          {int? id,
          String? Function()? name,
          int? number,
          Fragment$withSeasons$seasons$type? type,
          String? $__typename,
          List<Fragment$withSeasons$seasons$episodes>? episodes}) =>
      Fragment$withSeasons$seasons(
          id: id == null ? this.id : id,
          name: name == null ? this.name : name(),
          number: number == null ? this.number : number,
          type: type == null ? this.type : type,
          $__typename: $__typename == null ? this.$__typename : $__typename,
          episodes: episodes == null ? this.episodes : episodes);
}

@JsonSerializable(explicitToJson: true)
class Fragment$withSeasons$seasons$type implements Fragment$baseSeason$type {
  Fragment$withSeasons$seasons$type(
      {required this.type, required this.name, required this.$__typename});

  @override
  factory Fragment$withSeasons$seasons$type.fromJson(
          Map<String, dynamic> json) =>
      _$Fragment$withSeasons$seasons$typeFromJson(json);

  final String type;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Fragment$withSeasons$seasons$typeToJson(this);
  int get hashCode {
    final l$type = type;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$type, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$withSeasons$seasons$type) ||
        runtimeType != other.runtimeType) return false;
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$withSeasons$seasons$type
    on Fragment$withSeasons$seasons$type {
  Fragment$withSeasons$seasons$type copyWith(
          {String? type, String? name, String? $__typename}) =>
      Fragment$withSeasons$seasons$type(
          type: type == null ? this.type : type,
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Fragment$withSeasons$seasons$episodes implements Fragment$baseEpisode {
  Fragment$withSeasons$seasons$episodes(
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
  factory Fragment$withSeasons$seasons$episodes.fromJson(
          Map<String, dynamic> json) =>
      _$Fragment$withSeasons$seasons$episodesFromJson(json);

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
      _$Fragment$withSeasons$seasons$episodesToJson(this);
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
    if (!(other is Fragment$withSeasons$seasons$episodes) ||
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

extension UtilityExtension$Fragment$withSeasons$seasons$episodes
    on Fragment$withSeasons$seasons$episodes {
  Fragment$withSeasons$seasons$episodes copyWith(
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
      Fragment$withSeasons$seasons$episodes(
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
class Variables$Query$show {
  Variables$Query$show({required this.id});

  @override
  factory Variables$Query$show.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$showFromJson(json);

  final int id;

  Map<String, dynamic> toJson() => _$Variables$Query$showToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$show) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class Query$show {
  Query$show({required this.$show, required this.$__typename});

  @override
  factory Query$show.fromJson(Map<String, dynamic> json) =>
      _$Query$showFromJson(json);

  @JsonKey(name: 'show')
  final Query$show$show $show;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$showToJson(this);
  int get hashCode {
    final l$$show = $show;
    final l$$__typename = $__typename;
    return Object.hashAll([l$$show, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$show) || runtimeType != other.runtimeType)
      return false;
    final l$$show = $show;
    final lOther$$show = other.$show;
    if (l$$show != lOther$$show) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$show on Query$show {
  Query$show copyWith({Query$show$show? $show, String? $__typename}) =>
      Query$show(
          $show: $show == null ? this.$show : $show,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const queryDocumentshow = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'show'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type:
                NamedTypeNode(name: NameNode(value: 'ApiID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'getShow'),
            alias: NameNode(value: 'show'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'withSeasons'), directives: []),
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
  fragmentDefinitionwithSeasons,
  fragmentDefinitionbaseShow,
  fragmentDefinitionbaseSeason,
  fragmentDefinitionbaseEpisode,
]);
Query$show _parserFn$Query$show(Map<String, dynamic> data) =>
    Query$show.fromJson(data);

class Options$Query$show extends graphql.QueryOptions<Query$show> {
  Options$Query$show(
      {String? operationName,
      required Variables$Query$show variables,
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
            document: queryDocumentshow,
            parserFn: _parserFn$Query$show);
}

class WatchOptions$Query$show extends graphql.WatchQueryOptions<Query$show> {
  WatchOptions$Query$show(
      {String? operationName,
      required Variables$Query$show variables,
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
            document: queryDocumentshow,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$show);
}

class FetchMoreOptions$Query$show extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$show(
      {required graphql.UpdateQuery updateQuery,
      required Variables$Query$show variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: queryDocumentshow);
}

extension ClientExtension$Query$show on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$show>> query$show(
          Options$Query$show options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$show> watchQuery$show(
          WatchOptions$Query$show options) =>
      this.watchQuery(options);
  void writeQuery$show(
          {required Query$show data,
          required Variables$Query$show variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: queryDocumentshow),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  Query$show? readQuery$show(
      {required Variables$Query$show variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: queryDocumentshow),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : Query$show.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$show> useQuery$show(
        Options$Query$show options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$show> useWatchQuery$show(
        WatchOptions$Query$show options) =>
    graphql_flutter.useWatchQuery(options);

class Query$show$Widget extends graphql_flutter.Query<Query$show> {
  Query$show$Widget(
      {widgets.Key? key,
      required Options$Query$show options,
      required graphql_flutter.QueryBuilder<Query$show> builder})
      : super(key: key, options: options, builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$show$show implements Fragment$withSeasons, Fragment$baseShow {
  Query$show$show(
      {required this.id,
      required this.name,
      required this.overview,
      this.image,
      this.thumbnail,
      this.year,
      required this.status,
      required this.$__typename,
      required this.seasons});

  @override
  factory Query$show$show.fromJson(Map<String, dynamic> json) =>
      _$Query$show$showFromJson(json);

  final int id;

  final String name;

  final String overview;

  final String? image;

  final String? thumbnail;

  final String? year;

  final Query$show$show$status status;

  @JsonKey(name: '__typename')
  final String $__typename;

  final List<Query$show$show$seasons> seasons;

  Map<String, dynamic> toJson() => _$Query$show$showToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$overview = overview;
    final l$image = image;
    final l$thumbnail = thumbnail;
    final l$year = year;
    final l$status = status;
    final l$$__typename = $__typename;
    final l$seasons = seasons;
    return Object.hashAll([
      l$id,
      l$name,
      l$overview,
      l$image,
      l$thumbnail,
      l$year,
      l$status,
      l$$__typename,
      Object.hashAll(l$seasons.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$show$show) || runtimeType != other.runtimeType)
      return false;
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
    final l$seasons = seasons;
    final lOther$seasons = other.seasons;
    if (l$seasons.length != lOther$seasons.length) return false;
    for (int i = 0; i < l$seasons.length; i++) {
      final l$seasons$entry = l$seasons[i];
      final lOther$seasons$entry = lOther$seasons[i];
      if (l$seasons$entry != lOther$seasons$entry) return false;
    }

    return true;
  }
}

extension UtilityExtension$Query$show$show on Query$show$show {
  Query$show$show copyWith(
          {int? id,
          String? name,
          String? overview,
          String? Function()? image,
          String? Function()? thumbnail,
          String? Function()? year,
          Query$show$show$status? status,
          String? $__typename,
          List<Query$show$show$seasons>? seasons}) =>
      Query$show$show(
          id: id == null ? this.id : id,
          name: name == null ? this.name : name,
          overview: overview == null ? this.overview : overview,
          image: image == null ? this.image : image(),
          thumbnail: thumbnail == null ? this.thumbnail : thumbnail(),
          year: year == null ? this.year : year(),
          status: status == null ? this.status : status,
          $__typename: $__typename == null ? this.$__typename : $__typename,
          seasons: seasons == null ? this.seasons : seasons);
}

@JsonSerializable(explicitToJson: true)
class Query$show$show$status
    implements Fragment$withSeasons$status, Fragment$baseShow$status {
  Query$show$show$status({required this.name, required this.$__typename});

  @override
  factory Query$show$show$status.fromJson(Map<String, dynamic> json) =>
      _$Query$show$show$statusFromJson(json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$show$show$statusToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$show$show$status) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$show$show$status on Query$show$show$status {
  Query$show$show$status copyWith({String? name, String? $__typename}) =>
      Query$show$show$status(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$show$show$seasons
    implements Fragment$withSeasons$seasons, Fragment$baseSeason {
  Query$show$show$seasons(
      {required this.id,
      this.name,
      required this.number,
      required this.type,
      required this.$__typename,
      required this.episodes});

  @override
  factory Query$show$show$seasons.fromJson(Map<String, dynamic> json) =>
      _$Query$show$show$seasonsFromJson(json);

  final int id;

  final String? name;

  final int number;

  final Query$show$show$seasons$type type;

  @JsonKey(name: '__typename')
  final String $__typename;

  final List<Query$show$show$seasons$episodes> episodes;

  Map<String, dynamic> toJson() => _$Query$show$show$seasonsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$number = number;
    final l$type = type;
    final l$$__typename = $__typename;
    final l$episodes = episodes;
    return Object.hashAll([
      l$id,
      l$name,
      l$number,
      l$type,
      l$$__typename,
      Object.hashAll(l$episodes.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$show$show$seasons) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$number = number;
    final lOther$number = other.number;
    if (l$number != lOther$number) return false;
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) return false;
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

extension UtilityExtension$Query$show$show$seasons on Query$show$show$seasons {
  Query$show$show$seasons copyWith(
          {int? id,
          String? Function()? name,
          int? number,
          Query$show$show$seasons$type? type,
          String? $__typename,
          List<Query$show$show$seasons$episodes>? episodes}) =>
      Query$show$show$seasons(
          id: id == null ? this.id : id,
          name: name == null ? this.name : name(),
          number: number == null ? this.number : number,
          type: type == null ? this.type : type,
          $__typename: $__typename == null ? this.$__typename : $__typename,
          episodes: episodes == null ? this.episodes : episodes);
}

@JsonSerializable(explicitToJson: true)
class Query$show$show$seasons$type
    implements Fragment$withSeasons$seasons$type, Fragment$baseSeason$type {
  Query$show$show$seasons$type(
      {required this.type, required this.name, required this.$__typename});

  @override
  factory Query$show$show$seasons$type.fromJson(Map<String, dynamic> json) =>
      _$Query$show$show$seasons$typeFromJson(json);

  final String type;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$show$show$seasons$typeToJson(this);
  int get hashCode {
    final l$type = type;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$type, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$show$show$seasons$type) ||
        runtimeType != other.runtimeType) return false;
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$show$show$seasons$type
    on Query$show$show$seasons$type {
  Query$show$show$seasons$type copyWith(
          {String? type, String? name, String? $__typename}) =>
      Query$show$show$seasons$type(
          type: type == null ? this.type : type,
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$show$show$seasons$episodes
    implements Fragment$withSeasons$seasons$episodes, Fragment$baseEpisode {
  Query$show$show$seasons$episodes(
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
  factory Query$show$show$seasons$episodes.fromJson(
          Map<String, dynamic> json) =>
      _$Query$show$show$seasons$episodesFromJson(json);

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
      _$Query$show$show$seasons$episodesToJson(this);
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
    if (!(other is Query$show$show$seasons$episodes) ||
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

extension UtilityExtension$Query$show$show$seasons$episodes
    on Query$show$show$seasons$episodes {
  Query$show$show$seasons$episodes copyWith(
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
      Query$show$show$seasons$episodes(
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
class Variables$Query$search {
  Variables$Query$search({required this.by});

  @override
  factory Variables$Query$search.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$searchFromJson(json);

  final String by;

  Map<String, dynamic> toJson() => _$Variables$Query$searchToJson(this);
  int get hashCode {
    final l$by = by;
    return Object.hashAll([l$by]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$search) || runtimeType != other.runtimeType)
      return false;
    final l$by = by;
    final lOther$by = other.by;
    if (l$by != lOther$by) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class Query$search {
  Query$search({required this.results, required this.$__typename});

  @override
  factory Query$search.fromJson(Map<String, dynamic> json) =>
      _$Query$searchFromJson(json);

  final List<Query$search$results> results;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$searchToJson(this);
  int get hashCode {
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [Object.hashAll(l$results.map((v) => v)), l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$search) || runtimeType != other.runtimeType)
      return false;
    final l$results = results;
    final lOther$results = other.results;
    if (l$results.length != lOther$results.length) return false;
    for (int i = 0; i < l$results.length; i++) {
      final l$results$entry = l$results[i];
      final lOther$results$entry = lOther$results[i];
      if (l$results$entry != lOther$results$entry) return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$search on Query$search {
  Query$search copyWith(
          {List<Query$search$results>? results, String? $__typename}) =>
      Query$search(
          results: results == null ? this.results : results,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const queryDocumentsearch = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'search'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'by')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'searchShows'),
            alias: NameNode(value: 'results'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'by'),
                  value: VariableNode(name: NameNode(value: 'by')))
            ],
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
      ])),
  fragmentDefinitionbaseShow,
]);
Query$search _parserFn$Query$search(Map<String, dynamic> data) =>
    Query$search.fromJson(data);

class Options$Query$search extends graphql.QueryOptions<Query$search> {
  Options$Query$search(
      {String? operationName,
      required Variables$Query$search variables,
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
            document: queryDocumentsearch,
            parserFn: _parserFn$Query$search);
}

class WatchOptions$Query$search
    extends graphql.WatchQueryOptions<Query$search> {
  WatchOptions$Query$search(
      {String? operationName,
      required Variables$Query$search variables,
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
            document: queryDocumentsearch,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$search);
}

class FetchMoreOptions$Query$search extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$search(
      {required graphql.UpdateQuery updateQuery,
      required Variables$Query$search variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: queryDocumentsearch);
}

extension ClientExtension$Query$search on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$search>> query$search(
          Options$Query$search options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$search> watchQuery$search(
          WatchOptions$Query$search options) =>
      this.watchQuery(options);
  void writeQuery$search(
          {required Query$search data,
          required Variables$Query$search variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: queryDocumentsearch),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  Query$search? readQuery$search(
      {required Variables$Query$search variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: queryDocumentsearch),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : Query$search.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$search> useQuery$search(
        Options$Query$search options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$search> useWatchQuery$search(
        WatchOptions$Query$search options) =>
    graphql_flutter.useWatchQuery(options);

class Query$search$Widget extends graphql_flutter.Query<Query$search> {
  Query$search$Widget(
      {widgets.Key? key,
      required Options$Query$search options,
      required graphql_flutter.QueryBuilder<Query$search> builder})
      : super(key: key, options: options, builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$search$results implements Fragment$baseShow {
  Query$search$results(
      {required this.id,
      required this.name,
      required this.overview,
      this.image,
      this.thumbnail,
      this.year,
      required this.status,
      required this.$__typename});

  @override
  factory Query$search$results.fromJson(Map<String, dynamic> json) =>
      _$Query$search$resultsFromJson(json);

  final int id;

  final String name;

  final String overview;

  final String? image;

  final String? thumbnail;

  final String? year;

  final Query$search$results$status status;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$search$resultsToJson(this);
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
    if (!(other is Query$search$results) || runtimeType != other.runtimeType)
      return false;
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

extension UtilityExtension$Query$search$results on Query$search$results {
  Query$search$results copyWith(
          {int? id,
          String? name,
          String? overview,
          String? Function()? image,
          String? Function()? thumbnail,
          String? Function()? year,
          Query$search$results$status? status,
          String? $__typename}) =>
      Query$search$results(
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
class Query$search$results$status implements Fragment$baseShow$status {
  Query$search$results$status({required this.name, required this.$__typename});

  @override
  factory Query$search$results$status.fromJson(Map<String, dynamic> json) =>
      _$Query$search$results$statusFromJson(json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$search$results$statusToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$search$results$status) ||
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

extension UtilityExtension$Query$search$results$status
    on Query$search$results$status {
  Query$search$results$status copyWith({String? name, String? $__typename}) =>
      Query$search$results$status(
          name: name == null ? this.name : name,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
