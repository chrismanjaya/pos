import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pos/domain/model/transaction_detail_model.dart';
import 'package:pos/domain/model/transaction_header_model.dart';
import 'package:pos/infrastructure/model/transaction_header.dart';

class TransactionHeaderModelMapper {
  TransactionHeaderModel toTransactionHeaderModel(
    TransactionHeader transactionHeader,
    List<TransactionDetailModel> listTransactionDetailModel,
  ) {
    return TransactionHeaderModel(
      id: transactionHeader.id,
      branchName: transactionHeader.branchName,
      cashAmount: transactionHeader.cashAmount.toDouble(),
      cashier: transactionHeader.cashier,
      customerName: transactionHeader.customerName,
      discount: transactionHeader.discount.toDouble(),
      paymentMethod: transactionHeader.paymentMethod,
      status: transactionHeader.status,
      subtotal: transactionHeader.subtotal.toDouble(),
      total: transactionHeader.total.toDouble(),
      transactionDate: transactionHeader.transactionDate.toDate(),
      createdBy: transactionHeader.createdBy,
      createdDate: (transactionHeader.createdDate == null)
          ? DateTime(0)
          : transactionHeader.createdDate.toDate(),
      updatedBy: transactionHeader.updatedBy,
      updatedDate: (transactionHeader.updatedDate == null)
          ? DateTime(0)
          : transactionHeader.updatedDate.toDate(),
      listTransactionDetailModel: listTransactionDetailModel,
    );
  }

  TransactionHeader toTransactionHeader(
      TransactionHeaderModel transactionHeaderModel) {
    return TransactionHeader(
      id: transactionHeaderModel.id,
      branchName: transactionHeaderModel.branchName,
      cashAmount: transactionHeaderModel.cashAmount.toInt(),
      cashier: transactionHeaderModel.cashier,
      customerName: transactionHeaderModel.customerName,
      discount: transactionHeaderModel.discount.toInt(),
      paymentMethod: transactionHeaderModel.paymentMethod,
      status: transactionHeaderModel.status,
      subtotal: transactionHeaderModel.subtotal.toInt(),
      total: transactionHeaderModel.total.toInt(),
      transactionDate:
          Timestamp.fromDate(transactionHeaderModel.transactionDate),
      createdBy: transactionHeaderModel.createdBy,
      createdDate: (transactionHeaderModel.createdDate == null)
          ? Timestamp(0, 0)
          : Timestamp.fromDate(transactionHeaderModel.createdDate),
      updatedBy: transactionHeaderModel.updatedBy,
      updatedDate: (transactionHeaderModel.updatedDate == null)
          ? Timestamp(0, 0)
          : Timestamp.fromDate(transactionHeaderModel.updatedDate),
    );
  }
}
