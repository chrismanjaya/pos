import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pos/application/expense/expense_bloc.dart';
import 'package:pos/domain/model/expense_model.dart';
import 'package:pos/presentation/core/formatter.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExpenseCard extends StatelessWidget {
  final ExpenseModel expenseModel;

  const ExpenseCard({
    Key key,
    this.expenseModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ExpenseBloc _expenseBloc = context.read<ExpenseBloc>();

    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: () {
          return _expenseBloc
              .add(ExpenseEvent.setSelectedExpense(expenseModel));
        },
        child: Container(
          height: sItemCard,
          padding: EdgeInsets.all(
            sPaddingContainer,
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: sLineNormal,
                color: kPrimaryColor,
              ),
            ),
          ),
          child: Row(
            children: [
              // Date Time
              Expanded(
                flex: 3,
                child: Text(
                  DateFormat("yyyy-MMM-dd").format(expenseModel.dateTime),
                  textAlign: TextAlign.left,
                  style: yTextNormalAccent,
                ),
              ),
              // Item Name
              Expanded(
                flex: 5,
                child: Text(
                  expenseModel.itemName,
                  textAlign: TextAlign.left,
                  style: yTextNormal,
                ),
              ),
              // Item Cost
              Expanded(
                flex: 3,
                child: Text(
                  Formatter().decimalGrouping(expenseModel.itemCost),
                  textAlign: TextAlign.right,
                  style: yTextBold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
