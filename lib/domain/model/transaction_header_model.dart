import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/model/transaction_detail_model.dart';

part 'transaction_header_model.freezed.dart';

@freezed
abstract class TransactionHeaderModel with _$TransactionHeaderModel {
  factory TransactionHeaderModel({
    String id,
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
    List<TransactionDetailModel> listTransactionDetailModel,
  }) = _TransactionHeaderModel;

  factory TransactionHeaderModel.empty() => TransactionHeaderModel(
        id: "",
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
        listTransactionDetailModel: [],
      );
}
