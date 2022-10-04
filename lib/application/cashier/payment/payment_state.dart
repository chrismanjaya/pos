part of 'payment_bloc.dart';

@freezed
abstract class PaymentState with _$PaymentState {
  const factory PaymentState({
    @required List<BasketModel> listBasketModel,
    @required BasketModel selectedBasketModel,
    @required String transactionId,
    @required double subTotal,
    @required double totalDiscount,
    @required double total,
    @required BranchModel branch,
    @required DateTime transactionDate,
    @required String customerName,
    @required String cashierName,
    @required String paymentMethod,
    @required double cashAmount,
    @required String username,
    @required List<String> listCashier,
    @required bool isLoading,
  }) = _PaymentState;

  factory PaymentState.initial() => PaymentState(
        listBasketModel: [],
        selectedBasketModel: BasketModel.empty(),
        transactionId: "",
        subTotal: 0,
        totalDiscount: 0,
        total: 0,
        branch: BranchModel.empty(),
        transactionDate: DateTime.now(),
        customerName: "",
        cashierName: "",
        paymentMethod: "Cash",
        cashAmount: 0,
        username: "",
        listCashier: [],
        isLoading: false,
      );
}
