import 'package:pos/domain/mapper/branch_model_mapper.dart';
import 'package:pos/domain/mapper/group_model_mapper.dart';
import 'package:pos/domain/model/privilege_model.dart';
import 'package:pos/domain/model/user_model.dart';
import 'package:pos/infrastructure/model/branch.dart';
import 'package:pos/infrastructure/model/group.dart';
import 'package:pos/infrastructure/model/user_data.dart';

class UserModelMapper {
  UserModel toUserModel(
    UserData userData,
    Group group,
    List<PrivilegeModel> listPrivilegeModel,
    List<Branch> listBranch,
  ) {
    return UserModel(
      uid: userData.id,
      email: userData.email,
      username: userData.username,
      group: GroupModelMapper().toGroupModel(group, listPrivilegeModel),
      branch: BranchModelMapper().toBranchModel(
        listBranch.length > 0 ? listBranch[0] : Branch.empty(),
      ),
      listBranch: BranchModelMapper().toListBranchModel(listBranch),
    );
  }

  UserData toUserData(UserModel userModel) {
    return UserData(
      id: userModel.uid,
      username: userModel.username,
      groupId: userModel.group.id,
      email: userModel.email,
    );
  }
}
