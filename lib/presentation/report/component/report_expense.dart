import 'package:flutter/material.dart';
import 'package:pos/application/report/report_transaction_bloc.dart';
import 'package:pos/domain/model/expense_model.dart';
import 'package:pos/domain/model/transaction_report_model.dart';
import 'package:pos/presentation/core/formatter.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:pos/presentation/report/component/chart_data.dart';
import 'package:pos/presentation/report/component/chart_expense.dart';
import 'package:pos/presentation/report/report_expense/report_expense_page.dart';

class ReportExpense extends StatelessWidget {
  const ReportExpense({
    Key key,
    @required this.state,
  }) : super(key: key);

  final ReportTransactionState state;

  @override
  Widget build(BuildContext context) {
    double income = 0;
    for (TransactionReportModel transactionReportModel
        in state.listTransactionReportModel) {
      if (transactionReportModel.status == "Done") {
        income += transactionReportModel.total;
      }
    }
    double expense = 0;
    for (ExpenseModel expenseModel in state.listExpenseModel) {
      expense += expenseModel.itemCost;
    }

    List<ChartData> _listChartData = [];
    _listChartData.add(ChartData("Income", income.toInt(),
        "Income: " + Formatter().decimalGrouping(income)));
    _listChartData.add(ChartData("Expense", expense.toInt(),
        "Expense: " + Formatter().decimalGrouping(expense)));

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Report Expense: Header
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Title
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Chart Expense",
                        style: yTextNormal,
                      ),
                      Text(
                        Formatter().dateTimeToDateString(
                                state.transactionFilterModel.dateFrom) +
                            " to " +
                            Formatter().dateTimeToDateString(
                                state.transactionFilterModel.dateTo),
                        style: yTextMiniAccent,
                      ),
                    ],
                  ),
                ),
              ),
              // Button
              Container(
                margin: EdgeInsets.symmetric(horizontal: sPaddingBody),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ReportExpensePage(
                          listExpenseModel: state.listExpenseModel,
                          income: income,
                          filter: state.transactionFilterModel,
                        ),
                      ),
                    );
                  },
                  style: yButtonFormDark,
                  child: Text(
                    "View Detail",
                    style: yTextNormalLink,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: sPaddingBody,
          ),
          // Report Expense: Chart
          Container(
            child: ChartExpense(
              chartData: _listChartData,
            ),
          ),
        ],
      ),
    );
  }
}
