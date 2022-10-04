import 'package:freezed_annotation/freezed_annotation.dart';
part 'transaction_detail_model.freezed.dart';

@freezed
abstract class TransactionDetailModel with _$TransactionDetailModel {
  factory TransactionDetailModel({
    String id,
    double itemDiscount,
    String itemName,
    int itemNo,
    double itemPrice,
    int quantity,
    String transactionId,
  }) = _TransactionDetailModel;

  factory TransactionDetailModel.empty() => TransactionDetailModel(
        id: "",
        itemDiscount: 0,
        itemName: "",
        itemNo: 0,
        itemPrice: 0,
        quantity: 0,
        transactionId: "",
      );
}
