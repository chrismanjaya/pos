import 'package:flutter/material.dart';
import 'package:pos/domain/model/transaction_report_model.dart';
import 'package:pos/presentation/core/formatter.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class TransactionDataSource extends DataGridSource {
  List<DataGridRow> dataGridRows = [];

  @override
  List<DataGridRow> get rows => dataGridRows;

  TransactionDataSource(List<TransactionReportModel> listTransaction) {
    int index = 0;
    dataGridRows = listTransaction.map(
      (TransactionReportModel transactionReportModel) {
        index++;
        return DataGridRow(
          cells: [
            DataGridCell<int>(
              columnName: "No",
              value: index,
            ),
            DataGridCell<String>(
              columnName: "Reference No",
              value: transactionReportModel.referenceNumber,
            ),
            DataGridCell<DateTime>(
              columnName: "Transaction Date",
              value: transactionReportModel.transactionDate,
            ),
            DataGridCell<String>(
              columnName: "Branch Name",
              value: transactionReportModel.branchName,
            ),
            DataGridCell<String>(
              columnName: "Customer Name",
              value: transactionReportModel.customerName,
            ),
            DataGridCell<String>(
              columnName: "Cashier",
              value: transactionReportModel.cashier,
            ),
            DataGridCell<String>(
              columnName: "Payment Method",
              value: transactionReportModel.paymentMethod,
            ),
            DataGridCell<String>(
              columnName: "Status",
              value: transactionReportModel.status,
            ),
            DataGridCell<double>(
              columnName: "Subtotal",
              value: transactionReportModel.subtotal,
            ),
            DataGridCell<double>(
              columnName: "Discount",
              value: transactionReportModel.discount,
            ),
            DataGridCell<double>(
              columnName: "Total",
              value: transactionReportModel.total,
            ),
          ],
        );
      },
    ).toList();
  }

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        color: kSecondColor,
        cells: row.getCells().map<Widget>(
          // ignore: missing_return
          (dataGridCell) {
            switch (dataGridCell.columnName) {
              case "No":
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: sPaddingBody),
                  alignment: Alignment.center,
                  child: Text(
                    dataGridCell.value.toString(),
                    style: yTextNormal,
                  ),
                );
                break;
              case "Reference No":
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: sPaddingBody),
                  alignment: Alignment.center,
                  child: Text(
                    dataGridCell.value.toString().toUpperCase(),
                    style: yTextNormal,
                  ),
                );
                break;
              case "Transaction Date":
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: sPaddingBody),
                  alignment: Alignment.center,
                  child: Text(
                    Formatter().dateTimeToString(dataGridCell.value),
                    style: yTextNormal,
                  ),
                );
                break;
              case "Branch Name":
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: sPaddingBody),
                  alignment: Alignment.center,
                  child: Text(
                    dataGridCell.value.toString(),
                    style: yTextNormal,
                  ),
                );
                break;
              case "Customer Name":
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: sPaddingBody),
                  alignment: Alignment.center,
                  child: Text(
                    dataGridCell.value.toString(),
                    style: yTextNormal,
                  ),
                );
                break;
              case "Cashier":
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: sPaddingBody),
                  alignment: Alignment.center,
                  child: Text(
                    dataGridCell.value.toString(),
                    style: yTextNormal,
                  ),
                );
                break;
              case "Payment Method":
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: sPaddingBody),
                  alignment: Alignment.center,
                  child: Text(
                    dataGridCell.value.toString(),
                    style: yTextNormal,
                  ),
                );
                break;
              case "Status":
                Color statusColor = kSecondColor;
                switch (dataGridCell.value) {
                  case "Done":
                    statusColor = kUISuccessColor;
                    break;
                  case "Pending":
                    statusColor = kUIWarningColor;
                    break;
                  case "Cancelled":
                    statusColor = kUIDangerColor;
                    break;
                  default:
                    break;
                }
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: sPaddingBody),
                  alignment: Alignment.center,
                  child: Text(
                    dataGridCell.value.toString(),
                    style: yTextNormal.copyWith(
                      color: statusColor,
                    ),
                  ),
                );
                break;
              case "Subtotal":
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: sPaddingBody),
                  alignment: Alignment.centerRight,
                  child: Text(
                    Formatter().decimalGrouping(dataGridCell.value),
                    style: yTextNormal,
                  ),
                );
                break;
              case "Discount":
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: sPaddingBody),
                  alignment: Alignment.centerRight,
                  child: Text(
                    Formatter().decimalGrouping(dataGridCell.value),
                    style: yTextNormal,
                  ),
                );
                break;
              case "Total":
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: sPaddingBody),
                  alignment: Alignment.centerRight,
                  child: Text(
                    Formatter().decimalGrouping(dataGridCell.value),
                    style: yTextNormal,
                  ),
                );
                break;
            }
          },
        ).toList());
  }
}
