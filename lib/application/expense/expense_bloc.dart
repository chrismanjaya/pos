import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pos/domain/model/expense_model.dart';
import 'package:pos/domain/services/expense/expense_services.dart';

part 'expense_event.dart';
part 'expense_state.dart';
part 'expense_bloc.freezed.dart';

@injectable
class ExpenseBloc extends Bloc<ExpenseEvent, ExpenseState> {
  final ExpenseServices _expenseService;

  ExpenseBloc(this._expenseService) : super(ExpenseState.initial());

  @override
  Stream<ExpenseState> mapEventToState(ExpenseEvent event) async* {
    yield* event.map(
      getAllExpense: (e) async* {
        yield state.copyWith(
          isLoading: true,
        );
        final getAllExpense = await _expenseService.getAllExpense();
        yield state.copyWith(
          listExpense: getAllExpense.fold((l) => [], (data) => data),
          listExpenseFiltered: getAllExpense.fold((l) => [], (data) => data),
          isLoading: false,
          isLoaded: true,
        );
      },
      addExpense: (e) async* {
        yield state.copyWith(
          isLoading: true,
          isError: false,
          message: "",
        );
        final addExpense =
            await _expenseService.addExpense(state.selectedExpense);
        if (addExpense.isLeft()) {
          yield state.copyWith(
            isError: true,
            message: addExpense.fold((failure) => failure, (r) => ""),
          );
        } else {
          yield state.copyWith(
            isError: false,
            message: state.selectedExpense.itemName + " successfully added",
          );
        }
        yield state.copyWith(
          isLoading: false,
          isError: false,
          message: "",
        );
      },
      updateExpense: (e) async* {
        yield state.copyWith(
          isLoading: true,
          isError: false,
          message: "",
        );
        final updateExpense =
            await _expenseService.updateExpense(state.selectedExpense);
        if (updateExpense.isLeft()) {
          yield state.copyWith(
            isError: true,
            message: updateExpense.fold((failure) => failure, (r) => ""),
          );
        } else {
          yield state.copyWith(
            isError: false,
            message: state.selectedExpense.itemName + " successfully updated",
          );
        }
        yield state.copyWith(
          isLoading: false,
          isError: false,
          message: "",
        );
      },
      deleteExpense: (e) async* {
        yield state.copyWith(
          isLoading: true,
          isError: false,
          message: "",
        );
        final deleteExpense =
            await _expenseService.deleteExpense(state.selectedExpense.id);
        if (deleteExpense.isLeft()) {
          yield state.copyWith(
            isError: true,
            message: deleteExpense.fold((failure) => failure, (r) => ""),
          );
        } else {
          yield state.copyWith(
            isError: false,
            message: state.selectedExpense.itemName + " successfully deleted",
          );
        }
        yield state.copyWith(
          isLoading: false,
          isError: false,
          message: "",
        );
      },
      searchChanged: (e) async* {
        yield state.copyWith(
          listExpenseFiltered: state.listExpense
              .where((expense) =>
                  expense.itemName.toLowerCase().contains(e.text.toLowerCase()))
              .toList(),
        );
      },
      setSelectedExpense: (e) async* {
        yield state.copyWith(
          selectedExpense: e.expenseModel,
        );
      },
      clearSelectedExpense: (e) async* {
        yield state.copyWith(
          selectedExpense: ExpenseModel.empty(),
        );
      },
      changeSelectedItemName: (e) async* {
        yield state.copyWith(
          selectedExpense: state.selectedExpense.copyWith(
            itemName: e.itemName,
          ),
        );
      },
      changeSelectedItemCost: (e) async* {
        yield state.copyWith(
          selectedExpense: state.selectedExpense.copyWith(
            itemCost: e.itemCost,
          ),
        );
      },
      changeSelectedDateTime: (e) async* {
        yield state.copyWith(
          selectedExpense: state.selectedExpense.copyWith(
            dateTime: e.dateTime,
          ),
        );
      },
    );
  }
}
