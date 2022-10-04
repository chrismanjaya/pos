part of 'activity_bloc.dart';

@freezed
abstract class ActivityState with _$ActivityState {
  const factory ActivityState({
    @required List<TransactionHeaderModel> listTransaction,
    @required List<TransactionHeaderModel> listTransactionFiltered,
    @required TransactionHeaderModel selectedTransaction,
    @required TransactionFilterModel activityFilterModel,
    @required bool isLoading,
    @required bool isLoaded,
    @required String errorMessage,
  }) = _ActivityState;

  factory ActivityState.initial() => ActivityState(
        listTransaction: [],
        listTransactionFiltered: [],
        selectedTransaction: TransactionHeaderModel.empty(),
        activityFilterModel: TransactionFilterModel.empty(),
        isLoading: false,
        isLoaded: false,
        errorMessage: "",
      );
}
