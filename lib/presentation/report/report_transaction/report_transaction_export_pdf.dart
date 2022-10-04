import 'dart:ui';

import 'package:pos/domain/model/branch_model.dart';
import 'package:pos/domain/model/transaction_filter_model.dart';
import 'package:pos/presentation/core/formatter.dart';
import 'package:pos/presentation/core/widget_file.dart';
import 'package:pos/presentation/report/report_transaction/report_transaction_page.dart';
import 'package:pos/presentation/report/report_transaction/transaction_data_source.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

class ReportTransactionExportPdf {
  final double lineSpacing = 10;
  final double columnWidth = 85;

  final PdfStringFormat stringFormatCenter = PdfStringFormat(
    alignment: PdfTextAlignment.center,
    lineAlignment: PdfVerticalAlignment.middle,
    wordWrap: PdfWordWrapType.word,
  );

  final PdfStringFormat stringFormatLeft = PdfStringFormat(
    alignment: PdfTextAlignment.left,
    lineAlignment: PdfVerticalAlignment.middle,
    wordWrap: PdfWordWrapType.word,
  );

  final PdfStringFormat stringFormatRight = PdfStringFormat(
    alignment: PdfTextAlignment.right,
    lineAlignment: PdfVerticalAlignment.middle,
    wordWrap: PdfWordWrapType.word,
  );

  final tablePadding = PdfPaddings(
    left: 6,
    right: 6,
    top: 1,
    bottom: 1,
  );

  Rect _bounds(double position) {
    return Rect.fromLTRB(
      0,
      position,
      0,
      0,
    );
  }

  final fontTextTitle = PdfStandardFont(
    PdfFontFamily.helvetica,
    20,
    style: PdfFontStyle.bold,
  );

  final fontTextSubtitle = PdfStandardFont(
    PdfFontFamily.helvetica,
    14,
    style: PdfFontStyle.regular,
  );

  final fontTextNormal = PdfStandardFont(
    PdfFontFamily.helvetica,
    12,
    style: PdfFontStyle.regular,
  );

  final fontTableHeader = PdfStandardFont(
    PdfFontFamily.helvetica,
    9,
    style: PdfFontStyle.bold,
  );

  final fontTableBody = PdfStandardFont(
    PdfFontFamily.helvetica,
    7,
    style: PdfFontStyle.regular,
  );

  Future<void> generatePdf(
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
    // Setup PDF Document Config
    PdfDocument document = _setPdfDocument();
    PdfPage page = document.pages.add();
    double pagePosition = 0;

    // PDF: Title
    const String title = "Transaction Report";
    page.graphics.drawString(
      title,
      fontTextTitle,
      bounds: _bounds(pagePosition),
    );
    pagePosition += 20 + lineSpacing;

    // PDF: List Branch
    String branch = "";
    for (BranchModel branchModel in filter.listBranchModel) {
      branch = branch + branchModel.branchName + " - ";
    }
    page.graphics.drawString(
      branch.substring(0, branch.length - 3),
      fontTextSubtitle,
      bounds: _bounds(pagePosition),
    );
    pagePosition += 20;

    // PDF: Date
    String date = Formatter().dateTimeToDateString(filter.dateFrom) +
        " to " +
        Formatter().dateTimeToDateString(filter.dateTo);
    page.graphics.drawString(
      date,
      fontTextSubtitle,
      bounds: _bounds(pagePosition),
    );
    pagePosition += 20 + lineSpacing;

    // PDF: Table
    PdfGrid table = _setTable();

    table.columns.add(
      count: columnHeader.length,
    );
    table.headers.add(1);
    PdfGridRow header = table.headers[0];
    _setTableHeader(
      table,
      header,
      columnHeader,
    );
    _setTableBody(
      table,
      transactionDataSource,
    );
    final result = table.draw(
      page: page,
      bounds: _bounds(pagePosition),
    );
    pagePosition = result.bounds.bottom;

    // PDF: Table Footer
    PdfGrid tableFooter = _setTable();
    tableFooter.columns.add(
      count: 2,
    );
    _setTableFooter(
      tableFooter,
      subtotal,
      discount,
      total,
      done,
      pending,
      cancelled,
      totalTransaction,
    );
    tableFooter.draw(
      page: result.page,
      bounds: _bounds(pagePosition),
    );

    // Generate PDF Document
    _generatePdfDocument(document);
  }

