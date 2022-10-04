import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pos/domain/model/basket_model.dart';
import 'package:pos/domain/model/transaction_detail_model.dart';
import 'package:pos/domain/model/transaction_header_model.dart';
import 'package:pos/domain/services/transaction/transaction_services.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';
part 'transaction_bloc.freezed.dart';

@injectable
class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionServices _transactionServices;
  TransactionBloc(this._transactionServices)
      : super(TransactionState.initial());

  @override
  Stream<TransactionState> mapEventToState(TransactionEvent event) async* {
    yield* event.map(
      addTransaction: (e) async* {
        yield state.copyWith(
          isLoading: true,
        );
        // Transaction Detail
        List<TransactionDetailModel> listTransactionDetailModel = [];
        int index = 0;
        for (BasketModel basketModel in e.listBasketModel) {
          index++;
          listTransactionDetailModel.add(
            TransactionDetailModel(
              id: "",
              itemDiscount: basketModel.product.discount,
              itemName: basketModel.product.name,
              itemNo: index,
              itemPrice: basketModel.product.price,
              quantity: basketModel.quantity,
              transactionId: "",
            ),
          );
        }
        TransactionHeaderModel transactionHeaderModel = TransactionHeaderModel(
          id: "",
          branchName: e.branch,
          cashAmount: (e.paymentMethod == "Cash") ? e.cashAmount : e.total,
          cashier: e.cashier,
          customerName: e.customerName,
          discount: e.discount,
          paymentMethod: e.paymentMethod,
          status: "Done",
          subtotal: e.subtotal,
          total: e.total,
          transactionDate: e.transactionDate,
          listTransactionDetailModel: listTransactionDetailModel,
          createdBy: e.createdBy,
          updatedBy: "",
        );
        yield state.copyWith(
          transactionHeaderModel: transactionHeaderModel,
          isLoading: true,
        );
        // Add Payment
        final addTransaction =
            await _transactionServices.addTransaction(transactionHeaderModel);
        if (addTransaction.isLeft()) {
          yield state.copyWith(
            isLoading: false,
            errorMessage: addTransaction.fold(
              (failure) => failure,
              (r) => null,
            ),
          );
        } else {
          final result = addTransaction.fold(
              (l) => null, (transactionHeaderModel) => transactionHeaderModel);
          yield state.copyWith(
            isLoading: false,
            referenceNumber: result.id,
            transactionHeaderModel: result,
            errorMessage: "",
          );
        }
      },
      updateTransaction: (e) async* {
        yield state.copyWith(
          isLoading: true,
        );
        // Transaction Detail
        List<TransactionDetailModel> listTransactionDetailModel = [];
        int index = 0;
        for (BasketModel basketModel in e.listBasketModel) {
          index++;
          listTransactionDetailModel.add(
            TransactionDetailModel(
              id: "",
              itemDiscount: basketModel.product.discount,
              itemName: basketModel.product.name,
              itemNo: index,
              itemPrice: basketModel.product.price,
              quantity: basketModel.quantity,
              transactionId: "",
            ),
          );
        }
        TransactionHeaderModel transactionHeaderModel = TransactionHeaderModel(
          id: e.transactionId,
          branchName: e.branch,
          cashAmount: (e.paymentMethod == "Cash") ? e.cashAmount : e.total,
          cashier: e.cashier,
          customerName: e.customerName,
          discount: e.discount,
          paymentMethod: e.paymentMethod,
          status: "Done",
          subtotal: e.subtotal,
          total: e.total,
          transactionDate: e.transactionDate,
          listTransactionDetailModel: listTransactionDetailModel,
          updatedBy: e.createdBy,
        );
        yield state.copyWith(
          transactionHeaderModel: transactionHeaderModel,
          isLoading: true,
        );
        // Update Payment
        final updateTransaction = await _transactionServices
            .updateTransaction(transactionHeaderModel);
        if (updateTransaction.isLeft()) {
          yield state.copyWith(
            isLoading: false,
            errorMessage: updateTransaction.fold(
              (failure) => failure,
              (r) => null,
            ),
          );
        } else {
          final result = updateTransaction.fold(
            (l) => null,
            (transactionHeaderModel) => transactionHeaderModel,
          );
          yield state.copyWith(
            isLoading: false,
            referenceNumber: result.id,
            transactionHeaderModel: result,
            errorMessage: "",
          );
        }
      },
    );
  }
}
