import 'package:dartz/dartz.dart';
import 'package:pos/domain/model/expense_model.dart';

abstract class ExpenseServices {
  Future<Either<String, List<ExpenseModel>>> getAllExpense();
  Future<Either<String, Unit>> addExpense(ExpenseModel expenseModel);
  Future<Either<String, Unit>> updateExpense(ExpenseModel expenseModel);
  Future<Either<String, Unit>> deleteExpense(String expenseId);
}
