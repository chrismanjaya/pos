import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pos/domain/mapper/transaction_detail_model_mapper.dart';
import 'package:pos/domain/mapper/transaction_header_model_mapper.dart';
import 'package:pos/domain/model/transaction_detail_model.dart';
import 'package:pos/domain/model/transaction_header_model.dart';
import 'package:pos/domain/model/transaction_filter_model.dart';
import 'package:pos/infrastructure/model/transaction_detail.dart';
import 'package:pos/infrastructure/model/transaction_header.dart';
import 'package:pos/infrastructure/repository/transaction_detail_repo.dart';
import 'package:pos/infrastructure/repository/transaction_header_repo.dart';

import 'activity_services.dart';

@LazySingleton(as: ActivityServices)
class ActivityServicesImp implements ActivityServices {
  @override
  Future<Either<String, TransactionHeaderModel>> getActivity(
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

  @override
  Future<Either<String, List<TransactionHeaderModel>>> getListActivityFiltered(
      TransactionFilterModel activityFilterModel) async {
    // Get All Transaction Header with Transaction Detail
    final getAllTransactionHeader = await TransactionHeaderRepo()
        .getAllTransactionHeaderByFilter(activityFilterModel);
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
      // Get All Transaction Detail
      final getListTransactionDetailByTransactionId =
          await TransactionDetailRepo()
              .getListTransactionDetailByTransactionId(transactionHeader.id);
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

      // Mapping
      listTransactionHeaderModel.add(
        TransactionHeaderModelMapper().toTransactionHeaderModel(
            transactionHeader, listTransactionDetailModel),
      );
    }

    return right(listTransactionHeaderModel);
  }

  @override
  Future<Either<String, Unit>> voidTransaction(
      TransactionHeaderModel transactionHeaderModel) async {
    final result = await TransactionHeaderRepo().updateStatus(
      TransactionHeaderModelMapper()
          .toTransactionHeader(transactionHeaderModel),
    );
    return result.fold(
      (failure) => left(failure),
      (r) => right(unit),
    );
  }

  @override
  Future<Either<String, Unit>> discardTransaction(
      TransactionHeaderModel transactionHeaderModel) async {
    final result = await TransactionHeaderRepo().deleteTransactionHeader(
      transactionHeaderModel.id,
    );
    return result.fold(
      (failure) => left(failure),
      (r) => right(unit),
    );
  }
}
