import 'package:dartz/dartz.dart';
import 'package:pos/domain/model/transaction_header_model.dart';

abstract class TransactionServices {
  Future<Either<String, List<TransactionHeaderModel>>> getAllTransaction();
  Future<Either<String, TransactionHeaderModel>> getTransactionById(
      String transactionId);
  Future<Either<String, TransactionHeaderModel>> addTransaction(
      TransactionHeaderModel transactionHeaderModel);
  Future<Either<String, TransactionHeaderModel>> updateTransaction(
      TransactionHeaderModel transactionHeaderModel);
  Future<Either<String, Unit>> deleteTransaction(String transactionId);
}
