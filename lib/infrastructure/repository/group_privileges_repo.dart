import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:pos/infrastructure/failure/firebase_firestore_failure.dart';
import 'package:pos/infrastructure/model/group_privileges.dart';

class GroupPrivilegesRepo {
  CollectionReference _groupPrivilegesRef =
      FirebaseFirestore.instance.collection("groupPrivileges");

  Future<Either<String, List<GroupPrivileges>>> getListGroupPrivilegesByGroupId(
      String groupId) async {
    try {
      final QuerySnapshot groupPrivilegesSnapshot = await _groupPrivilegesRef
          .where("groupId", isEqualTo: groupId)
          .orderBy("menuCode", descending: false)
          .get();

      List<DocumentSnapshot> listGroupPrivilegesDocument = [];
      for (DocumentSnapshot groupPrivilegesDocument
          in groupPrivilegesSnapshot.docs) {
        listGroupPrivilegesDocument.add(groupPrivilegesDocument);
      }
      return right(GroupPrivilegesDto()
          .toListGroupPrivileges(listGroupPrivilegesDocument));
    } catch (error) {
      return left(FirebaseFirestoreFailure.INVALID_DATA);
    }
  }

  Future<Either<String, List<GroupPrivileges>>> getListGroupPrivilegesByRole(
      String action) async {
    try {
      final QuerySnapshot groupPrivilegesSnapshot =
          await _groupPrivilegesRef.where("action", isEqualTo: action).get();

      List<DocumentSnapshot> listGroupPrivilegesDocument = [];
      for (DocumentSnapshot groupPrivilegesDocument
          in groupPrivilegesSnapshot.docs) {
        listGroupPrivilegesDocument.add(groupPrivilegesDocument);
      }
      return right(GroupPrivilegesDto()
          .toListGroupPrivileges(listGroupPrivilegesDocument));
    } catch (error) {
      return left(FirebaseFirestoreFailure.INVALID_DATA);
    }
  }

  Future<Either<String, Unit>> addGroupPrivileges(
      GroupPrivileges groupPrivileges) async {
    try {
      await _groupPrivilegesRef.add({
        "groupId": groupPrivileges.groupId,
        "actionId": groupPrivileges.actionId,
        "action": groupPrivileges.action,
        "menuCode": groupPrivileges.menuCode,
        "menuName": groupPrivileges.menuName,
      });
      return right(unit);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }

  Future<Either<String, Unit>> updateGroupPrivileges(
      GroupPrivileges groupPrivileges) async {
    try {
      await _groupPrivilegesRef.doc(groupPrivileges.id).update({
        "groupId": groupPrivileges.groupId,
        "actionId": groupPrivileges.actionId,
        "action": groupPrivileges.action,
        "menuCode": groupPrivileges.menuCode,
        "menuName": groupPrivileges.menuName,
      });
      return right(unit);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }

  Future<Either<String, Unit>> deleteGroupPrivileges(
      GroupPrivileges groupPrivileges) async {
    try {
      await _groupPrivilegesRef.doc(groupPrivileges.id).delete();
      return right(unit);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }

  Future<Either<String, Unit>> deleteGroupPrivilegesByGroupId(
      String groupId) async {
    try {
      final QuerySnapshot groupPrivilegesSnapshot =
          await _groupPrivilegesRef.where("groupId", isEqualTo: groupId).get();

      for (DocumentSnapshot groupPrivilegesDocument
          in groupPrivilegesSnapshot.docs) {
        await _groupPrivilegesRef.doc(groupPrivilegesDocument.id).delete();
      }
      return right(unit);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }
}

class GroupPrivilegesDto {
  List<GroupPrivileges> toListGroupPrivileges(
      List<DocumentSnapshot> listUserBcanhesDocument) {
    return listUserBcanhesDocument
        .map((groupPrivilegesDocument) =>
            toGroupPrivileges(groupPrivilegesDocument))
        .toList();
  }

  GroupPrivileges toGroupPrivileges(DocumentSnapshot groupPrivilegesDocument) {
    return GroupPrivileges(
      id: groupPrivilegesDocument.id,
      groupId: groupPrivilegesDocument.data()["groupId"],
      actionId: groupPrivilegesDocument.data()["actionId"],
      action: groupPrivilegesDocument.data()["action"],
      menuCode: groupPrivilegesDocument.data()["menuCode"],
      menuName: groupPrivilegesDocument.data()["menuName"],
    );
  }
}
