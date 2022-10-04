import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/auth/auth_bloc.dart';
import 'package:pos/application/cashier/payment/payment_bloc.dart';
import 'package:pos/application/transaction/transaction_bloc.dart';
import 'package:pos/injection.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_duration.dart';
import 'package:pos/presentation/core/widget_path.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_string.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:pos/presentation/print/print.dart';
import 'package:pos/presentation/receipt/component/receipt.dart';
import 'package:auto_route/auto_route.dart';
import 'package:pos/routes/router.gr.dart';

class ReceiptPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PaymentBloc _paymentBloc = context.read<PaymentBloc>();
    AuthBloc _authBloc = context.read<AuthBloc>();

    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            "Transaction Successfull",
            style: yTextSubtitle,
          ),
        ),
        body: SafeArea(
          child: BlocProvider<TransactionBloc>(
            create: (context) {
              if (_paymentBloc.state.transactionId == "") {
                return getIt<TransactionBloc>()
                  ..add(
                    TransactionEvent.addTransaction(
                      _paymentBloc.state.cashierName,
                      _paymentBloc.state.branch.branchName,
                      _paymentBloc.state.customerName,
                      _paymentBloc.state.transactionDate,
                      _paymentBloc.state.subTotal,
                      _paymentBloc.state.totalDiscount,
                      _paymentBloc.state.total,
                      _paymentBloc.state.paymentMethod,
                      _paymentBloc.state.cashAmount,
                      _paymentBloc.state.username,
                      _paymentBloc.state.listBasketModel,
                    ),
                  );
              } else {
                return getIt<TransactionBloc>()
                  ..add(
                    TransactionEvent.updateTransaction(
                      _paymentBloc.state.transactionId,
                      _paymentBloc.state.cashierName,
                      _paymentBloc.state.branch.branchName,
                      _paymentBloc.state.customerName,
                      _paymentBloc.state.transactionDate,
                      _paymentBloc.state.subTotal,
                      _paymentBloc.state.totalDiscount,
                      _paymentBloc.state.total,
                      _paymentBloc.state.paymentMethod,
                      _paymentBloc.state.cashAmount,
                      _paymentBloc.state.username,
                      _paymentBloc.state.listBasketModel,
                    ),
                  );
              }
            },
            child: BlocBuilder<TransactionBloc, TransactionState>(
              builder: (context, state) => (state.isLoading)
                  ? Loading()
                  : SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.all(sPaddingBody),
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: sFormPayment,
                                child: ElevatedButton(
                                  onPressed: () async {
                                    final result = await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => Print(
                                          referenceNo: state.referenceNumber
                                              .toUpperCase(),
                                          transactionHeaderModel:
                                              state.transactionHeaderModel,
                                          branch:
                                              _authBloc.state.userModel.branch,
                                        ),
                                      ),
                                    );
                                    if (result != null) {
                                      final snackBar = SnackBar(
                                        duration: dNormal,
                                        backgroundColor: kAccentColor,
                                        content: Text(
                                          '$result',
                                          style: yTextNormalDark,
                                        ),
                                        action: SnackBarAction(
                                          label: textButtonClose,
                                          textColor: kPrimaryColor,
                                          onPressed: () {},
                                        ),
                                      );
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snackBar);
                                    }
                                  },
                                  style: yButtonSquare,
                                  child: Text(
                                    "Print Receipt",
                                    style: yTextBoldDark,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: sPaddingContainer,
                              ),
                              // Receipt
                              Receipt(
                                state: state,
                                branch: _authBloc.state.userModel.branch,
                              ),
                              SizedBox(
                                height: sPaddingBody,
                              ),
                              // Button

                              Container(
                                width: sFormPayment,
                                child: ElevatedButton(
                                  onPressed: () {
                                    return ExtendedNavigator.of(context)
                                        .replace(Routes.homePage);
                                  },
                                  style: yButtonSquareSuccess,
                                  child: Text(
                                    "Finish",
                                    style: yTextBold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}

class Loading extends StatelessWidget {
  const Loading({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: sIconLauncher,
            child: Image(
              image: AssetImage(pathIconLauncher),
            ),
          ),
          SizedBox(
            height: sPaddingExtraLarge,
          ),
          Container(
            width: sIconLauncher * 3,
            child: LinearProgressIndicator(
              backgroundColor: kSecondColor,
              valueColor: const AlwaysStoppedAnimation<Color>(kAccentColor),
            ),
          ),
        ],
      ),
    );
  }
}
