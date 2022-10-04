import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pos/domain/model/branch_model.dart';
import 'package:pos/domain/model/transaction_filter_model.dart';

part 'transaction_filter_event.dart';
part 'transaction_filter_state.dart';
part 'transaction_filter_bloc.freezed.dart';

@injectable
class TransactionFilterBloc
    extends Bloc<TransactionFilterEvent, TransactionFilterState> {
  TransactionFilterBloc() : super(TransactionFilterState.initial());

  @override
  Stream<TransactionFilterState> mapEventToState(
      TransactionFilterEvent event) async* {
    yield* event.map(
      initial: (e) async* {
        yield state.copyWith(
          listBranch: e.transactionFilterModel.listBranchModel,
          listStatus: e.transactionFilterModel.listStatus,
          dateFrom: e.transactionFilterModel.dateFrom,
          dateTo: e.transactionFilterModel.dateTo,
          changes: 0,
        );
      },
      changeTransactionStatus: (e) async* {
        yield state.copyWith(
          listStatus: e.listStatus,
          changes: state.changes + 1,
        );
      },
      changeTransactionDate: (e) async* {
        yield state.copyWith(
          dateFrom: e.dateFrom,
          dateTo: e.dateTo,
          changes: state.changes + 1,
        );
      },
      changeBranch: (e) async* {
        yield state.copyWith(
          listBranch: e.listBranch,
          changes: state.changes + 1,
        );
      },
    );
  }
}
