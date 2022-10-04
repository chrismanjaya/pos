part of 'transaction_filter_bloc.dart';

@freezed
abstract class TransactionFilterState with _$TransactionFilterState {
  const factory TransactionFilterState({
    @required List<BranchModel> listBranch,
    @required List<String> listStatus,
    @required DateTime dateFrom,
    @required DateTime dateTo,
    @required int changes,
  }) = _TransactionFilterState;

  factory TransactionFilterState.initial() => TransactionFilterState(
        listBranch: [],
        listStatus: [],
        dateFrom: DateTime(0),
        dateTo: DateTime(0),
        changes: 0,
      );
}
