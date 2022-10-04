import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:pos/domain/model/branch_model.dart';
import 'package:pos/domain/model/transaction_filter_model.dart';
import 'package:pos/infrastructure/failure/firebase_firestore_failure.dart';
import 'package:pos/infrastructure/model/transaction_header.dart';

class TransactionHeaderRepo {
  CollectionReference _transactionHeaderRef =
      FirebaseFirestore.instance.collection("transactionHeader");

  Future<Either<String, TransactionHeader>> getTransactionHeaderById(
      String id) async {
    try {
      final DocumentSnapshot transactionHeaderDocument =
          await _transactionHeaderRef.doc(id).get();
      return right(TransactionHeaderDto()
          .toTransactionHeader(transactionHeaderDocument));
    } catch (error) {
      return left(FirebaseFirestoreFailure.INVALID_DATA);
    }
  }

  Future<Either<String, List<TransactionHeader>>>
      getAllTransactionHeader() async {
    try {
      final QuerySnapshot transactionHeaderCollection =
          await _transactionHeaderRef
              .orderBy("transactionDate", descending: true)
              .get();

      List<TransactionHeader> listTransactionHeader = [];
      for (DocumentSnapshot transactionHeaderDocument
          in transactionHeaderCollection.docs) {
        listTransactionHeader.add(TransactionHeaderDto()
            .toTransactionHeader(transactionHeaderDocument));
      }
      return right(listTransactionHeader);
    } catch (error) {
      return left(FirebaseFirestoreFailure.INVALID_DATA);
    }
  }

  Future<Either<String, List<TransactionHeader>>>
      getAllTransactionHeaderByFilter(
          TransactionFilterModel activityFilterModel) async {
    try {
      final QuerySnapshot transactionHeaderCollection =
          await _transactionHeaderRef
              .where("branchName",
                  isEqualTo: activityFilterModel.listBranchModel[0].branchName)
              .where("status", whereIn: activityFilterModel.listStatus)
              .where("transactionDate",
                  isGreaterThanOrEqualTo: activityFilterModel.dateFrom)
              .where("transactionDate",
                  isLessThanOrEqualTo: activityFilterModel.dateTo)
              .orderBy("transactionDate", descending: true)
              .get();

      List<TransactionHeader> listTransactionHeader = [];
      for (DocumentSnapshot transactionHeaderDocument
          in transactionHeaderCollection.docs) {
        listTransactionHeader.add(TransactionHeaderDto()
            .toTransactionHeader(transactionHeaderDocument));
      }
      return right(listTransactionHeader);
    } catch (error) {
      return left(FirebaseFirestoreFailure.INVALID_DATA);
    }
  }

  Future<Either<String, List<TransactionHeader>>>
      getAllTransactionReportByFilter(
          TransactionFilterModel activityFilterModel) async {
    try {
      List<String> listBranchName = [];
      for (BranchModel branchModel in activityFilterModel.listBranchModel) {
        listBranchName.add(branchModel.branchName);
      }
      final QuerySnapshot transactionHeaderCollection =
          await _transactionHeaderRef
              .where("branchName", whereIn: listBranchName)
              .where("transactionDate",
                  isGreaterThanOrEqualTo: activityFilterModel.dateFrom)
              .where("transactionDate",
                  isLessThanOrEqualTo: activityFilterModel.dateTo)
              .orderBy("transactionDate", descending: true)
              .get();

      List<TransactionHeader> listTransactionHeader = [];
      for (DocumentSnapshot transactionHeaderDocument
          in transactionHeaderCollection.docs) {
        listTransactionHeader.add(TransactionHeaderDto()
            .toTransactionHeader(transactionHeaderDocument));
      }
      return right(listTransactionHeader);
    } catch (error) {
      return left(FirebaseFirestoreFailure.INVALID_DATA);
    }
  }

  Future<Either<String, String>> addTransactionHeader(
      TransactionHeader transactionHeader) async {
    try {
      final addTransactionHeader = await _transactionHeaderRef.add({
        "branchName": transactionHeader.branchName,
        "cashAmount": transactionHeader.cashAmount,
        "cashier": transactionHeader.cashier,
        "customerName": transactionHeader.customerName,
        "discount": transactionHeader.discount,
        "paymentMethod": transactionHeader.paymentMethod,
        "status": transactionHeader.status,
        "subtotal": transactionHeader.subtotal,
        "total": transactionHeader.total,
        "transactionDate": FieldValue.serverTimestamp(),
        "createdBy": transactionHeader.createdBy,
        "createdDate": FieldValue.serverTimestamp(),
        "updatedBy": transactionHeader.updatedBy,
        "updatedDate": FieldValue.serverTimestamp(),
      });
      return right(addTransactionHeader.id);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }

  Future<Either<String, Unit>> updateTransactionHeader(
      TransactionHeader transactionHeader) async {
    try {
      await _transactionHeaderRef.doc(transactionHeader.id).update({
        "branchName": transactionHeader.branchName,
        "cashAmount": transactionHeader.cashAmount,
        "cashier": transactionHeader.cashier,
        "customerName": transactionHeader.customerName,
        "discount": transactionHeader.discount,
        "paymentMethod": transactionHeader.paymentMethod,
        "status": transactionHeader.status,
        "subtotal": transactionHeader.subtotal,
        "total": transactionHeader.total,
        "transactionDate": FieldValue.serverTimestamp(),
        "updatedBy": transactionHeader.updatedBy,
        "updatedDate": FieldValue.serverTimestamp(),
      });
      return right(unit);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }

  Future<Either<String, Unit>> updateStatus(
      TransactionHeader transactionHeader) async {
    try {
      await _transactionHeaderRef.doc(transactionHeader.id).update(
        {
          "status": transactionHeader.status,
          "updatedBy": transactionHeader.updatedBy,
          "updatedDate": Timestamp.now(),
        },
      );
      return right(unit);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }

  Future<Either<String, Unit>> deleteTransactionHeader(
      String transactionHeaderId) async {
    try {
      await _transactionHeaderRef.doc(transactionHeaderId).delete();
      return right(unit);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }
}

class TransactionHeaderDto {
  TransactionHeader toTransactionHeader(
      DocumentSnapshot transactionHeaderDocument) {
    return TransactionHeader(
      id: transactionHeaderDocument.id,
      branchName: transactionHeaderDocument.data()["branchName"],
      cashAmount: transactionHeaderDocument.data()["cashAmount"],
      cashier: transactionHeaderDocument.data()["cashier"],
      customerName: transactionHeaderDocument.data()["customerName"],
      discount: transactionHeaderDocument.data()["discount"],
      paymentMethod: transactionHeaderDocument.data()["paymentMethod"],
      status: transactionHeaderDocument.data()["status"],
      subtotal: transactionHeaderDocument.data()["subtotal"],
      total: transactionHeaderDocument.data()["total"],
      transactionDate: transactionHeaderDocument.data()["transactionDate"],
      createdBy: transactionHeaderDocument.data()["createdBy"],
      createdDate: transactionHeaderDocument.data()["createdDate"],
      updatedBy: transactionHeaderDocument.data()["updatedBy"],
      updatedDate: transactionHeaderDocument.data()["updatedDate"],
    );
  }
}
