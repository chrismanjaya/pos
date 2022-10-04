import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/expense/expense_bloc.dart';
import 'package:pos/injection.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/expense/component/list_expense.dart';
import 'package:pos/presentation/expense/component/selected_expense.dart';

class ExpensePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExpenseBloc>(
      create: (context) =>
          getIt<ExpenseBloc>()..add(ExpenseEvent.getAllExpense()),
      child: WillPopScope(
        // ignore: missing_return
        onWillPop: () {},
        child: Scaffold(
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.all(sPaddingBody),
              child: Row(
                children: [
                  // Selected Expense
                  Expanded(
                    child: SelectedExpense(),
                  ),
                  SizedBox(
                    width: sPaddingBody,
                  ),
                  // List Expense
                  Expanded(
                    child: ListExpense(),
                  ),
                ],
              ),
            ),
          ),
          resizeToAvoidBottomInset: true,
        ),
      ),
    );
  }
}
