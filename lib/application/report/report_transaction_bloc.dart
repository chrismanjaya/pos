import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pos/domain/model/expense_model.dart';
import 'package:pos/domain/model/transaction_filter_model.dart';
import 'package:pos/domain/model/transaction_report_model.dart';
import 'package:pos/domain/model/transaction_report_status_model.dart';
import 'package:pos/domain/services/report/transaction_report_services.dart';

part 'report_transaction_event.dart';
part 'report_transaction_state.dart';
part 'report_transaction_bloc.freezed.dart';

@injectable
class ReportTransactionBloc
    extends Bloc<ReportTransactionEvent, ReportTransactionState> {
  TransactionReportServices _transactionReportServices;
  ReportTransactionBloc(this._transactionReportServices)
      : super(ReportTransactionState.initial());

  @override
  Stream<ReportTransactionState> mapEventToState(
      ReportTransactionEvent event) async* {
    yield* event.map(
      getReport: (e) async* {
        yield state.copyWith(
          isLoading: true,
          transactionFilterModel: e.transactionFilterModel,
          errorMessage: "",
        );
        final getAllTransactionByFilter = await _transactionReportServices
            .getAllTransactionByFilter(e.transactionFilterModel);
        if (getAllTransactionByFilter.isRight()) {
          List<TransactionReportModel> listTransactionReportModel =
              getAllTransactionByFilter.fold((l) => [], (data) => data);
          int done = 0;
          int pending = 0;
          int cancelled = 0;
          for (TransactionReportModel transactionReportModel
              in listTransactionReportModel) {
            switch (transactionReportModel.status) {
              case "Done":
                done += 1;
                break;
              case "Pending":
                pending += 1;
                break;
              case "Cancelled":
                cancelled += 1;
                break;
              default:
                break;
            }
          }
          TransactionReportStatusModel transactionReportStatusModel =
              TransactionReportStatusModel(
            done: done,
            pending: pending,
            cancelled: cancelled,
          );
          yield state.copyWith(
            listTransactionReportModel:
                getAllTransactionByFilter.fold((l) => [], (data) => data),
            transactionReportStatusModel: transactionReportStatusModel,
            errorMessage: "",
          );
        } else {
          yield state.copyWith(
            errorMessage: getAllTransactionByFilter.fold(
                (failure) => failure, (r) => null),
          );
        }

        final getAllExpenseByFilter = await _transactionReportServices
            .getAllExpenseByFilter(e.transactionFilterModel);
        if (getAllExpenseByFilter.isRight()) {
          yield state.copyWith(
            isLoading: false,
            listExpenseModel:
                getAllExpenseByFilter.fold((l) => [], (data) => data),
            errorMessage: "",
          );
        } else {
          yield state.copyWith(
            isLoading: false,
            errorMessage:
                getAllExpenseByFilter.fold((failure) => failure, (r) => null),
          );
        }
      },
    );
  }
}
