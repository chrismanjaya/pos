import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:pos/infrastructure/failure/firebase_firestore_failure.dart';
import 'package:pos/infrastructure/model/transaction_detail.dart';

class TransactionDetailRepo {
  CollectionReference _transactionDetailRef =
      FirebaseFirestore.instance.collection("transactionDetail");

  Future<Either<String, TransactionDetail>> getTransactionDetailById(
      String id) async {
    try {
      final DocumentSnapshot transactionDetailDocument =
          await _transactionDetailRef.doc(id).get();
      return right(TransactionDetailDto()
          .toTransactionDetail(transactionDetailDocument));
    } catch (error) {
      return left(FirebaseFirestoreFailure.INVALID_DATA);
    }
  }

  Future<Either<String, List<TransactionDetail>>>
      getListTransactionDetailByTransactionId(String transactionId) async {
    try {
      final QuerySnapshot transactionDetailCollection =
          await _transactionDetailRef
              .where("transactionId", isEqualTo: transactionId)
              .orderBy("itemNo", descending: false)
              .get();

      List<TransactionDetail> listTransactionDetail = [];
      for (DocumentSnapshot transactionDetailDocument
          in transactionDetailCollection.docs) {
        listTransactionDetail.add(TransactionDetailDto()
            .toTransactionDetail(transactionDetailDocument));
      }
      return right(listTransactionDetail);
    } catch (error) {
      return left(FirebaseFirestoreFailure.INVALID_DATA);
    }
  }

  Future<Either<String, List<TransactionDetail>>>
      getAllTransactionDetail() async {
    try {
      final QuerySnapshot transactionDetailCollection =
          await _transactionDetailRef
              .orderBy("itemNo", descending: false)
              .get();

      List<TransactionDetail> listTransactionDetail = [];
      for (DocumentSnapshot transactionDetailDocument
          in transactionDetailCollection.docs) {
        listTransactionDetail.add(TransactionDetailDto()
            .toTransactionDetail(transactionDetailDocument));
      }
      return right(listTransactionDetail);
    } catch (error) {
      return left(FirebaseFirestoreFailure.INVALID_DATA);
    }
  }

  Future<Either<String, String>> addTransactionDetail(
    TransactionDetail transactionDetail,
    String transactionId,
  ) async {
    try {
      final addTransactionDetail = await _transactionDetailRef.add(
        {
          "itemDiscount": transactionDetail.itemDiscount,
          "itemName": transactionDetail.itemName,
          "itemNo": transactionDetail.itemNo,
          "itemPrice": transactionDetail.itemPrice,
          "quantity": transactionDetail.quantity,
          "transactionId": transactionId,
        },
      );
      return right(addTransactionDetail.id);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }

  Future<Either<String, Unit>> updateTransactionDetail(
      TransactionDetail transactionDetail) async {
    try {
      await _transactionDetailRef.doc(transactionDetail.id).update(
        {
          "itemDiscount": transactionDetail.itemDiscount,
          "itemName": transactionDetail.itemName,
          "itemNo": transactionDetail.itemNo,
          "itemPrice": transactionDetail.itemPrice,
          "quantity": transactionDetail.quantity,
          "transactionId": transactionDetail.transactionId,
        },
      );
      return right(unit);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }

  Future<Either<String, Unit>> deleteTransactionDetail(
      String transactionDetailId) async {
    try {
      await _transactionDetailRef.doc(transactionDetailId).delete();
      return right(unit);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }

  Future<Either<String, Unit>> deleteTransactionDetailByTransactionId(
      String transactionId) async {
    try {
      final QuerySnapshot transactionDetailSnapshot =
          await _transactionDetailRef
              .where("transactionId", isEqualTo: transactionId)
              .get();

      for (DocumentSnapshot transactionDetailDocument
          in transactionDetailSnapshot.docs) {
        await _transactionDetailRef.doc(transactionDetailDocument.id).delete();
      }
      return right(unit);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }
}

class TransactionDetailDto {
  TransactionDetail toTransactionDetail(
      DocumentSnapshot transactionDetailDocument) {
    return TransactionDetail(
      id: transactionDetailDocument.id,
      itemDiscount: transactionDetailDocument.data()["itemDiscount"],
      itemName: transactionDetailDocument.data()["itemName"],
      itemNo: transactionDetailDocument.data()["itemNo"],
      itemPrice: transactionDetailDocument.data()["itemPrice"],
      quantity: transactionDetailDocument.data()["quantity"],
      transactionId: transactionDetailDocument.data()["transactionId"],
    );
  }
}
