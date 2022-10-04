import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pos/application/expense/expense_bloc.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_string.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectedExpenseDateTime extends StatelessWidget {
  const SelectedExpenseDateTime({
    Key key,
    @required this.node,
    @required this.title,
    @required this.isAuthorizedChange,
  }) : super(key: key);

  final FocusScopeNode node;
  final String title;
  final bool isAuthorizedChange;

  @override
  Widget build(BuildContext context) {
    ExpenseBloc _expenseBloc = context.read<ExpenseBloc>();

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: sPaddingContainer),
            child: Text(
              title,
              style: yTextBold,
            ),
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () async {
                DateTime selectedDate = await showDatePicker(
                  context: context,
                  initialDate: (_expenseBloc.state.selectedExpense.dateTime ==
                          DateTime(0))
                      ? DateTime.now()
                      : _expenseBloc.state.selectedExpense.dateTime,
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2100),
                  builder: (context, child) {
                    return Theme(
                      data: ThemeData.dark(),
                      child: child,
                    );
                  },
                );
                if (selectedDate != null) {
                  return _expenseBloc
                      .add(ExpenseEvent.changeSelectedDateTime(selectedDate));
                }
              },
              style: yButtonFormGrey,
              child: Text(
                (_expenseBloc.state.selectedExpense.dateTime == DateTime(0))
                    ? textHintDateTimeExpense
                    : DateFormat("yyyy-MMM-dd")
                        .format(_expenseBloc.state.selectedExpense.dateTime),
                style: yTextNormalAccent,
              ),
            ),
          ),
          SizedBox(
            height: sPaddingBody,
          )
        ],
      ),
    );
  }
}
