import 'package:pos/domain/model/privilege_model.dart';
import 'package:pos/infrastructure/model/group_privileges.dart';

class PrivilegeModelMapper {
  PrivilegeModel toPrivilegeModel(GroupPrivileges groupPrivileges) {
    return PrivilegeModel(
      id: groupPrivileges.id,
      actionId: groupPrivileges.actionId,
      menuName: groupPrivileges.menuName,
      menuCode: groupPrivileges.menuCode,
      action: groupPrivileges.action,
    );
  }

  GroupPrivileges toGroupPrivileges(
      PrivilegeModel privilegeModel, String groupId) {
    return GroupPrivileges(
      id: privilegeModel.id,
      groupId: groupId,
      actionId: privilegeModel.actionId,
      menuName: privilegeModel.menuName,
      menuCode: privilegeModel.menuCode,
      action: privilegeModel.action,
    );
  }
}
