import 'package:dartz/dartz.dart';
import 'package:pos/domain/model/expense_model.dart';
import 'package:pos/domain/model/transaction_filter_model.dart';
import 'package:pos/domain/model/transaction_report_model.dart';

abstract class TransactionReportServices {
  Future<Either<String, List<TransactionReportModel>>>
      getAllTransactionByFilter(
    TransactionFilterModel transactionFilterModel,
  );
  Future<Either<String, List<ExpenseModel>>> getAllExpenseByFilter(
    TransactionFilterModel transactionFilterModel,
  );
}
