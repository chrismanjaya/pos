import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_report_model.freezed.dart';

@freezed
abstract class TransactionReportModel with _$TransactionReportModel {
  factory TransactionReportModel({
    String referenceNumber,
    String branchName,
    double cashAmount,
    String cashier,
    String customerName,
    double discount,
    String paymentMethod,
    String status,
    double subtotal,
    double total,
    DateTime transactionDate,
    String createdBy,
    DateTime createdDate,
    String updatedBy,
    DateTime updatedDate,
  }) = _TransactionReportModel;

  factory TransactionReportModel.empty() => TransactionReportModel(
        referenceNumber: "",
        branchName: "",
        cashAmount: 0,
        cashier: "",
        customerName: "",
        discount: 0,
        paymentMethod: "",
        status: "",
        subtotal: 0,
        total: 0,
        transactionDate: DateTime.now(),
        createdBy: "",
        createdDate: DateTime.now(),
        updatedBy: "",
        updatedDate: DateTime.now(),
      );
}
