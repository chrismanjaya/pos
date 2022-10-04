import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:pos/infrastructure/failure/firebase_firestore_failure.dart';
import 'package:pos/infrastructure/model/menu.dart';

class MenuRepo {
  CollectionReference _menuRef = FirebaseFirestore.instance.collection("menu");

  Future<Either<String, List<Menu>>> getAllMenu() async {
    try {
      final QuerySnapshot menuCollection =
          await _menuRef.orderBy("menuCode", descending: false).get();

      List<Menu> listMenu = [];
      for (DocumentSnapshot menuDocument in menuCollection.docs) {
        listMenu.add(MenuDto().toMenu(menuDocument));
      }
      return right(listMenu);
    } catch (error) {
      return left(FirebaseFirestoreFailure.INVALID_DATA);
    }
  }
}

class MenuDto {
  Menu toMenu(DocumentSnapshot menuDocument) {
    return Menu(
      id: menuDocument.id,
      menuCode: menuDocument.data()["menuCode"],
      menuName: menuDocument.data()["menuName"],
    );
  }
}
