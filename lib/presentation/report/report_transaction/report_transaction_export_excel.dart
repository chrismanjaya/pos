import 'package:excel/excel.dart';
import 'package:pos/domain/model/branch_model.dart';
import 'package:pos/domain/model/transaction_filter_model.dart';
import 'package:pos/presentation/core/formatter.dart';
import 'package:pos/presentation/core/widget_file.dart';
import 'package:pos/presentation/report/report_transaction/report_transaction_page.dart';
import 'package:pos/presentation/report/report_transaction/transaction_data_source.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class ReportTransactionExportExcel {
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
    TransactionDataSource transactionDataSource,
    TransactionFilterModel filter,
    double subtotal,
    double discount,
    double total,
    double done,
    double pending,
    double cancelled,
    double totalTransaction,
  ) async {
    int positionX = 65;
    int positionY = 0;

    // Setup Excel File
    final Excel excel = Excel.createExcel();

    // Setup Sheet
    Sheet sheet = excel["Transaction Report"];
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
    cellTitle.value = "Report Transaction";
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
    String branch = "";
    for (BranchModel branchModel in filter.listBranchModel) {
      branch = branch + branchModel.branchName + " - ";
    }
    final Data cellSubtitle = sheet.cell(
      CellIndex.indexByString(
        String.fromCharCode(positionX) + positionY.toString(),
      ),
    );
    cellSubtitle.value = branch.substring(0, branch.length - 3);
    cellSubtitle.cellStyle = cellStyleSubtitle;

    // Add Subtitle 2
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
    final Data cellSubtitle2 = sheet.cell(
      CellIndex.indexByString(
        String.fromCharCode(positionX) + positionY.toString(),
      ),
    );
    cellSubtitle2.value = Formatter().dateTimeToDateString(filter.dateFrom) +
        " to " +
        Formatter().dateTimeToDateString(filter.dateTo);
    cellSubtitle2.cellStyle = cellStyleSubtitle;

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
    for (DataGridRow dataGridRow in transactionDataSource.dataGridRows) {
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
          case "Reference No":
            final Data cellHeader = sheet.cell(
              CellIndex.indexByString(
                String.fromCharCode(positionX + i) + positionY.toString(),
              ),
            );
            cellHeader.value = data[i].value.toString().toUpperCase();
            cellHeader.cellStyle = cellStyleTableBodyCenter;
            break;
          case "Transaction Date":
            final Data cellHeader = sheet.cell(
              CellIndex.indexByString(
                String.fromCharCode(positionX + i) + positionY.toString(),
              ),
            );
            cellHeader.value = Formatter().dateTimeToString(data[i].value);
            cellHeader.cellStyle = cellStyleTableBodyCenter;
            break;
          case "Branch Name":
            final Data cellHeader = sheet.cell(
              CellIndex.indexByString(
                String.fromCharCode(positionX + i) + positionY.toString(),
              ),
            );
            cellHeader.value = data[i].value.toString();
            cellHeader.cellStyle = cellStyleTableBodyCenter;
            break;
          case "Customer Name":
            final Data cellHeader = sheet.cell(
              CellIndex.indexByString(
                String.fromCharCode(positionX + i) + positionY.toString(),
              ),
            );
            cellHeader.value = data[i].value.toString();
            cellHeader.cellStyle = cellStyleTableBodyCenter;
            break;
          case "Cashier":
            final Data cellHeader = sheet.cell(
              CellIndex.indexByString(
                String.fromCharCode(positionX + i) + positionY.toString(),
              ),
            );
            cellHeader.value = data[i].value.toString();
            cellHeader.cellStyle = cellStyleTableBodyCenter;
            break;
          case "Payment Method":
            final Data cellHeader = sheet.cell(
              CellIndex.indexByString(
                String.fromCharCode(positionX + i) + positionY.toString(),
              ),
            );
            cellHeader.value = data[i].value.toString().toUpperCase();
            cellHeader.cellStyle = cellStyleTableBodyCenter;
            break;
          case "Status":
            final Data cellHeader = sheet.cell(
              CellIndex.indexByString(
                String.fromCharCode(positionX + i) + positionY.toString(),
              ),
            );
            cellHeader.value = data[i].value.toString().toUpperCase();
            cellHeader.cellStyle = cellStyleTableBodyCenter;
            break;
          case "Subtotal":
            final Data cellHeader = sheet.cell(
              CellIndex.indexByString(
                String.fromCharCode(positionX + i) + positionY.toString(),
              ),
            );
            cellHeader.value = Formatter().decimalGrouping(data[i].value);
            cellHeader.cellStyle = cellStyleTableBodyRight;
            break;
          case "Discount":
            final Data cellHeader = sheet.cell(
              CellIndex.indexByString(
                String.fromCharCode(positionX + i) + positionY.toString(),
              ),
            );
            cellHeader.value = Formatter().decimalGrouping(data[i].value);
            cellHeader.cellStyle = cellStyleTableBodyRight;
            break;
          case "Total":
            final Data cellHeader = sheet.cell(
              CellIndex.indexByString(
                String.fromCharCode(positionX + i) + positionY.toString(),
              ),
            );
            cellHeader.value = Formatter().decimalGrouping(data[i].value);
            cellHeader.cellStyle = cellStyleTableBodyRight;
            break;
        }
      }
    }

    // Add Table: Footer
    // Subtotal
    positionY++;
    _setTableFooter(
      sheet,
      "Subtotal",
      subtotal,
      positionX,
      positionY,
    );
    // Total Discount
    positionY++;
    _setTableFooter(
      sheet,
      "Total Discount",
      discount,
      positionX,
      positionY,
    );
    // Total
    positionY++;
    _setTableFooter(
      sheet,
      "Total",
      total,
      positionX,
      positionY,
    );
    // Total Done Transaction
    positionY++;
    _setTableFooter(
      sheet,
      "Total Done Transaction",
      done,
      positionX,
      positionY,
    );
    // Total Pending Transaction
    positionY++;
    _setTableFooter(
      sheet,
      "Total Pending Transaction",
      pending,
      positionX,
      positionY,
    );
    // Total Cancelled Transaction
    positionY++;
    _setTableFooter(
      sheet,
      "Total Cancelled Transaction",
      cancelled,
      positionX,
      positionY,
    );
    // Total Transaction
    positionY++;
    _setTableFooter(
      sheet,
      "Total Transaction",
      totalTransaction,
      positionX,
      positionY,
    );

    // Generate File Excel
    _generateExcelDocument(excel);
  }

  void _generateExcelDocument(Excel excel) async {
    List<int> bytes = await excel.encode();
    print("bytes: " + bytes.toString());
    String fileName = Formatter().generateFileName("Transaction", ".xlsx");
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
        String.fromCharCode(positionX + 10) + positionY.toString(),
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
