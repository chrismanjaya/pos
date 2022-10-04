import 'package:dartz/dartz.dart';
import 'package:pos/domain/model/transaction_filter_model.dart';
import 'package:pos/domain/model/transaction_header_model.dart';

abstract class ActivityServices {
  Future<Either<String, List<TransactionHeaderModel>>> getListActivityFiltered(
      TransactionFilterModel activityFilterModel);
  Future<Either<String, TransactionHeaderModel>> getActivity(
      String transactionId);
  Future<Either<String, Unit>> voidTransaction(
      TransactionHeaderModel transactionHeaderModel);
  Future<Either<String, Unit>> discardTransaction(
      TransactionHeaderModel transactionHeaderModel);
}
