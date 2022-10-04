import 'package:flutter/material.dart';
import 'package:pos/domain/model/expense_model.dart';
import 'package:pos/domain/model/transaction_filter_model.dart';
import 'package:pos/presentation/core/formatter.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:pos/presentation/report/report_expense/expense_data_source.dart';
import 'package:pos/presentation/report/report_expense/report_expense_export_excel.dart';
import 'package:pos/presentation/report/report_expense/report_expense_export_pdf.dart';
import 'package:pos/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class ReportExpensePage extends StatelessWidget {
  final List<ExpenseModel> listExpenseModel;
  final double income;
  final TransactionFilterModel filter;

  const ReportExpensePage({
    Key key,
    @required this.listExpenseModel,
    @required this.income,
    @required this.filter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ExpenseDataSource _expenseDataSource = ExpenseDataSource(listExpenseModel);
    List<Cell> columns = [
      Cell("No", 0.4),
      Cell("Date Time", 0.7),
      Cell("Item Name", 1.9),
      Cell("Item Cost", 0.65),
    ];
    double totalIncome = income;
    double totalCost = 0;
    double totalItem = 0;
    for (ExpenseModel expense in listExpenseModel) {
      totalItem += 1;
      totalCost += expense.itemCost;
    }

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: Row(
        children: <Widget>[
          FloatingActionButton(
            mini: true,
            onPressed: () {
              return ExtendedNavigator.of(context).pop(Routes.homePage);
            },
            backgroundColor: kAccentColor,
            child: Icon(
              Icons.arrow_back,
              color: kPrimaryColor,
              size: sIcon,
            ),
          ),
          FloatingActionButton(
            mini: true,
            onPressed: () async {
              ReportExpenseExportExcel().generateExcel(
                columns,
                _expenseDataSource,
                filter,
                totalIncome,
                totalCost,
                totalIncome - totalCost,
                totalItem,
              );
            },
            backgroundColor: kUISuccessColor,
            child: Text(
              "XLS",
              style: yTextBold,
            ),
          ),
          FloatingActionButton(
            mini: true,
            onPressed: () async {
              ReportExpenseExportPdf().generatePdf(
                columns,
                _expenseDataSource,
                filter,
                totalIncome,
                totalCost,
                totalIncome - totalCost,
                totalItem,
              );
            },
            backgroundColor: kUIDangerColor,
            child: Text(
              "PDF",
              style: yTextBold,
            ),
          ),
        ],
      ),
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(sPaddingBody),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: SfDataGridTheme(
                  data: SfDataGridThemeData(
                    headerColor: kSecondColor,
                    brightness: Brightness.dark,
                    gridLineColor: kThirdColor,
                    gridLineStrokeWidth: 0.5,
                  ),
                  child: SfDataGrid(
                    rowHeight: sCellHeight,
                    source: _expenseDataSource,
                    allowSorting: true,
                    columns: columns
                        .map(
                          (Cell cell) => GridTextColumn(
                              width: cell.widthScale * sCellWidth,
                              columnName: cell.label,
                              label: Label(
                                labelName: cell.label,
                              )),
                        )
                        .toList(),
                    columnWidthMode: ColumnWidthMode.fill,
                    gridLinesVisibility: GridLinesVisibility.both,
                    headerGridLinesVisibility: GridLinesVisibility.both,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: sButtonForm,
                padding: EdgeInsets.only(left: 0.65 * sCellWidth),
                decoration: BoxDecoration(
                  color: kSecondColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 1.0,
                      spreadRadius: 0.1,
                      offset:
                          Offset(0.0, -1.0), // shadow direction: bottom right
                    )
                  ],
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      // Total Income
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: sPaddingBody),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Total Income",
                              style: yTextMiniAccent,
                            ),
                            Text(
                              Formatter().decimalGrouping(totalIncome),
                              style: yTextBold,
                            ),
                          ],
                        ),
                      ),
                      // Total Cost
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: sPaddingBody),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Total Expense",
                              style: yTextMiniAccent,
                            ),
                            Text(
                              Formatter().decimalGrouping(totalCost),
                              style: yTextBold,
                            ),
                          ],
                        ),
                      ),

                      // Total Revenue
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: sPaddingBody),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Total Revenue",
                              style: yTextMiniAccent,
                            ),
                            Text(
                              Formatter()
                                  .decimalGrouping(totalIncome - totalCost),
                              style: yTextBold,
                            ),
                          ],
                        ),
                      ),
                      VerticalDivider(
                        color: kThirdColor,
                      ),
                      // Total Item
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: sPaddingBody),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Total Item",
                              style: yTextMiniAccent,
                            ),
                            Text(
                              Formatter().decimalGrouping(totalItem),
                              style: yTextBold,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Label extends StatelessWidget {
  final String labelName;
  const Label({
    Key key,
    @required this.labelName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: sPaddingBody),
      alignment: Alignment.center,
      child: Text(
        labelName,
        style: yTextBoldAccent,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class Cell {
  String label;
  double widthScale;

  Cell(String label, double widthScale) {
    this.label = label;
    this.widthScale = widthScale;
  }
}
