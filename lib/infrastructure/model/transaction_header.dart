import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_header.freezed.dart';

@freezed
abstract class TransactionHeader with _$TransactionHeader {
  factory TransactionHeader({
    String id,
    String branchName,
    int cashAmount,
    String cashier,
    String customerName,
    int discount,
    String paymentMethod,
    String status,
    int subtotal,
    int total,
    Timestamp transactionDate,
    String createdBy,
    Timestamp createdDate,
    String updatedBy,
    Timestamp updatedDate,
  }) = _TransactionHeader;

  factory TransactionHeader.empty() => TransactionHeader(
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
        transactionDate: Timestamp.now(),
        createdBy: "",
        createdDate: Timestamp.now(),
        updatedBy: "",
        updatedDate: Timestamp.now(),
      );
}
