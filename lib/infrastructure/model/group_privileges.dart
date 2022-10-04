import 'package:freezed_annotation/freezed_annotation.dart';
part 'group_privileges.freezed.dart';

@freezed
abstract class GroupPrivileges with _$GroupPrivileges {
  factory GroupPrivileges({
    String id,
    String groupId,
    String actionId,
    String menuName,
    int menuCode,
    String action,
  }) = _GroupPrivileges;

  factory GroupPrivileges.empty() => GroupPrivileges(
        id: "",
        groupId: "",
        actionId: "",
        menuName: "",
        menuCode: 0,
        action: "",
      );
}
