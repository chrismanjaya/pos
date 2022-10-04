part of 'transaction_bloc.dart';

@freezed
abstract class TransactionState with _$TransactionState {
  const factory TransactionState({
    @required TransactionHeaderModel transactionHeaderModel,
    @required String referenceNumber,
    @required bool isLoading,
    @required String errorMessage,
  }) = _TransactionState;

  factory TransactionState.initial() => TransactionState(
        transactionHeaderModel: TransactionHeaderModel.empty(),
        referenceNumber: "",
        isLoading: false,
        errorMessage: "",
      );
}
