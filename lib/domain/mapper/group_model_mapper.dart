import 'package:pos/domain/model/group_model.dart';
import 'package:pos/domain/model/privilege_model.dart';
import 'package:pos/infrastructure/model/group.dart';

class GroupModelMapper {
  GroupModel toGroupModel(
    Group group,
    List<PrivilegeModel> listPrivilegeModel,
  ) {
    return GroupModel(
      id: group.id,
      groupName: group.groupName,
      listPrivilege: listPrivilegeModel,
    );
  }

  Group toGroup(GroupModel groupModel) {
    return Group(
      id: groupModel.id,
      groupName: groupModel.groupName,
    );
  }
}
