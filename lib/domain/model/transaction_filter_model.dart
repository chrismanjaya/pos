import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/model/branch_model.dart';

part 'transaction_filter_model.freezed.dart';

@freezed
abstract class TransactionFilterModel with _$TransactionFilterModel {
  factory TransactionFilterModel({
    List<BranchModel> listBranchModel,
    List<String> listStatus,
    DateTime dateFrom,
    DateTime dateTo,
  }) = _ActivityFilterModel;

  factory TransactionFilterModel.empty() => TransactionFilterModel(
        listBranchModel: [],
        listStatus: [],
        dateFrom: DateTime(0),
        dateTo: DateTime(0),
      );
}
