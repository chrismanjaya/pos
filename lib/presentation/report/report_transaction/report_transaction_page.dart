import 'package:flutter/material.dart';
import 'package:pos/domain/model/transaction_filter_model.dart';
import 'package:pos/domain/model/transaction_report_model.dart';
import 'package:pos/presentation/core/formatter.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:pos/presentation/report/report_transaction/report_transaction_export_excel.dart';
import 'package:pos/presentation/report/report_transaction/report_transaction_export_pdf.dart';
import 'package:pos/presentation/report/report_transaction/transaction_data_source.dart';
import 'package:pos/routes/router.gr.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:auto_route/auto_route.dart';

class ReportTransactionPage extends StatelessWidget {
  final List<TransactionReportModel> listTransactionReportModel;
  final TransactionFilterModel filter;

  const ReportTransactionPage({
    Key key,
    @required this.listTransactionReportModel,
    @required this.filter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TransactionDataSource _transactionDataSource =
        TransactionDataSource(listTransactionReportModel);
    List<Cell> columns = [
      Cell("No", 0.4),
      Cell("Reference No", 1),
      Cell("Transaction Date", 0.8),
      Cell("Branch Name", 1.1),
      Cell("Customer Name", 1.3),
      Cell("Cashier", 1),
      Cell("Payment Method", 0.7),
      Cell("Status", 0.65),
      Cell("Subtotal", 0.65),
      Cell("Discount", 0.65),
      Cell("Total", 0.65),
    ];
    double total = 0;
    double subtotal = 0;
    double discount = 0;
    double done = 0;
    double pending = 0;
    double cancelled = 0;

    for (TransactionReportModel transaction in listTransactionReportModel) {
      switch (transaction.status) {
        case "Done":
          done += 1;
          break;
        case "Pending":
          pending += 1;
          break;
        case "Cancelled":
          cancelled += 1;
          break;
        default:
          break;
      }
      subtotal += transaction.subtotal;
      discount += transaction.discount;
      total += transaction.total;
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
              ReportTransactionExportExcel().generateExcel(
                columns,
                _transactionDataSource,
                filter,
                subtotal,
                discount,
                total,
                done,
                pending,
                cancelled,
                done + pending + cancelled,
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
              ReportTransactionExportPdf().generatePdf(
                columns,
                _transactionDataSource,
                filter,
                subtotal,
                discount,
                total,
                done,
                pending,
                cancelled,
                done + pending + cancelled,
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
                    source: _transactionDataSource,
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
              // Footer
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
                      // Subtotal
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: sPaddingBody),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Subtotal",
                              style: yTextMiniAccent,
                            ),
                            Text(
                              Formatter().decimalGrouping(subtotal),
                              style: yTextBold,
                            ),
                          ],
                        ),
                      ),
                      // Discount
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: sPaddingBody),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Discount",
                              style: yTextMiniAccent,
                            ),
                            Text(
                              Formatter().decimalGrouping(discount),
                              style: yTextBold,
                            ),
                          ],
                        ),
                      ),
                      // Total
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: sPaddingBody),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Total",
                              style: yTextMiniAccent,
                            ),
                            Text(
                              Formatter().decimalGrouping(total),
                              style: yTextBold,
                            ),
                          ],
                        ),
                      ),
                      VerticalDivider(
                        color: kThirdColor,
                      ),
                      // Done
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: sPaddingBody),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Done",
                              style: yTextMiniAccent,
                            ),
                            Text(
                              Formatter().decimalGrouping(done),
                              style: yTextBold,
                            ),
                          ],
                        ),
                      ),
                      // Pending
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: sPaddingBody),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Pending",
                              style: yTextMiniAccent,
                            ),
                            Text(
                              Formatter().decimalGrouping(pending),
                              style: yTextBold,
                            ),
                          ],
                        ),
                      ),
                      // Cancelled
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: sPaddingBody),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Cancelled",
                              style: yTextMiniAccent,
                            ),
                            Text(
                              Formatter().decimalGrouping(cancelled),
                              style: yTextBold,
                            ),
                          ],
                        ),
                      ),
                      // Total Transaction
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: sPaddingBody),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Total Transaction",
                              style: yTextMiniAccent,
                            ),
                            Text(
                              Formatter()
                                  .decimalGrouping(done + pending + cancelled),
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
