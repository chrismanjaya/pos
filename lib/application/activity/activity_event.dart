part of 'activity_bloc.dart';

@freezed
abstract class ActivityEvent with _$ActivityEvent {
  const factory ActivityEvent.getAllTransaction(BranchModel branchModel) =
      GetAllTransaction;
  const factory ActivityEvent.getFiltredTransaction() = GetFiltredTransaction;
  const factory ActivityEvent.getTransaction(String transactionId) =
      GetTransaction;
  const factory ActivityEvent.addActivityFilter(
      TransactionFilterModel activityFilterModel) = AddActivityFilter;
  const factory ActivityEvent.voidTransaction(
      TransactionHeaderModel transactionHeaderModel) = VoidTransaction;
  const factory ActivityEvent.discardTransaction(
      TransactionHeaderModel transactionHeaderModel) = DiscardTransaction;
}
