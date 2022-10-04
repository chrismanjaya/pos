part of 'expense_bloc.dart';

@freezed
abstract class ExpenseState with _$ExpenseState {
  const factory ExpenseState({
    @required List<ExpenseModel> listExpense,
    @required List<ExpenseModel> listExpenseFiltered,
    @required ExpenseModel selectedExpense,
    @required bool isLoading,
    @required bool isLoaded,
    @required bool isError,
    @required String message,
  }) = _ExpenseState;

  factory ExpenseState.initial() => ExpenseState(
        listExpense: [],
        listExpenseFiltered: [],
        selectedExpense: ExpenseModel.empty(),
        isLoading: false,
        isLoaded: false,
        isError: false,
        message: "",
      );
}
