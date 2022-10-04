import 'package:injectable/injectable.dart';
import 'package:pos/domain/mapper/expense_model_mapper.dart';
import 'package:pos/domain/mapper/transaction_report_model_mapper.dart';
import 'package:pos/domain/model/expense_model.dart';
import 'package:pos/domain/model/transaction_filter_model.dart';
import 'package:pos/domain/model/transaction_report_model.dart';
import 'package:dartz/dartz.dart';
import 'package:pos/domain/services/report/transaction_report_services.dart';
import 'package:pos/infrastructure/model/expense.dart';
import 'package:pos/infrastructure/model/transaction_header.dart';
import 'package:pos/infrastructure/repository/expense_repo.dart';
import 'package:pos/infrastructure/repository/transaction_header_repo.dart';

@LazySingleton(as: TransactionReportServices)
class TransactionReportServicesImp implements TransactionReportServices {
  @override
  Future<Either<String, List<TransactionReportModel>>>
      getAllTransactionByFilter(
          TransactionFilterModel transactionFilterModel) async {
    // Get All Transaction Header without Transaction Detail
    final getAllTransactionHeader = await TransactionHeaderRepo()
        .getAllTransactionReportByFilter(transactionFilterModel);
    if (getAllTransactionHeader.isLeft()) {
      return left(getAllTransactionHeader.fold(
        (failure) => failure,
        (r) => null,
      ));
    }

    List<TransactionHeader> listTransactionHeader =
        getAllTransactionHeader.fold(
      (l) => [],
      (listTransactionHeader) => listTransactionHeader,
    );
    List<TransactionReportModel> listTransactionHeaderModel = [];
    for (TransactionHeader transactionHeader in listTransactionHeader) {
      if (transactionFilterModel.listStatus
          .contains(transactionHeader.status)) {
        listTransactionHeaderModel.add(
          TransactionReportModelMapper()
              .toTransactionReportModel(transactionHeader),
        );
      }
    }

    return right(listTransactionHeaderModel);
  }

  @override
  Future<Either<String, List<ExpenseModel>>> getAllExpenseByFilter(
      TransactionFilterModel transactionFilterModel) async {
    final getAllExpense = await ExpenseRepo().getAllExpenseByDate(
      transactionFilterModel.dateFrom,
      transactionFilterModel.dateTo,
    );
    if (getAllExpense.isLeft()) {
      return left(getAllExpense.fold((failure) => failure, (r) => null));
    } else {
      List<ExpenseModel> expenseModels = [];
      try {
        for (Expense expense
            in getAllExpense.fold((l) => null, (listExpense) => listExpense)) {
          expenseModels.add(ExpenseModelMapper().toExpenseModel(expense));
        }
      } catch (error) {
        return left(error.toString());
      }
      return right(expenseModels);
    }
  }
}
