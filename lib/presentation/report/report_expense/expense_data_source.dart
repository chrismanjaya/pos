import 'package:flutter/material.dart';
import 'package:pos/domain/model/expense_model.dart';
import 'package:pos/presentation/core/formatter.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class ExpenseDataSource extends DataGridSource {
  List<DataGridRow> dataGridRows = [];

  @override
  List<DataGridRow> get rows => dataGridRows;

  ExpenseDataSource(List<ExpenseModel> listExpense) {
    int index = 0;
    dataGridRows = listExpense.map(
      (ExpenseModel expenseModel) {
        index++;
        return DataGridRow(
          cells: [
            DataGridCell<int>(
              columnName: "No",
              value: index,
            ),
            DataGridCell<DateTime>(
              columnName: "Date Time",
              value: expenseModel.dateTime,
            ),
            DataGridCell<String>(
              columnName: "Item Name",
              value: expenseModel.itemName,
            ),
            DataGridCell<double>(
              columnName: "Item Cost",
              value: expenseModel.itemCost,
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
              case "Date Time":
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: sPaddingBody),
                  alignment: Alignment.center,
                  child: Text(
                    Formatter().dateTimeToDateString(dataGridCell.value),
                    style: yTextNormal,
                  ),
                );
                break;
              case "Item Name":
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: sPaddingBody),
                  alignment: Alignment.center,
                  child: Text(
                    dataGridCell.value.toString(),
                    style: yTextNormal,
                  ),
                );
                break;
              case "Item Cost":
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
