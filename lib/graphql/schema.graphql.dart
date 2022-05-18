import 'package:json_annotation/json_annotation.dart';
part 'schema.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Input$PaginationInput {
  Input$PaginationInput({this.after, this.first, this.before, this.last});

  @override
  factory Input$PaginationInput.fromJson(Map<String, dynamic> json) =>
      _$Input$PaginationInputFromJson(json);

  final String? after;

  final int? first;

  final String? before;

  final int? last;

  Map<String, dynamic> toJson() => _$Input$PaginationInputToJson(this);
  int get hashCode {
    final l$after = after;
    final l$first = first;
    final l$before = before;
    final l$last = last;
    return Object.hashAll([l$after, l$first, l$before, l$last]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$PaginationInput) || runtimeType != other.runtimeType)
      return false;
    final l$after = after;
    final lOther$after = other.after;
    if (l$after != lOther$after) return false;
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) return false;
    final l$before = before;
    final lOther$before = other.before;
    if (l$before != lOther$before) return false;
    final l$last = last;
    final lOther$last = other.last;
    if (l$last != lOther$last) return false;
    return true;
  }
}

const possibleTypesMap = {};
