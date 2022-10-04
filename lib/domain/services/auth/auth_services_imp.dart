import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:pos/domain/mapper/privilege_model_mapper.dart';
import 'package:pos/domain/mapper/user_model_mapper.dart';
import 'package:pos/domain/model/privilege_model.dart';
import 'package:pos/domain/model/user_model.dart';
import 'package:pos/domain/services/auth/auth_services.dart';
import 'package:pos/infrastructure/model/branch.dart';
import 'package:pos/infrastructure/model/group.dart';
import 'package:pos/infrastructure/model/group_privileges.dart';
import 'package:pos/infrastructure/model/user_branches.dart';
import 'package:pos/infrastructure/model/user_data.dart';
import 'package:pos/infrastructure/repository/auth_repo.dart';
import 'package:pos/infrastructure/repository/branch_repo.dart';
import 'package:pos/infrastructure/repository/group_privileges_repo.dart';
import 'package:pos/infrastructure/repository/group_repo.dart';
import 'package:pos/infrastructure/repository/user_branches_repo.dart';
import 'package:pos/infrastructure/repository/user_repo.dart';

@LazySingleton(as: AuthServices)
class AuthServiceImp implements AuthServices {
  @override
  Future<Either<String, Unit>> checkAuth() async {
    FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    final getCurrentUser = await AuthRepo(_firebaseAuth).getCurrentUser();
    return (getCurrentUser.isLeft())
        ? getCurrentUser.fold((failure) => left(failure), (r) => null)
        : getCurrentUser.fold((l) => null, (r) => right(unit));
  }

  @override
  Future<Either<String, UserModel>> getUserData() async {
    FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    // Get Current User
    final getCurrentUser = await AuthRepo(_firebaseAuth).getCurrentUser();
    if (getCurrentUser.isLeft())
      return left(getCurrentUser.fold((failure) => failure, (r) => null));
    User firebaseUser = getCurrentUser.fold((l) => null, (data) => data);
    if (firebaseUser == null) return left("User Not Found");

    // Get User
    final getUser = await UserRepo().getUserById(firebaseUser.uid);
    if (getUser.isLeft())
      return left(getUser.fold((failure) => failure, (r) => null));
    UserData userData = getUser.fold((l) => null, (data) => data);

    // Get Group
    final getGroup = await GroupRepo().getGroupById(userData.groupId);
    if (getGroup.isLeft())
      return left(getGroup.fold((failure) => failure, (r) => null));
    Group group = getGroup.fold((l) => null, (data) => data);

    // Get Privilege(s)
    List<PrivilegeModel> listPrivilegeModel = [];
    final getPrivileges = await GroupPrivilegesRepo()
        .getListGroupPrivilegesByGroupId(userData.groupId);
    if (getPrivileges.isLeft())
      return left(getPrivileges.fold((failure) => failure, (r) => null));
    List<GroupPrivileges> listGroupPrivileges =
        getPrivileges.fold((l) => null, (data) => data);
    for (GroupPrivileges groupPrivileges in listGroupPrivileges) {
      listPrivilegeModel.add(
        PrivilegeModelMapper().toPrivilegeModel(groupPrivileges),
      );
    }

    // Get User Branches
    List<String> listUserId = [];
    listUserId.add(userData.id);
    final getUserBranches =
        await UserBranchesRepo().getListUserBranchesByUserId(listUserId);
    if (getUserBranches.isLeft())
      return left(getUserBranches.fold((failure) => failure, (r) => null));
    List<UserBranches> listUserBranches =
        getUserBranches.fold((l) => null, (data) => data);

    // Get Branch(es)
    List<Branch> listBranch = [];
    for (UserBranches userBranches in listUserBranches) {
      final getBranches =
          await BranchRepo().getbranchById(userBranches.branchId);
      if (!getBranches.isLeft())
        listBranch.add(getBranches.fold((l) => null, (data) => data));
    }
    // Mapping to User Model
    return right(UserModelMapper().toUserModel(
      userData,
      group,
      listPrivilegeModel,
      listBranch,
    ));
  }

  @override
  Future<Either<String, Unit>> signIn(String email, String password) async {
    FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    final signIn = await AuthRepo(_firebaseAuth).signIn(email, password);
    return (signIn.isLeft())
        ? signIn.fold((failure) => left(failure), (r) => null)
        : signIn.fold((l) => null, (r) => right(unit));
  }

  @override
  Future<Either<String, Unit>> signOut() async {
    FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    final signOut = await AuthRepo(_firebaseAuth).signOut();
    return (signOut.isLeft())
        ? signOut.fold((failure) => left(failure), (r) => null)
        : signOut.fold((l) => null, (r) => right(unit));
  }
}
