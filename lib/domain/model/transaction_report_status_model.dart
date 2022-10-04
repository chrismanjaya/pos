import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_report_status_model.freezed.dart';

@freezed
abstract class TransactionReportStatusModel
    with _$TransactionReportStatusModel {
  factory TransactionReportStatusModel({
    int done,
    int pending,
    int cancelled,
  }) = _TransactionReportStatusModel;

  factory TransactionReportStatusModel.empty() => TransactionReportStatusModel(
        done: 0,
        pending: 0,
        cancelled: 0,
      );
}
