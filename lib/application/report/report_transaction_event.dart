part of 'report_transaction_bloc.dart';

@freezed
abstract class ReportTransactionEvent with _$ReportTransactionEvent {
  const factory ReportTransactionEvent.getReport(
      TransactionFilterModel transactionFilterModel) = GetReport;
}
