import 'package:freezed_annotation/freezed_annotation.dart';
part 'transaction_detail.freezed.dart';

@freezed
abstract class TransactionDetail with _$TransactionDetail {
  factory TransactionDetail({
    String id,
    int itemDiscount,
    String itemName,
    int itemNo,
    int itemPrice,
    int quantity,
    String transactionId,
  }) = _TransactionDetail;

  factory TransactionDetail.empty() => TransactionDetail(
        id: "",
        itemDiscount: 0,
        itemName: "",
        itemNo: 0,
        itemPrice: 0,
        quantity: 0,
        transactionId: "",
      );
}
