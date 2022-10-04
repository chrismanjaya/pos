import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:pos/infrastructure/failure/firebase_firestore_failure.dart';
import 'package:pos/infrastructure/model/action.dart';

class ActionRepo {
  CollectionReference _actionRef =
      FirebaseFirestore.instance.collection("action");

  Future<Either<String, List<Action>>> getAllActionByMenuId(
    String menuId,
  ) async {
    try {
      final QuerySnapshot actionSnapshot = await _actionRef
          .where("menuId", isEqualTo: menuId)
          .orderBy("action", descending: false)
          .get();

      List<Action> listAction = [];
      for (DocumentSnapshot actionDocument in actionSnapshot.docs) {
        listAction.add(ActionDto().toAction(actionDocument));
      }
      return right(listAction);
    } catch (error) {
      return left(FirebaseFirestoreFailure.INVALID_DATA);
    }
  }
}

class ActionDto {
  Action toAction(DocumentSnapshot actionDocument) {
    return Action(
      id: actionDocument.id,
      menuId: actionDocument.data()["menuId"],
      action: actionDocument.data()["action"],
    );
  }
}
