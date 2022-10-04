import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pos/domain/mapper/expense_model_mapper.dart';
import 'package:pos/domain/model/expense_model.dart';
import 'package:pos/domain/services/expense/expense_services.dart';
import 'package:pos/infrastructure/model/expense.dart';
import 'package:pos/infrastructure/repository/expense_repo.dart';

@LazySingleton(as: ExpenseServices)
class ExpenseServiceImp implements ExpenseServices {
  @override
  Future<Either<String, Unit>> addExpense(ExpenseModel expenseModel) async {
    final addExpense = await ExpenseRepo()
        .addExpense(ExpenseModelMapper().toExpense(expenseModel));
    return addExpense.fold((failure) => left(failure), (_) => right(unit));
  }

  @override
  Future<Either<String, Unit>> deleteExpense(String expenseId) async {
    final deleteExpense = await ExpenseRepo().deleteExpense(expenseId);
    return deleteExpense.fold((failure) => left(failure), (_) => right(unit));
  }

  @override
  Future<Either<String, List<ExpenseModel>>> getAllExpense() async {
    final getAllExpense = await ExpenseRepo().getAllExpense();
    if (getAllExpense.isLeft()) {
      return left(getAllExpense.fold((failure) => failure, (r) => null));
    } else {
      List<ExpenseModel> expenseModels = [];
      try {
        for (Expense expense
            in getAllExpense.fold((l) => null, (listExpense) => listExpense)) {
          expenseModels.add(ExpenseModelMapper().toExpenseModel(expense));
        }
      } catch (error) {
        return left(error.toString());
      }
      return right(expenseModels);
    }
  }

  @override
  Future<Either<String, Unit>> updateExpense(ExpenseModel expenseModel) async {
    final addExpense = await ExpenseRepo()
        .updateExpense(ExpenseModelMapper().toExpense(expenseModel));
    return addExpense.fold((failure) => left(failure), (_) => right(unit));
  }
}
