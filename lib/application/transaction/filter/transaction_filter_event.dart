part of 'transaction_filter_bloc.dart';

@freezed
abstract class TransactionFilterEvent with _$TransactionFilterEvent {
  const factory TransactionFilterEvent.initial(
      TransactionFilterModel transactionFilterModel) = Initial;
  const factory TransactionFilterEvent.changeTransactionStatus(
      List<String> listStatus) = ChangeTransactionStatus;
  const factory TransactionFilterEvent.changeTransactionDate(
      DateTime dateFrom, DateTime dateTo) = ChangeTransactionDate;
  const factory TransactionFilterEvent.changeBranch(
      List<BranchModel> listBranch) = ChangeBranch;
}
