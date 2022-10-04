import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pos/domain/mapper/group_model_mapper.dart';
import 'package:pos/domain/mapper/privilege_model_mapper.dart';
import 'package:pos/domain/model/privilege_model.dart';
import 'package:pos/domain/model/group_model.dart';
import 'package:pos/domain/services/group/group_services.dart';
import 'package:pos/infrastructure/model/group.dart';
import 'package:pos/infrastructure/model/group_privileges.dart';
import 'package:pos/infrastructure/model/user_data.dart';
import 'package:pos/infrastructure/repository/group_privileges_repo.dart';
import 'package:pos/infrastructure/repository/group_repo.dart';
import 'package:pos/infrastructure/repository/user_repo.dart';

@LazySingleton(as: GroupServices)
class GroupServicesImp implements GroupServices {
  @override
  Future<Either<String, Unit>> addGroup(GroupModel groupModel) async {
    // Add Group
    final groupDocument = await GroupRepo().addGroup(
      GroupModelMapper().toGroup(groupModel),
    );
    if (groupDocument.isLeft())
      return left(groupDocument.fold((failure) => failure, (r) => null));

    // Add Group Privileges
    String groupId = groupDocument.fold((l) => null, (id) => id);
    for (PrivilegeModel privilegeModel in groupModel.listPrivilege) {
      await GroupPrivilegesRepo().addGroupPrivileges(
        PrivilegeModelMapper().toGroupPrivileges(privilegeModel, groupId),
      );
    }
    return right(unit);
  }

  @override
  Future<Either<String, Unit>> deleteGroup(String groupId) async {
    // Check Group in Users
    List<String> listGroupId = [];
    listGroupId.add(groupId);
    final getListUserData =
        await UserRepo().getListUserDataByGroup(listGroupId);
    if (getListUserData.isRight()) {
      List<UserData> listuserData = getListUserData.fold(
        (l) => null,
        (listUserData) => listUserData,
      );
      String usernames = "";
      for (UserData userData in listuserData) {
        usernames = userData.username + ", ";
      }
      return Left("This Group still in use in this users:" +
          usernames +
          "Please remove first.");
    }

    // Delete Group Privileges
    await GroupPrivilegesRepo().deleteGroupPrivilegesByGroupId(groupId);

    // Delete Group
    final deleteGroup = await GroupRepo().deleteGroup(groupId);
    if (deleteGroup.isLeft()) {
      return left(deleteGroup.fold(
        (failure) => failure,
        (r) => null,
      ));
    }
    return right(unit);
  }

  @override
  Future<Either<String, List<GroupModel>>> getAllGroup() async {
    List<GroupModel> listGroupModel = [];
    // Get All Group
    final getAllGroup = await GroupRepo().getAllGroup();
    if (getAllGroup.isLeft()) {
      return left(getAllGroup.fold((failure) => failure, (r) => null));
    }
    List<Group> listGroup = getAllGroup.fold(
      (l) => null,
      (listGroup) => listGroup,
    );

    for (Group group in listGroup) {
      final getAllGroupPrivileges =
          await GroupPrivilegesRepo().getListGroupPrivilegesByGroupId(group.id);
      List<PrivilegeModel> listPrivilegeModel = [];
      if (getAllGroupPrivileges.isRight()) {
        for (GroupPrivileges groupPrivileges
            in getAllGroupPrivileges.fold((l) => null, (data) => data)) {
          listPrivilegeModel
              .add(PrivilegeModelMapper().toPrivilegeModel(groupPrivileges));
        }
      }
      listGroupModel.add(
        GroupModelMapper().toGroupModel(
          group,
          listPrivilegeModel,
        ),
      );
    }
    return right(listGroupModel);
  }

  @override
  Future<Either<String, GroupModel>> getGroupByUid(String groupId) async {
    // Get Group
    final getGroup = await GroupRepo().getGroupById(groupId);
    if (getGroup.isLeft())
      return left(getGroup.fold(
        (failure) => failure,
        (r) => null,
      ));
    Group group = getGroup.fold((l) => Group.empty(), (data) => data);

    // Get Group Privileges
    final getGroupPrivileges =
        await GroupPrivilegesRepo().getListGroupPrivilegesByGroupId(group.id);
    List<PrivilegeModel> listPrivilegeModel = [];
    if (getGroupPrivileges.isRight()) {
      for (GroupPrivileges groupPrivileges
          in getGroupPrivileges.fold((l) => null, (data) => data)) {
        listPrivilegeModel
            .add(PrivilegeModelMapper().toPrivilegeModel(groupPrivileges));
      }
    }

    return right(
      GroupModelMapper().toGroupModel(group, listPrivilegeModel),
    );
  }

  @override
  Future<Either<String, Unit>> updateGroup(GroupModel groupModel) async {
    Group group = GroupModelMapper().toGroup(groupModel);
    // Update Group
    final updateGroup = await GroupRepo().updateGroup(group);
    if (updateGroup.isLeft())
      return left(updateGroup.fold(
        (failure) => failure,
        (r) => null,
      ));

    // Delete All Group Privilege
    await GroupPrivilegesRepo().deleteGroupPrivilegesByGroupId(group.id);

    // Add All Group Privilege
    for (PrivilegeModel privilegeModel in groupModel.listPrivilege) {
      await GroupPrivilegesRepo().addGroupPrivileges(
        PrivilegeModelMapper().toGroupPrivileges(
          privilegeModel,
          group.id,
        ),
      );
    }
    return right(unit);
  }
}
