import 'package:pos/domain/model/transaction_report_model.dart';
import 'package:pos/infrastructure/model/transaction_header.dart';

class TransactionReportModelMapper {
  TransactionReportModel toTransactionReportModel(
    TransactionHeader transactionHeader,
  ) {
    return TransactionReportModel(
      referenceNumber: transactionHeader.id,
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
    );
  }
}