  PdfDocument _setPdfDocument() {
    PdfDocument document = PdfDocument(
      conformanceLevel: PdfConformanceLevel.none,
    );
    document.compressionLevel = PdfCompressionLevel.best;
    document.pageSettings.size = PdfPageSize.a4;
    document.pageSettings.orientation = PdfPageOrientation.landscape;
    return document;
  }

  PdfGrid _setTable() {
    PdfGrid table = PdfGrid();
    table.style = PdfGridStyle(font: fontTableBody, cellPadding: tablePadding);
    return table;
  }

  void _setTableHeader(
    PdfGrid table,
    PdfGridRow header,
    List<Cell> columnHeader,
  ) {
    for (int i = 0; i < columnHeader.length; i++) {
      table.columns[i].width = columnWidth * columnHeader[i].widthScale;
      header.cells[i].style = PdfGridCellStyle(
        font: fontTableHeader,
        cellPadding: tablePadding,
      );
      header.cells[i].style.stringFormat = stringFormatCenter;
      header.cells[i].value = columnHeader[i].label;
    }
  }

  void _setTableBody(
    PdfGrid table,
    TransactionDataSource transactionDataSource,
  ) {
    for (DataGridRow dataRow in transactionDataSource.dataGridRows) {
      final data = dataRow.getCells();
      PdfGridRow row = table.rows.add();
      for (int i = 0; i < data.length; i++) {
        String value = "";
        switch (data[i].columnName) {
          case "No":
            row.cells[i].style.stringFormat = stringFormatCenter;
            value = data[i].value.toString();
            break;
          case "Reference No":
            row.cells[i].style.stringFormat = stringFormatCenter;
            value = data[i].value.toString().toUpperCase();
            break;
          case "Transaction Date":
            row.cells[i].style.stringFormat = stringFormatCenter;
            value = Formatter().dateTimeToString(data[i].value);
            break;
          case "Branch Name":
            row.cells[i].style.stringFormat = stringFormatCenter;
            value = data[i].value.toString();
            break;
          case "Customer Name":
            row.cells[i].style.stringFormat = stringFormatCenter;
            value = data[i].value.toString();
            break;
          case "Cashier":
            row.cells[i].style.stringFormat = stringFormatCenter;
            value = data[i].value.toString();
            break;
          case "Payment Method":
            row.cells[i].style.stringFormat = stringFormatCenter;
            value = data[i].value.toString().toUpperCase();
            break;
          case "Status":
            row.cells[i].style.stringFormat = stringFormatCenter;
            value = data[i].value.toString().toUpperCase();
            break;
          case "Subtotal":
            row.cells[i].style.stringFormat = stringFormatRight;
            value = Formatter().decimalGrouping(data[i].value);
            break;
          case "Discount":
            row.cells[i].style.stringFormat = stringFormatRight;
            value = Formatter().decimalGrouping(data[i].value);
            break;
          case "Total":
            row.cells[i].style.stringFormat = stringFormatRight;
            value = Formatter().decimalGrouping(data[i].value);
            break;
        }
        row.cells[i].value = value;
      }
    }
  }

