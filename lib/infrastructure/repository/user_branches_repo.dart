import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:pos/infrastructure/failure/firebase_firestore_failure.dart';
import 'package:pos/infrastructure/model/user_branches.dart';

class UserBranchesRepo {
  CollectionReference _userBranchesRef =
      FirebaseFirestore.instance.collection("userBranches");

  Future<Either<String, List<UserBranches>>> getListUserBranchesByUserId(
      List<String> listUserId) async {
    try {
      final QuerySnapshot userBranchesSnapshot =
          await _userBranchesRef.where("userId", whereIn: listUserId).get();

      List<UserBranches> listUserBranches = [];
      for (DocumentSnapshot userBranchesDocument in userBranchesSnapshot.docs) {
        listUserBranches
            .add(UserBranchesDto().toUserBranches(userBranchesDocument));
      }
      return right(listUserBranches);
    } catch (error) {
      return left(FirebaseFirestoreFailure.INVALID_DATA);
    }
  }

  Future<Either<String, List<String>>> getListUserIdByBranchId(
      List<String> branchId) async {
    try {
      final QuerySnapshot userBranchesSnapshot =
          await _userBranchesRef.where("branchId", isEqualTo: branchId).get();

      List<String> listUserBranchesId = [];
      for (DocumentSnapshot userBranchesDocument in userBranchesSnapshot.docs) {
        listUserBranchesId
            .add(UserBranchesDto().toUserBranches(userBranchesDocument).userId);
      }
      return right(listUserBranchesId);
    } catch (error) {
      return left(FirebaseFirestoreFailure.INVALID_DATA);
    }
  }

  Future<Either<String, Unit>> addUserBranches(
      UserBranches userBranches) async {
    try {
      await _userBranchesRef.add({
        "userId": userBranches.userId,
        "branchId": userBranches.branchId,
      });
      return right(unit);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }

  Future<Either<String, Unit>> updateUserBranches(
      UserBranches userBranches) async {
    try {
      await _userBranchesRef.doc(userBranches.id).update({
        "userId": userBranches.userId,
        "branchId": userBranches.branchId,
      });
      return right(unit);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }

  Future<Either<String, Unit>> deleteUserBranches(
      UserBranches userBranches) async {
    try {
      await _userBranchesRef.doc(userBranches.id).delete();
      return right(unit);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }

  Future<Either<String, Unit>> deleteUserBranchesByBranchId(
      String branchId) async {
    try {
      final QuerySnapshot userBranchesSnapshot =
          await _userBranchesRef.where("branchId", isEqualTo: branchId).get();

      for (DocumentSnapshot userBranchesDocument in userBranchesSnapshot.docs) {
        await _userBranchesRef.doc(userBranchesDocument.id).delete();
      }
      return right(unit);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }

  Future<Either<String, Unit>> deleteUserBranchesByUserId(String userId) async {
    try {
      final QuerySnapshot userBranchesSnapshot =
          await _userBranchesRef.where("userId", isEqualTo: userId).get();

      for (DocumentSnapshot userBranchesDocument in userBranchesSnapshot.docs) {
        await _userBranchesRef.doc(userBranchesDocument.id).delete();
      }
      return right(unit);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }
}

class UserBranchesDto {
  UserBranches toUserBranches(DocumentSnapshot userBranchesDocument) {
    return UserBranches(
      id: userBranchesDocument.id,
      userId: userBranchesDocument.data()["userId"],
      branchId: userBranchesDocument.data()["branchId"],
    );
  }
}
