import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pos/domain/model/basket_model.dart';
import 'package:pos/domain/model/branch_model.dart';
import 'package:pos/domain/model/product_model.dart';
import 'package:pos/domain/model/transaction_detail_model.dart';
import 'package:pos/domain/model/transaction_header_model.dart';
import 'package:pos/domain/services/cashier/cashier_services.dart';
import 'package:pos/domain/services/transaction/transaction_services.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';

@injectable
class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  CashierServices _cashierServices;
  TransactionServices _transactionServices;
  PaymentBloc(
    this._cashierServices,
    this._transactionServices,
  ) : super(PaymentState.initial());

  @override
  Stream<PaymentState> mapEventToState(PaymentEvent event) async* {
    yield* event.map(
      clearAll: (e) async* {
        yield PaymentState.initial();
      },
      addToBasket: (e) async* {
        List<BasketModel> listBasketModel = [];
        bool isDuplicate = false;

        if (state.listBasketModel.isNotEmpty) {
          for (BasketModel basketModel in state.listBasketModel) {
            if (basketModel.product.id != e.productModel.id) {
              listBasketModel.add(basketModel);
            } else {
              listBasketModel.add(
                basketModel.copyWith(
                  quantity: basketModel.quantity + 1,
                ),
              );
              isDuplicate = true;
            }
          }
        }
        if (!isDuplicate) {
          listBasketModel.add(
            BasketModel(
              product: e.productModel,
              quantity: 1,
              total: e.productModel.price,
            ),
          );
        }
        double subtotal = 0;
        double totalDiscount = 0;
        double total = 0;

        for (BasketModel basketModel in listBasketModel) {
          // Subtotal
          subtotal =
              subtotal + (basketModel.quantity * basketModel.product.price);

          // Discount
          double discount = (basketModel.product.discount > 0)
              ? (basketModel.product.discount - basketModel.product.price)
              : 0;
          totalDiscount = totalDiscount + (basketModel.quantity * discount);
        }

        // Total
        total = subtotal + totalDiscount;

        yield state.copyWith(
          listBasketModel: listBasketModel,
          subTotal: subtotal,
          totalDiscount: totalDiscount,
          total: total,
        );
      },
      removeFromBasket: (e) async* {
        List<BasketModel> listBasketModel = [];
        if (state.listBasketModel.isNotEmpty) {
          for (BasketModel basketModel in state.listBasketModel) {
            if (basketModel.product.id != e.productModel.id) {
              listBasketModel.add(basketModel);
            }
          }
          double subtotal = 0;
          double totalDiscount = 0;
          double total = 0;

          for (BasketModel basketModel in listBasketModel) {
            // Subtotal
            subtotal =
                subtotal + (basketModel.quantity * basketModel.product.price);

            // Discount
            double discount = (basketModel.product.discount > 0)
                ? (basketModel.product.discount - basketModel.product.price)
                : 0;
            totalDiscount = totalDiscount + (basketModel.quantity * discount);
          }

          // Total
          total = subtotal + totalDiscount;

          yield state.copyWith(
            listBasketModel: listBasketModel,
            subTotal: subtotal,
            totalDiscount: totalDiscount,
            total: total,
          );
        }
      },
      setSelectedBasket: (e) async* {
        yield state.copyWith(
          selectedBasketModel: e.basketModel,
        );
      },
      changeQuantity: (e) async* {
        List<BasketModel> listBasketModel = [];
        for (BasketModel basketModel in state.listBasketModel) {
          if (basketModel.product.id != e.basketModel.product.id) {
            listBasketModel.add(basketModel);
          } else if (e.basketModel.quantity > 0) {
            listBasketModel.add(
              basketModel.copyWith(quantity: e.basketModel.quantity),
            );
          }
        }
        double subtotal = 0;
        double totalDiscount = 0;
        double total = 0;

        for (BasketModel basketModel in listBasketModel) {
          // Subtotal
          subtotal =
              subtotal + (basketModel.quantity * basketModel.product.price);

          // Discount
          double discount = (basketModel.product.discount > 0)
              ? (basketModel.product.discount - basketModel.product.price)
              : 0;
          totalDiscount = totalDiscount + (basketModel.quantity * discount);
        }

        // Total
        total = subtotal + totalDiscount;

        yield state.copyWith(
          listBasketModel: listBasketModel,
          selectedBasketModel: e.basketModel,
          subTotal: subtotal,
          totalDiscount: totalDiscount,
          total: total,
        );
      },
      setBranch: (e) async* {
        yield state.copyWith(
          branch: e.currentBranchModel,
        );
      },
      setCustomerData: (e) async* {
        yield state.copyWith(
          customerName: e.customerName,
          username: e.username,
        );
      },
      changeCashAmount: (e) async* {
        yield state.copyWith(
          cashAmount: e.cashAmount,
        );
      },
      changePaymentMethod: (e) async* {
        yield state.copyWith(
          paymentMethod: e.paymentMethod,
        );
      },
      getListCashier: (e) async* {
        yield state.copyWith(
          isLoading: true,
        );
        final getListCashier =
            await _cashierServices.getListCashier(state.branch.id, "Cashier");
        yield state.copyWith(
          listCashier: getListCashier.fold((l) => [], (data) => data),
          isLoading: false,
        );
      },
      setCashier: (e) async* {
        yield state.copyWith(
          cashierName: e.cashierName,
        );
      },
      saveTransaction: (e) async* {
        if (state.listBasketModel != null && state.listBasketModel.length > 0) {
          // Transaction Detail
          List<TransactionDetailModel> listTransactionDetailModel = [];
          int index = 0;
          for (BasketModel basketModel in state.listBasketModel) {
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
          TransactionHeaderModel transactionHeaderModel =
              TransactionHeaderModel(
            id: "",
            branchName: state.branch.branchName,
            cashAmount: (state.paymentMethod == "Cash")
                ? state.cashAmount
                : state.total,
            cashier: state.cashierName,
            customerName: state.customerName,
            discount: state.totalDiscount,
            paymentMethod: state.paymentMethod,
            status: "Pending",
            subtotal: state.subTotal,
            total: state.total,
            transactionDate: state.transactionDate,
            listTransactionDetailModel: listTransactionDetailModel,
            createdBy: e.username,
            updatedBy: "",
          );
          // Save Payment
          await _transactionServices.addTransaction(transactionHeaderModel);
        }
      },
      loadTransaction: (e) async* {
        List<BasketModel> listBasketModel = [];
        for (TransactionDetailModel transactionDetailModel
            in e.transactionHeaderModel.listTransactionDetailModel) {
          final getProductByName = await _cashierServices
              .getProductByName(transactionDetailModel.itemName);
          if (getProductByName.isRight()) {
            ProductModel productModel = getProductByName.fold(
              (l) => ProductModel.empty(),
              (productModel) => productModel,
            );
            listBasketModel.add(
              BasketModel(
                product: productModel,
                quantity: transactionDetailModel.quantity,
                total: (productModel.discount > 0)
                    ? productModel.discount * transactionDetailModel.quantity
                    : productModel.price * transactionDetailModel.quantity,
              ),
            );
          }
        }
        yield state.copyWith(
          transactionId: e.transactionHeaderModel.id,
          listBasketModel: listBasketModel,
          subTotal: e.transactionHeaderModel.subtotal,
          totalDiscount: e.transactionHeaderModel.discount,
          total: e.transactionHeaderModel.total,
          customerName: e.transactionHeaderModel.customerName,
        );
      },
    );
  }
}
