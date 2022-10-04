import 'package:freezed_annotation/freezed_annotation.dart';
part 'group.freezed.dart';

@freezed
abstract class Group with _$Group {
  factory Group({
    String id,
    String groupName,
  }) = _Group;

  factory Group.empty() => Group(
        id: "",
        groupName: "",
      );
}
