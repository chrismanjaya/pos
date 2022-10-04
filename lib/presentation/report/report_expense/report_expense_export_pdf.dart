import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:pos/domain/model/transaction_filter_model.dart';
import 'package:pos/presentation/core/formatter.dart';
import 'package:pos/presentation/core/widget_file.dart';
import 'package:pos/presentation/report/report_expense/expense_data_source.dart';
import 'package:pos/presentation/report/report_expense/report_expense_page.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

class ReportExpenseExportPdf {
  final double lineSpacing = 12;
  final double columnWidth = 205;

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
    left: 12,
    right: 12,
    top: 3,
    bottom: 3,
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
    14,
    style: PdfFontStyle.bold,
  );

  final fontTableBody = PdfStandardFont(
    PdfFontFamily.helvetica,
    12,
    style: PdfFontStyle.regular,
  );

  Future<void> generatePdf(
    List<Cell> columnHeader,
    ExpenseDataSource expenseDataSource,
    TransactionFilterModel filter,
    double totalIncome,
    double totalCost,
    double totalRevenue,
    double totalItem,
  ) async {
    // Setup PDF Document Config
    PdfDocument document = _setPdfDocument();
    PdfPage page = document.pages.add();
    double pagePosition = 0;

    // PDF: Title
    const String title = "Expense Report";
    page.graphics.drawString(
      title,
      fontTextTitle,
      bounds: _bounds(pagePosition),
    );
    pagePosition += 20 + lineSpacing;

    // PDF: Subtitle
    String subtitle = Formatter().dateTimeToDateString(filter.dateFrom) +
        " to " +
        Formatter().dateTimeToDateString(filter.dateTo);
    page.graphics.drawString(
      subtitle,
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
      expenseDataSource,
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
      totalIncome,
      totalCost,
      totalRevenue,
      totalItem,
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
    ExpenseDataSource expenseDataSource,
  ) {
    for (DataGridRow dataRow in expenseDataSource.dataGridRows) {
      final data = dataRow.getCells();
      PdfGridRow row = table.rows.add();

      for (int i = 0; i < data.length; i++) {
        String value = "";
        switch (data[i].columnName) {
          case "No":
            row.cells[i].style.stringFormat = stringFormatCenter;
            value = data[i].value.toString();
            break;
          case "Date Time":
            row.cells[i].style.stringFormat = stringFormatCenter;
            value = Formatter().dateTimeToDateString(data[i].value);
            break;
          case "Item Name":
            row.cells[i].style.stringFormat = stringFormatCenter;
            value = data[i].value.toString();
            break;
          case "Item Cost":
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
    double totalIncome,
    double totalCost,
    double totalRevenue,
    double totalItem,
  ) {
    // Config Table
    table.columns[0].width = columnWidth * 1.1;
    table.columns[1].width = columnWidth * 2.55;

    // Total Cost
    PdfGridRow footer = table.rows.add();
    footer.cells[0].value = "Total Cost";
    footer.cells[0].style = PdfGridCellStyle(
      font: fontTableHeader,
      cellPadding: tablePadding,
    );
    footer.cells[0].style.stringFormat = stringFormatCenter;
    footer.cells[1].value = Formatter().decimalGrouping(totalCost);
    footer.cells[1].style = PdfGridCellStyle(
      font: fontTableHeader,
      cellPadding: tablePadding,
    );
    footer.cells[1].style.stringFormat = stringFormatRight;

    // Total Income
    footer = table.rows.add();
    footer.cells[0].value = "Total Income";
    footer.cells[0].style = PdfGridCellStyle(
      font: fontTableHeader,
      cellPadding: tablePadding,
    );
    footer.cells[0].style.stringFormat = stringFormatCenter;
    footer.cells[1].value = Formatter().decimalGrouping(totalIncome);
    footer.cells[1].style = PdfGridCellStyle(
      font: fontTableHeader,
      cellPadding: tablePadding,
    );
    footer.cells[1].style.stringFormat = stringFormatRight;

    // Total Revenue
    footer = table.rows.add();
    footer.cells[0].value = "Total Revenue";
    footer.cells[0].style = PdfGridCellStyle(
      font: fontTableHeader,
      cellPadding: tablePadding,
    );
    footer.cells[0].style.stringFormat = stringFormatCenter;
    footer.cells[1].value = Formatter().decimalGrouping(totalRevenue);
    footer.cells[1].style = PdfGridCellStyle(
      font: fontTableHeader,
      cellPadding: tablePadding,
    );
    footer.cells[1].style.stringFormat = stringFormatRight;

    // Total Item
    footer = table.rows.add();
    footer.cells[0].value = "Total Item";
    footer.cells[0].style = PdfGridCellStyle(
      font: fontTableHeader,
      cellPadding: tablePadding,
    );
    footer.cells[0].style.stringFormat = stringFormatCenter;
    footer.cells[1].value = Formatter().decimalGrouping(totalItem);
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
    String fileName = Formatter().generateFileName("Expense", ".pdf");
    saveAndLaunchFile(
      bytes,
      fileName,
    );
  }
}
