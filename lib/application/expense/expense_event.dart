part of 'expense_bloc.dart';

@freezed
abstract class ExpenseEvent with _$ExpenseEvent {
  const factory ExpenseEvent.getAllExpense() = GetAllExpense;
  const factory ExpenseEvent.addExpense() = AddExpense;
  const factory ExpenseEvent.updateExpense() = UpdateExpense;
  const factory ExpenseEvent.deleteExpense() = DeleteExpense;
  const factory ExpenseEvent.searchChanged(String text) = SearchChanged;

  const factory ExpenseEvent.setSelectedExpense(ExpenseModel expenseModel) =
      SetSelectedExpense;
  const factory ExpenseEvent.clearSelectedExpense() = ClearSelectedExpense;
  const factory ExpenseEvent.changeSelectedItemName(String itemName) =
      ChangeSelectedItemName;
  const factory ExpenseEvent.changeSelectedItemCost(double itemCost) =
      ChangeSelectedItemCost;
  const factory ExpenseEvent.changeSelectedDateTime(DateTime dateTime) =
      ChangeSelectedDateTime;
}
