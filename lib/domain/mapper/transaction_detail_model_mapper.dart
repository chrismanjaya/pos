import 'package:pos/domain/model/transaction_detail_model.dart';
import 'package:pos/infrastructure/model/transaction_detail.dart';

class TransactionDetailModelMapper {
  TransactionDetailModel toTransactionDetailModel(
      TransactionDetail transactionDetail) {
    return TransactionDetailModel(
      id: transactionDetail.id,
      itemDiscount: transactionDetail.itemDiscount.toDouble(),
      itemName: transactionDetail.itemName,
      itemNo: transactionDetail.itemNo,
      itemPrice: transactionDetail.itemPrice.toDouble(),
      quantity: transactionDetail.quantity,
      transactionId: transactionDetail.transactionId,
    );
  }

  TransactionDetail toTransactionDetail(
      TransactionDetailModel transactionDetailModel) {
    return TransactionDetail(
      id: transactionDetailModel.id,
      itemDiscount: transactionDetailModel.itemDiscount.toInt(),
      itemName: transactionDetailModel.itemName,
      itemNo: transactionDetailModel.itemNo,
      itemPrice: transactionDetailModel.itemPrice.toInt(),
      quantity: transactionDetailModel.quantity,
      transactionId: transactionDetailModel.transactionId,
    );
  }
}
