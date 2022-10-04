part of 'payment_bloc.dart';

@freezed
abstract class PaymentEvent with _$PaymentEvent {
  // Cashier
  const factory PaymentEvent.clearAll() = ClearAll;
  const factory PaymentEvent.addToBasket(ProductModel productModel) =
      AddToBasket;
  const factory PaymentEvent.setSelectedBasket(BasketModel basketModel) =
      SetSelectedBasket;
  const factory PaymentEvent.changeQuantity(BasketModel basketModel) =
      ChangeQuantity;
  const factory PaymentEvent.removeFromBasket(ProductModel productModel) =
      RemoveFromBasket;
  const factory PaymentEvent.setBranch(BranchModel currentBranchModel) =
      SetBranch;
  // Payment
  const factory PaymentEvent.setCustomerData(
      String customerName, String username) = SetCustomerData;
  const factory PaymentEvent.changeCashAmount(double cashAmount) =
      ChangeCashAmount;
  const factory PaymentEvent.changePaymentMethod(String paymentMethod) =
      ChangePaymentMethod;
  const factory PaymentEvent.getListCashier() = GetListCashier;
  const factory PaymentEvent.setCashier(String cashierName) = SetCashier;
  const factory PaymentEvent.saveTransaction(String username) = SaveTransaction;
  const factory PaymentEvent.loadTransaction(
      TransactionHeaderModel transactionHeaderModel) = LoadTransaction;
}
