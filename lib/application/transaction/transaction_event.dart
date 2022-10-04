part of 'transaction_bloc.dart';

@freezed
abstract class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.addTransaction(
    String cashier,
    String branch,
    String customerName,
    DateTime transactionDate,
    double subtotal,
    double discount,
    double total,
    String paymentMethod,
    double cashAmount,
    String createdBy,
    List<BasketModel> listBasketModel,
  ) = AddTransaction;
  const factory TransactionEvent.updateTransaction(
    String transactionId,
    String cashier,
    String branch,
    String customerName,
    DateTime transactionDate,
    double subtotal,
    double discount,
    double total,
    String paymentMethod,
    double cashAmount,
    String createdBy,
    List<BasketModel> listBasketModel,
  ) = UpdateTransaction;
}
