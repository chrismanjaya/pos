import 'package:excel/excel.dart';
import 'package:pos/domain/model/transaction_filter_model.dart';
import 'package:pos/presentation/core/formatter.dart';
import 'package:pos/presentation/core/widget_file.dart';
import 'package:pos/presentation/report/report_expense/expense_data_source.dart';
import 'package:pos/presentation/report/report_expense/report_expense_page.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class ReportExpenseExportExcel {
  final CellStyle cellStyleTitle = CellStyle(
    fontFamily: getFontFamily(
      FontFamily.Arial,
    ),
    fontSize: 20,
    verticalAlign: VerticalAlign.Center,
    horizontalAlign: HorizontalAlign.Center,
    bold: true,
  );

  final CellStyle cellStyleSubtitle = CellStyle(
    fontFamily: getFontFamily(
      FontFamily.Arial,
    ),
    fontSize: 14,
    verticalAlign: VerticalAlign.Center,
    horizontalAlign: HorizontalAlign.Center,
    bold: false,
  );
  final CellStyle cellStyleTableHeader = CellStyle(
    fontFamily: getFontFamily(
      FontFamily.Arial,
    ),
    fontSize: 12,
    verticalAlign: VerticalAlign.Center,
    horizontalAlign: HorizontalAlign.Center,
    bold: true,
  );
  final CellStyle cellStyleTableBodyCenter = CellStyle(
    fontFamily: getFontFamily(
      FontFamily.Arial,
    ),
    fontSize: 12,
    verticalAlign: VerticalAlign.Center,
    horizontalAlign: HorizontalAlign.Center,
    bold: false,
  );
  final CellStyle cellStyleTableBodyLeft = CellStyle(
    fontFamily: getFontFamily(
      FontFamily.Arial,
    ),
    fontSize: 12,
    verticalAlign: VerticalAlign.Center,
    horizontalAlign: HorizontalAlign.Left,
    bold: false,
  );
  final CellStyle cellStyleTableBodyRight = CellStyle(
    fontFamily: getFontFamily(
      FontFamily.Arial,
    ),
    fontSize: 12,
    verticalAlign: VerticalAlign.Center,
    horizontalAlign: HorizontalAlign.Right,
    bold: false,
  );
  final CellStyle cellStyleTableFooter = CellStyle(
    fontFamily: getFontFamily(
      FontFamily.Arial,
    ),
    fontSize: 12,
    verticalAlign: VerticalAlign.Center,
    horizontalAlign: HorizontalAlign.Left,
    bold: true,
  );
  final CellStyle cellStyleTableFooterValue = CellStyle(
    fontFamily: getFontFamily(
      FontFamily.Arial,
    ),
    fontSize: 12,
    verticalAlign: VerticalAlign.Center,
    horizontalAlign: HorizontalAlign.Right,
    bold: true,
  );

  Future<void> generateExcel(
    List<Cell> columnHeader,
    ExpenseDataSource expenseDataSource,
    TransactionFilterModel filter,
    double totalIncome,
    double totalCost,
    double totalRevenue,
    double totalItem,
  ) async {
    int positionX = 65;
    int positionY = 0;

    // Setup Excel File
    final Excel excel = Excel.createExcel();

    // Setup Sheet
    Sheet sheet = excel["Expense Report"];
    excel.delete("Sheet1");

    // Add Title
    positionY++;
    sheet.merge(
      CellIndex.indexByString(
        String.fromCharCode(positionX) + positionY.toString(),
      ),
      CellIndex.indexByString(
        String.fromCharCode(positionX + columnHeader.length) +
            positionY.toString(),
      ),
    );
    final Data cellTitle = sheet.cell(
      CellIndex.indexByString(
        String.fromCharCode(positionX) + positionY.toString(),
      ),
    );
    cellTitle.value = "Report Expense";
    cellTitle.cellStyle = cellStyleTitle;

    // Add Subtitle
    positionY++;
    sheet.merge(
      CellIndex.indexByString(
        String.fromCharCode(positionX) + positionY.toString(),
      ),
      CellIndex.indexByString(
        String.fromCharCode(positionX + columnHeader.length) +
            positionY.toString(),
      ),
    );
    final Data cellSubtitle = sheet.cell(
      CellIndex.indexByString(
        String.fromCharCode(positionX) + positionY.toString(),
      ),
    );
    cellSubtitle.value = Formatter().dateTimeToDateString(filter.dateFrom) +
        " to " +
        Formatter().dateTimeToDateString(filter.dateTo);
    cellSubtitle.cellStyle = cellStyleSubtitle;

    // Add Table: Header
    positionY++;
    positionY++;
    for (int i = 0; i < columnHeader.length; i++) {
      final Data cellHeader = sheet.cell(
        CellIndex.indexByString(
          String.fromCharCode(positionX + i) + positionY.toString(),
        ),
      );
      cellHeader.value = columnHeader[i].label;
      cellHeader.cellStyle = cellStyleTableHeader;
    }

    // Add Table: Body
    for (DataGridRow dataGridRow in expenseDataSource.dataGridRows) {
      positionY++;
      final data = dataGridRow.getCells();
      for (int i = 0; i < data.length; i++) {
        switch (data[i].columnName) {
          case "No":
            final Data cellHeader = sheet.cell(
              CellIndex.indexByString(
                String.fromCharCode(positionX + i) + positionY.toString(),
              ),
            );
            cellHeader.value = data[i].value.toString();
            cellHeader.cellStyle = cellStyleTableBodyCenter;
            break;
          case "Date Time":
            final Data cellHeader = sheet.cell(
              CellIndex.indexByString(
                String.fromCharCode(positionX + i) + positionY.toString(),
              ),
            );
            cellHeader.value = Formatter().dateTimeToDateString(data[i].value);
            cellHeader.cellStyle = cellStyleTableBodyCenter;
            break;
          case "Item Name":
            final Data cellHeader = sheet.cell(
              CellIndex.indexByString(
                String.fromCharCode(positionX + i) + positionY.toString(),
              ),
            );
            cellHeader.value = data[i].value.toString();
            cellHeader.cellStyle = cellStyleTableBodyCenter;
            break;
          case "Item Cost":
            final Data cellHeader = sheet.cell(
              CellIndex.indexByString(
                String.fromCharCode(positionX + i) + positionY.toString(),
              ),
            );
            cellHeader.value = Formatter().decimalGrouping(data[i].value);
            cellHeader.cellStyle = cellStyleTableBodyRight;
        }
      }
    }

    // Add Table: Footer
    // Total Income
    positionY++;
    _setTableFooter(
      sheet,
      "Total Income",
      totalIncome,
      positionX,
      positionY,
    );
    // Total Expense
    positionY++;
    _setTableFooter(
      sheet,
      "Total Expense",
      totalCost,
      positionX,
      positionY,
    );
    // Total Revenue
    positionY++;
    _setTableFooter(
      sheet,
      "Total Revenue",
      totalRevenue,
      positionX,
      positionY,
    );
    // Total Item
    positionY++;
    _setTableFooter(
      sheet,
      "Total Item",
      totalItem,
      positionX,
      positionY,
    );

    // Generate File Excel
    _generateExcelDocument(excel);
  }

  void _generateExcelDocument(Excel excel) async {
    List<int> bytes = await excel.encode();
    print("bytes: " + bytes.toString());
    String fileName = Formatter().generateFileName("Expense", ".xlsx");
    saveAndLaunchFile(
      bytes,
      fileName,
    );
  }

  void _setTableFooter(
    Sheet sheet,
    String name,
    double value,
    int positionX,
    int positionY,
  ) {
    sheet.merge(
      CellIndex.indexByString(
        String.fromCharCode(positionX) + positionY.toString(),
      ),
      CellIndex.indexByString(
        String.fromCharCode(positionX + 1) + positionY.toString(),
      ),
    );
    final Data cellFooter = sheet.cell(
      CellIndex.indexByString(
        String.fromCharCode(positionX) + positionY.toString(),
      ),
    );
    cellFooter.value = name.toUpperCase();
    cellFooter.cellStyle = cellStyleTableFooter;

    sheet.merge(
      CellIndex.indexByString(
        String.fromCharCode(positionX + 2) + positionY.toString(),
      ),
      CellIndex.indexByString(
        String.fromCharCode(positionX + 3) + positionY.toString(),
      ),
    );
    final Data cellFooterValue = sheet.cell(
      CellIndex.indexByString(
        String.fromCharCode(positionX + 2) + positionY.toString(),
      ),
    );
    cellFooterValue.value = Formatter().decimalGrouping(value);
    cellFooterValue.cellStyle = cellStyleTableFooterValue;
  }
}
