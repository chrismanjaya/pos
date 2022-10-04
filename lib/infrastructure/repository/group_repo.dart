import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:pos/infrastructure/failure/firebase_firestore_failure.dart';
import 'package:pos/infrastructure/model/group.dart';

class GroupRepo {
  CollectionReference _groupRef =
      FirebaseFirestore.instance.collection("group");

  Future<Either<String, Group>> getGroupById(String id) async {
    try {
      final DocumentSnapshot groupDocument = await _groupRef.doc(id).get();
      return right(GroupDto().toGroup(groupDocument));
    } catch (error) {
      return left(FirebaseFirestoreFailure.INVALID_DATA);
    }
  }

  Future<Either<String, List<Group>>> getAllGroup() async {
    try {
      final QuerySnapshot groupCollection = await _groupRef.get();

      List<Group> listGroup = [];
      for (DocumentSnapshot groupDocument in groupCollection.docs) {
        listGroup.add(GroupDto().toGroup(groupDocument));
      }
      return right(listGroup);
    } catch (error) {
      return left(FirebaseFirestoreFailure.INVALID_DATA);
    }
  }

  Future<Either<String, String>> addGroup(Group group) async {
    try {
      final groupDocument = await _groupRef.add(
        {
          "groupName": group.groupName,
        },
      );
      return right(groupDocument.id);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }

  Future<Either<String, Unit>> updateGroup(Group group) async {
    try {
      await _groupRef.doc(group.id).update({
        "groupName": group.groupName,
      });
      return right(unit);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }

  Future<Either<String, Unit>> deleteGroup(String groupId) async {
    try {
      await _groupRef.doc(groupId).delete();
      return right(unit);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }
}

class GroupDto {
  Group toGroup(DocumentSnapshot groupDocument) {
    return Group(
      id: groupDocument.id,
      groupName: groupDocument.data()["groupName"],
    );
  }
}
