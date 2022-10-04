import 'package:flutter/material.dart';
import 'package:pos/application/expense/expense_bloc.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_duration.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_string.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectedExpenseButton extends StatelessWidget {
  const SelectedExpenseButton({
    Key key,
    @required this.isAuthorizedChange,
  }) : super(key: key);

  final bool isAuthorizedChange;

  @override
  Widget build(BuildContext context) {
    ExpenseBloc _expenseBloc = context.read<ExpenseBloc>();
    return BlocListener<ExpenseBloc, ExpenseState>(
      listener: (context, state) {
        if (state.message.length > 0) {
          final snackBar = SnackBar(
            duration: dNormal,
            backgroundColor: kUIPrimaryColor,
            content: Text(
              state.message,
              style: yTextNormal,
            ),
            action: SnackBarAction(
              label: textButtonClose,
              textColor: kTextPrimaryColor,
              onPressed: () {},
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          if (!state.isError) {
            _expenseBloc.add(ExpenseEvent.getAllExpense());
            _expenseBloc.add(ExpenseEvent.clearSelectedExpense());
          }
        }
      },
      child: BlocBuilder<ExpenseBloc, ExpenseState>(
        builder: (context, state) => Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: sPaddingBody),
              child: (state.isLoading)
                  ? LinearProgressIndicator(
                      backgroundColor: kSecondColor,
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(kAccentColor),
                    )
                  : Container(),
            ),
            Row(
              children: <Widget>[
                // Button Add
                Expanded(
                  child: ElevatedButton(
                    onPressed: isAuthorizedChange
                        ? (_expenseBloc
                                    .state.selectedExpense.itemName.isEmpty ||
                                _expenseBloc.state.selectedExpense.itemCost ==
                                    0 ||
                                _expenseBloc.state.selectedExpense.dateTime ==
                                    DateTime(0))
                            ? null
                            : () {
                                _expenseBloc.add(ExpenseEvent.addExpense());
                              }
                        : null,
                    style: yButtonFormAdd,
                    child: Text(
                      textButtonAdd,
                      style: yTextBoldDark,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  width: sPaddingContainer,
                ),
                // Button Update
                Expanded(
                  child: ElevatedButton(
                    onPressed: (isAuthorizedChange &&
                            _expenseBloc.state.selectedExpense.id != "")
                        ? () {
                            _expenseBloc.add(ExpenseEvent.updateExpense());
                          }
                        : null,
                    style: yButtonFormUpdate,
                    child: Text(
                      textButtonUpdate,
                      style: yTextBoldDark,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  width: sPaddingContainer,
                ),
                // Button Delete
                Expanded(
                  child: ElevatedButton(
                    onPressed: (isAuthorizedChange &&
                            _expenseBloc.state.selectedExpense.id != "")
                        ? () {
                            _expenseBloc.add(ExpenseEvent.deleteExpense());
                          }
                        : null,
                    style: yButtonFormDelete,
                    child: Text(
                      textButtonDelete,
                      style: yTextBoldDark,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
