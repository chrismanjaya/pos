import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:pos/infrastructure/failure/firebase_firestore_failure.dart';
import 'package:pos/infrastructure/model/user_data.dart';

class UserRepo {
  CollectionReference _userRef = FirebaseFirestore.instance.collection("user");

  Future<Either<String, UserData>> getUserById(String id) async {
    try {
      final DocumentSnapshot userDocument = await _userRef.doc(id).get();
      return right(UserDto().toUser(userDocument));
    } catch (error) {
      return left(FirebaseFirestoreFailure.INVALID_DATA);
    }
  }

  Future<Either<String, List<UserData>>> getAllUser() async {
    try {
      final QuerySnapshot userCollection = await _userRef.get();

      List<UserData> listUserData = [];
      for (DocumentSnapshot userDocument in userCollection.docs) {
        listUserData.add(UserDto().toUser(userDocument));
      }
      return right(listUserData);
    } catch (error) {
      return left(FirebaseFirestoreFailure.INVALID_DATA);
    }
  }

  Future<Either<String, List<UserData>>> getListUserDataByGroup(
      List<String> listGroupId) async {
    try {
      final QuerySnapshot userCollection = await _userRef
          .where("groupId", whereIn: listGroupId)
          .orderBy("username", descending: false)
          .get();

      List<UserData> listUserData = [];
      for (DocumentSnapshot userDocument in userCollection.docs) {
        listUserData.add(UserDto().toUser(userDocument));
      }
      return right(listUserData);
    } catch (error) {
      return left(FirebaseFirestoreFailure.INVALID_DATA);
    }
  }

  Future<Either<String, Unit>> addUser(UserData user, String uid) async {
    try {
      await _userRef.doc(uid).set({
        "username": user.username,
        "email": user.email,
        "groupId": user.groupId,
      });
      return right(unit);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }

  Future<Either<String, Unit>> updateUser(UserData user) async {
    try {
      await _userRef.doc(user.id).update({
        "username": user.username,
        "email": user.email,
        "groupId": user.groupId,
      });
      return right(unit);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }

  Future<Either<String, Unit>> deleteUser(UserData user) async {
    try {
      await _userRef.doc(user.id).delete();
      return right(unit);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }
}

class UserDto {
  UserData toUser(DocumentSnapshot userDocument) {
    return UserData(
      id: userDocument.id,
      username: userDocument.data()["username"],
      email: userDocument.data()["email"],
      groupId: userDocument.data()["groupId"],
    );
  }
}
