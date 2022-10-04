import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pos/domain/model/expense_model.dart';
import 'package:pos/infrastructure/model/expense.dart';

class ExpenseModelMapper {
  ExpenseModel toExpenseModel(Expense expense) {
    return ExpenseModel(
      id: expense.id,
      itemName: expense.itemName,
      itemCost: expense.itemCost.toDouble(),
      dateTime: expense.dateTime.toDate(),
    );
  }

  Expense toExpense(ExpenseModel expenseModel) {
    return Expense(
      id: expenseModel.id,
      itemName: expenseModel.itemName,
      itemCost: expenseModel.itemCost.toInt(),
      dateTime: Timestamp.fromDate(expenseModel.dateTime),
    );
  }
}
