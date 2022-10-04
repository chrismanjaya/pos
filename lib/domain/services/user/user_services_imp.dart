import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';
import 'package:pos/domain/mapper/user_model_mapper.dart';
import 'package:pos/domain/model/branch_model.dart';
import 'package:pos/domain/model/user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:pos/domain/services/user/user_services.dart';
import 'package:pos/infrastructure/model/branch.dart';
import 'package:pos/infrastructure/model/group.dart';
import 'package:pos/infrastructure/model/user_branches.dart';
import 'package:pos/infrastructure/model/user_data.dart';
import 'package:pos/infrastructure/repository/auth_repo.dart';
import 'package:pos/infrastructure/repository/branch_repo.dart';
import 'package:pos/infrastructure/repository/group_repo.dart';
import 'package:pos/infrastructure/repository/user_branches_repo.dart';
import 'package:pos/infrastructure/repository/user_repo.dart';

@LazySingleton(as: UserServices)
class UserServicesImp implements UserServices {
  @override
  Future<Either<String, Unit>> addUser(UserModel userModel) async {
    FirebaseApp firebaseApp = await Firebase.initializeApp(
      name: "register_account",
      options: Firebase.app().options,
    );
    FirebaseAuth _firebaseAuth = FirebaseAuth.instanceFor(app: firebaseApp);
    // Generate Random Password
    const _chars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    final String randomPassword =
        List.generate(30, (index) => _chars[Random().nextInt(_chars.length)])
            .join();

    // Add User Firebase
    final firebaseUser = await AuthRepo(_firebaseAuth).registration(
      userModel.email,
      randomPassword,
    );
    if (firebaseUser.isLeft()) {
      await firebaseApp.delete();
      return left(firebaseUser.fold(
        (failure) => (failure),
        (r) => null,
      ));
    }
    UserCredential userCredential =
        firebaseUser.fold((l) => null, (userCredential) => userCredential);

    // Send Email Create New Password
    await AuthRepo(_firebaseAuth).resetPassword(userModel.email);

    // Delete Current Firebase Session
    await firebaseApp.delete();

    // Add User
    await UserRepo().addUser(
      UserModelMapper().toUserData(userModel),
      userCredential.user.uid,
    );

    // Add User Branches
    for (BranchModel branchModel in userModel.listBranch) {
      await UserBranchesRepo().addUserBranches(
        UserBranches(
          branchId: branchModel.id,
          userId: userCredential.user.uid,
        ),
      );
    }
    return right(unit);
  }

  @override
  Future<Either<String, List<UserModel>>> getAllUser() async {
    List<UserModel> listUserModel = [];
    // Get All UserData
    final allUserData = await UserRepo().getAllUser();
    if (allUserData.isLeft())
      return left(allUserData.fold(
        (failure) => failure,
        (r) => null,
      ));
    List<UserData> listUserData = allUserData.fold(
      (l) => null,
      (listUserData) => listUserData,
    );

    for (UserData userData in listUserData) {
      // Get Group
      final groupData = await GroupRepo().getGroupById(userData.groupId);
      Group group = groupData.fold(
        (l) => Group.empty(),
        (data) => data,
      );
      // Get UserBranches
      List<String> listUserId = [];
      listUserId.add(userData.id);
      final userBranchesData =
          await UserBranchesRepo().getListUserBranchesByUserId(listUserId);
      List<UserBranches> listUserBranches = userBranchesData.fold(
        (l) => [],
        (listUserBranches) => listUserBranches,
      );
      // Get Branches
      List<Branch> listBranch = [];
      for (UserBranches userBranches in listUserBranches) {
        final branchData =
            await BranchRepo().getbranchById(userBranches.branchId);
        if (branchData.isRight())
          listBranch.add(branchData.fold(
            (l) => Branch.empty(),
            (branch) => branch,
          ));
      }
      // Map User Model
      listUserModel.add(
        UserModelMapper().toUserModel(
          userData,
          group,
          [],
          listBranch,
        ),
      );
    }

    return right(listUserModel);
  }

  @override
  Future<Either<String, UserModel>> getUserByUid(String uid) async {
    // Get User
    final getUserData = await UserRepo().getUserById(uid);
    if (getUserData.isLeft())
      return left(getUserData.fold(
        (failure) => failure,
        (r) => null,
      ));
    UserData userData = getUserData.fold(
      (l) => UserData.empty(),
      (data) => data,
    );

    // Get Group
    final getGroup = await GroupRepo().getGroupById(userData.id);
    Group group = getGroup.fold(
      (l) => Group.empty(),
      (data) => data,
    );

    // Get User Branches
    List<String> listUserId = [];
    listUserId.add(userData.id);
    final getUserBranches =
        await UserBranchesRepo().getListUserBranchesByUserId(listUserId);
    List<UserBranches> listUserBranches = getUserBranches.fold(
      (l) => [],
      (data) => data,
    );
    // Get List Branch
    List<Branch> listBranch = [];
    for (UserBranches userBranches in listUserBranches) {
      final getBranch = await BranchRepo().getbranchById(userBranches.branchId);
      if (getBranch.isRight())
        listBranch.add(getBranch.fold(
          (l) => Branch.empty(),
          (data) => data,
        ));
    }
    // Map User Model
    return right(UserModelMapper().toUserModel(
      userData,
      group,
      [],
      listBranch,
    ));
  }

  @override
  Future<Either<String, Unit>> updateUser(UserModel userModel) async {
    UserData userData = UserModelMapper().toUserData(userModel);
    // Update User Data
    final updateUserData = await UserRepo().updateUser(userData);
    if (updateUserData.isLeft())
      return left(updateUserData.fold(
        (failure) => failure,
        (r) => null,
      ));

    // Delete All User Branch
    await UserBranchesRepo().deleteUserBranchesByUserId(userData.id);

    // Add All User Branch
    for (BranchModel branchModel in userModel.listBranch) {
      await UserBranchesRepo().addUserBranches(UserBranches.empty().copyWith(
        userId: userData.id,
        branchId: branchModel.id,
      ));
    }
    return right(unit);
  }

  @override
  Future<Either<String, Unit>> resetUserPassword(UserModel userModel) async {
    FirebaseApp firebaseApp = await Firebase.initializeApp(
      name: "change_password",
      options: Firebase.app().options,
    );
    FirebaseAuth _firebaseAuth = FirebaseAuth.instanceFor(app: firebaseApp);
    // Reset User Firebase
    final firebaseUser =
        await AuthRepo(_firebaseAuth).resetPassword(userModel.email);
    await firebaseApp.delete();
    return firebaseUser.fold(
      (failure) => left(failure),
      (r) => right(unit),
    );
  }
}
