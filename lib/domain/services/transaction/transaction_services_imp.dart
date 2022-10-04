import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pos/domain/mapper/transaction_detail_model_mapper.dart';
import 'package:pos/domain/mapper/transaction_header_model_mapper.dart';
import 'package:pos/domain/model/transaction_detail_model.dart';
import 'package:pos/domain/model/transaction_header_model.dart';
import 'package:pos/domain/services/transaction/transaction_services.dart';
import 'package:pos/infrastructure/model/transaction_detail.dart';
import 'package:pos/infrastructure/model/transaction_header.dart';
import 'package:pos/infrastructure/repository/transaction_detail_repo.dart';
import 'package:pos/infrastructure/repository/transaction_header_repo.dart';

@LazySingleton(as: TransactionServices)
class TransactionServicesImp implements TransactionServices {
  @override
  Future<Either<String, TransactionHeaderModel>> addTransaction(
      TransactionHeaderModel transactionHeaderModel) async {
    // Add Transaction Header
    final addTransactionHeader =
        await TransactionHeaderRepo().addTransactionHeader(
      TransactionHeaderModelMapper()
          .toTransactionHeader(transactionHeaderModel),
    );
    if (addTransactionHeader.isLeft()) {
      return left(addTransactionHeader.fold(
        (failure) => failure,
        (r) => null,
      ));
    }
    String transactionId = addTransactionHeader.fold(
      (l) => null,
      (transactionId) => transactionId,
    );

    // Add Transaction Detail
    for (TransactionDetailModel transactionDetailModel
        in transactionHeaderModel.listTransactionDetailModel) {
      await TransactionDetailRepo().addTransactionDetail(
        TransactionDetailModelMapper()
            .toTransactionDetail(transactionDetailModel),
        transactionId,
      );
    }

    final result = await this.getTransactionById(transactionId);
    return right(result.fold((failure) => transactionHeaderModel, (r) => r));
  }

  @override
  Future<Either<String, Unit>> deleteTransaction(String transactionId) async {
    // Delete Transaction Detail
    await TransactionDetailRepo()
        .deleteTransactionDetailByTransactionId(transactionId);

    // Delete Transaction Header
    final deleteTransactionHeader =
        await TransactionHeaderRepo().deleteTransactionHeader(transactionId);
    return deleteTransactionHeader.fold(
        (failure) => left(failure), (_) => right(unit));
  }

  @override
  Future<Either<String, List<TransactionHeaderModel>>>
      getAllTransaction() async {
    // Get All Transaction Header without Transaction Detail
    final getAllTransactionHeader =
        await TransactionHeaderRepo().getAllTransactionHeader();
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
    List<TransactionHeaderModel> listTransactionHeaderModel = [];
    for (TransactionHeader transactionHeader in listTransactionHeader) {
      listTransactionHeaderModel.add(
        TransactionHeaderModelMapper()
            .toTransactionHeaderModel(transactionHeader, []),
      );
    }

    return right(listTransactionHeaderModel);
  }

  @override
  Future<Either<String, TransactionHeaderModel>> updateTransaction(
      TransactionHeaderModel transactionHeaderModel) async {
    // Delete Transaction Detail
    await TransactionDetailRepo()
        .deleteTransactionDetailByTransactionId(transactionHeaderModel.id);

    // Add Transaction Detail
    for (TransactionDetailModel transactionDetailModel
        in transactionHeaderModel.listTransactionDetailModel) {
      await TransactionDetailRepo().addTransactionDetail(
        TransactionDetailModelMapper()
            .toTransactionDetail(transactionDetailModel),
        transactionHeaderModel.id,
      );
    }

    // Update Transaction Header
    final updateTransactionHeader =
        await TransactionHeaderRepo().updateTransactionHeader(
      TransactionHeaderModelMapper()
          .toTransactionHeader(transactionHeaderModel),
    );
    if (updateTransactionHeader.isLeft()) {
      return left(
        updateTransactionHeader.fold(
          (failure) => failure,
          (r) => null,
        ),
      );
    }

    final result = await this.getTransactionById(transactionHeaderModel.id);
    return right(result.fold((failure) => transactionHeaderModel, (r) => r));
  }

  @override
  Future<Either<String, TransactionHeaderModel>> getTransactionById(
      String transactionId) async {
    // Get Transaction Header
    final getTransactionHeaderById =
        await TransactionHeaderRepo().getTransactionHeaderById(transactionId);
    if (getTransactionHeaderById.isLeft()) {
      return left(getTransactionHeaderById.fold(
        (failure) => failure,
        (r) => null,
      ));
    }

    // Get Transaction Detail
    final getListTransactionDetailByTransactionId =
        await TransactionDetailRepo()
            .getListTransactionDetailByTransactionId(transactionId);
    List<TransactionDetailModel> listTransactionDetailModel = [];
    if (getListTransactionDetailByTransactionId.isRight()) {
      for (TransactionDetail transactionDetail
          in getListTransactionDetailByTransactionId.fold(
        (l) => null,
        (listTransactionDetail) => listTransactionDetail,
      )) {
        listTransactionDetailModel.add(
          TransactionDetailModelMapper()
              .toTransactionDetailModel(transactionDetail),
        );
      }
    }

    return right(TransactionHeaderModelMapper().toTransactionHeaderModel(
      getTransactionHeaderById.fold(
        (l) => null,
        (transactionHeader) => transactionHeader,
      ),
      listTransactionDetailModel,
    ));
  }
}
