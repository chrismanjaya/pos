import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:pos/infrastructure/failure/firebase_firestore_failure.dart';
import 'package:pos/infrastructure/model/expense.dart';

class ExpenseRepo {
  CollectionReference _expenseRef =
      FirebaseFirestore.instance.collection("expense");

  Future<Either<String, Expense>> getExpenseById(String id) async {
    try {
      final DocumentSnapshot expenseDocument = await _expenseRef.doc(id).get();
      return right(ExpenseDto().toExpense(expenseDocument));
    } catch (error) {
      return left(FirebaseFirestoreFailure.INVALID_DATA);
    }
  }

  Future<Either<String, List<Expense>>> getAllExpense() async {
    try {
      final QuerySnapshot expenseCollection =
          await _expenseRef.orderBy("dateTime", descending: true).get();

      List<Expense> listExpense = [];
      for (DocumentSnapshot expenseDocument in expenseCollection.docs) {
        listExpense.add(ExpenseDto().toExpense(expenseDocument));
      }
      return right(listExpense);
    } catch (error) {
      return left(FirebaseFirestoreFailure.INVALID_DATA);
    }
  }

  Future<Either<String, List<Expense>>> getAllExpenseByDate(
    DateTime dateFrom,
    DateTime dateTo,
  ) async {
    try {
      final QuerySnapshot expenseCollection = await _expenseRef
          .where("dateTime", isGreaterThanOrEqualTo: dateFrom)
          .where("dateTime", isLessThanOrEqualTo: dateTo)
          .orderBy("dateTime", descending: true)
          .get();

      List<Expense> listExpense = [];
      for (DocumentSnapshot expenseDocument in expenseCollection.docs) {
        listExpense.add(ExpenseDto().toExpense(expenseDocument));
      }
      return right(listExpense);
    } catch (error) {
      return left(FirebaseFirestoreFailure.INVALID_DATA);
    }
  }

  Future<Either<String, Unit>> addExpense(Expense expense) async {
    try {
      await _expenseRef.add({
        "itemName": expense.itemName,
        "dateTime": expense.dateTime,
        "itemCost": expense.itemCost,
      });
      return right(unit);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }

  Future<Either<String, Unit>> updateExpense(Expense expense) async {
    try {
      await _expenseRef.doc(expense.id).update(
        {
          "itemName": expense.itemName,
          "dateTime": expense.dateTime,
          "itemCost": expense.itemCost,
        },
      );
      return right(unit);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }

  Future<Either<String, Unit>> deleteExpense(String expenseId) async {
    try {
      await _expenseRef.doc(expenseId).delete();
      return right(unit);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }
}

class ExpenseDto {
  Expense toExpense(DocumentSnapshot expenseDocument) {
    return Expense(
      id: expenseDocument.id,
      itemName: expenseDocument.data()["itemName"],
      dateTime: expenseDocument.data()["dateTime"],
      itemCost: expenseDocument.data()["itemCost"],
    );
  }
}
