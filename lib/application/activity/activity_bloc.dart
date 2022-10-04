import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pos/domain/model/branch_model.dart';
import 'package:pos/domain/model/transaction_filter_model.dart';
import 'package:pos/domain/model/transaction_header_model.dart';
import 'package:pos/domain/services/activity/activity_services.dart';

part 'activity_event.dart';
part 'activity_state.dart';
part 'activity_bloc.freezed.dart';

@injectable
class ActivityBloc extends Bloc<ActivityEvent, ActivityState> {
  final ActivityServices _activityServices;

  ActivityBloc(this._activityServices) : super(ActivityState.initial());

  @override
  Stream<ActivityState> mapEventToState(ActivityEvent event) async* {
    yield* event.map(
      getAllTransaction: (e) async* {
        yield state.copyWith(
          isLoading: true,
        );
        List<String> listStatus = ["Done", "Cancelled", "Pending"];
        DateTime today = DateTime(
          DateTime.now().year,
          DateTime.now().month,
          DateTime.now().day,
        );
        DateTime tomorrow = DateTime(
          DateTime.now().year,
          DateTime.now().month,
          DateTime.now().day + 1,
        );
        List<BranchModel> listBranchModel = [];
        listBranchModel.add(e.branchModel);
        TransactionFilterModel _activityFilterModel = TransactionFilterModel(
          listBranchModel: listBranchModel,
          listStatus: listStatus,
          dateFrom: today,
          dateTo: tomorrow,
        );
        yield state.copyWith(
          activityFilterModel: _activityFilterModel,
        );
        final getAllTransaction = await _activityServices
            .getListActivityFiltered(_activityFilterModel);
        yield state.copyWith(
          listTransaction: getAllTransaction.fold((l) => [], (data) => data),
          listTransactionFiltered:
              getAllTransaction.fold((l) => [], (data) => data),
          isLoading: false,
          isLoaded: true,
          errorMessage: "",
        );
      },
      getFiltredTransaction: (e) async* {
        yield state.copyWith(
          isLoading: true,
        );
        final getAllTransaction = await _activityServices
            .getListActivityFiltered(state.activityFilterModel);
        yield state.copyWith(
          listTransaction: getAllTransaction.fold((l) => [], (data) => data),
          listTransactionFiltered:
              getAllTransaction.fold((l) => [], (data) => data),
          isLoading: false,
          isLoaded: true,
          errorMessage: "",
        );
      },
      getTransaction: (e) async* {
        final getActivity =
            await _activityServices.getActivity(e.transactionId);
        yield state.copyWith(
          selectedTransaction: getActivity.fold(
              (l) => TransactionHeaderModel.empty(), (data) => data),
        );
      },
      addActivityFilter: (e) async* {
        yield state.copyWith(
          activityFilterModel: e.activityFilterModel,
        );
      },
      voidTransaction: (e) async* {
        TransactionHeaderModel voidTransactionHeaderModel =
            e.transactionHeaderModel.copyWith(
          status: "Cancelled",
        );
        yield state.copyWith(
          isLoading: true,
        );
        // Update Transaction
        await _activityServices.voidTransaction(voidTransactionHeaderModel);
        // Update List
        final getAllTransaction = await _activityServices
            .getListActivityFiltered(state.activityFilterModel);
        yield state.copyWith(
          listTransaction: getAllTransaction.fold((l) => [], (data) => data),
          listTransactionFiltered:
              getAllTransaction.fold((l) => [], (data) => data),
          selectedTransaction: voidTransactionHeaderModel,
          isLoading: false,
          isLoaded: true,
          errorMessage: "",
        );
      },
      discardTransaction: (e) async* {
        yield state.copyWith(
          isLoading: true,
        );
        // Delete Transaction
        await _activityServices.discardTransaction(state.selectedTransaction);
        // Update List
        final getAllTransaction = await _activityServices
            .getListActivityFiltered(state.activityFilterModel);
        yield state.copyWith(
          listTransaction: getAllTransaction.fold((l) => [], (data) => data),
          listTransactionFiltered:
              getAllTransaction.fold((l) => [], (data) => data),
          selectedTransaction: TransactionHeaderModel.empty(),
          isLoading: false,
          isLoaded: true,
          errorMessage: "",
        );
      },
    );
  }
}