  void _setTableFooter(
    PdfGrid table,
    double subtotal,
    double discount,
    double total,
    double done,
    double pending,
    double cancelled,
    double totalTransaction,
  ) {
    // Config Table
    table.columns[0].width = columnWidth * 3.3;
    table.columns[1].width = columnWidth * 5.6;

    // Subtotal
    PdfGridRow footer = table.rows.add();
    footer.cells[0].value = "Subtotal";
    footer.cells[0].style = PdfGridCellStyle(
      font: fontTableHeader,
      cellPadding: tablePadding,
    );
    footer.cells[0].style.stringFormat = stringFormatLeft;
    footer.cells[1].value = Formatter().decimalGrouping(subtotal);
    footer.cells[1].style = PdfGridCellStyle(
      font: fontTableHeader,
      cellPadding: tablePadding,
    );
    footer.cells[1].style.stringFormat = stringFormatRight;

    // Total Discount
    footer = table.rows.add();
    footer.cells[0].value = "Total Discount";
    footer.cells[0].style = PdfGridCellStyle(
      font: fontTableHeader,
      cellPadding: tablePadding,
    );
    footer.cells[0].style.stringFormat = stringFormatLeft;
    footer.cells[1].value = Formatter().decimalGrouping(discount);
    footer.cells[1].style = PdfGridCellStyle(
      font: fontTableHeader,
      cellPadding: tablePadding,
    );
    footer.cells[1].style.stringFormat = stringFormatRight;

    // Total Transaction
    footer = table.rows.add();
    footer.cells[0].value = "Total Transaction";
    footer.cells[0].style = PdfGridCellStyle(
      font: fontTableHeader,
      cellPadding: tablePadding,
    );
    footer.cells[0].style.stringFormat = stringFormatLeft;
    footer.cells[1].value = Formatter().decimalGrouping(total);
    footer.cells[1].style = PdfGridCellStyle(
      font: fontTableHeader,
      cellPadding: tablePadding,
    );
    footer.cells[1].style.stringFormat = stringFormatRight;

    // Total Done Transaction
    footer = table.rows.add();
    footer.cells[0].value = "Total Done Transaction";
    footer.cells[0].style = PdfGridCellStyle(
      font: fontTableHeader,
      cellPadding: tablePadding,
    );
    footer.cells[0].style.stringFormat = stringFormatLeft;
    footer.cells[1].value = Formatter().decimalGrouping(done);
    footer.cells[1].style = PdfGridCellStyle(
      font: fontTableHeader,
      cellPadding: tablePadding,
    );
    footer.cells[1].style.stringFormat = stringFormatRight;

    // Total Pending Transaction
    footer = table.rows.add();
    footer.cells[0].value = "Total Pending Transaction";
    footer.cells[0].style = PdfGridCellStyle(
      font: fontTableHeader,
      cellPadding: tablePadding,
    );
    footer.cells[0].style.stringFormat = stringFormatLeft;
    footer.cells[1].value = Formatter().decimalGrouping(pending);
    footer.cells[1].style = PdfGridCellStyle(
      font: fontTableHeader,
      cellPadding: tablePadding,
    );
    footer.cells[1].style.stringFormat = stringFormatRight;

    // Total Cancelled Transaction
    footer = table.rows.add();
    footer.cells[0].value = "Total Cancelled Transaction";
    footer.cells[0].style = PdfGridCellStyle(
      font: fontTableHeader,
      cellPadding: tablePadding,
    );
    footer.cells[0].style.stringFormat = stringFormatLeft;
    footer.cells[1].value = Formatter().decimalGrouping(cancelled);
    footer.cells[1].style = PdfGridCellStyle(
      font: fontTableHeader,
      cellPadding: tablePadding,
    );
    footer.cells[1].style.stringFormat = stringFormatRight;

    // Total Transaction
    footer = table.rows.add();
    footer.cells[0].value = "Total Transaction";
    footer.cells[0].style = PdfGridCellStyle(
      font: fontTableHeader,
      cellPadding: tablePadding,
    );
    footer.cells[0].style.stringFormat = stringFormatLeft;
    footer.cells[1].value = Formatter().decimalGrouping(totalTransaction);
    footer.cells[1].style = PdfGridCellStyle(
      font: fontTableHeader,
      cellPadding: tablePadding,
    );
    footer.cells[1].style.stringFormat = stringFormatRight;
  }

  void _generatePdfDocument(PdfDocument document) {
    List<int> bytes = document.save();
    print("bytes: " + bytes.toString());
    document.dispose();
    String fileName = Formatter().generateFileName("Transaction", ".pdf");
    saveAndLaunchFile(
      bytes,
      fileName,
    );
  }
}
