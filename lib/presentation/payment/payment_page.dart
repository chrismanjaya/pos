import 'package:flutter/material.dart';
import 'package:pos/application/cashier/payment/payment_bloc.dart';
import 'package:pos/presentation/core/formatter.dart';
import 'package:pos/presentation/core/utils.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_duration.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_string.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:pos/presentation/payment/component/choose_cashier.dart';
import 'package:pos/presentation/payment/component/choose_payment_method.dart';
import 'package:pos/presentation/payment/component/transaction.dart';
import 'package:pos/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PaymentBloc _paymentBloc = context.read<PaymentBloc>();

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          textPaymentCharge +
              Formatter().decimalGrouping(_paymentBloc.state.total),
          style: yTextSubtitle,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(sPaddingBody),
            child: Center(
              child: Container(
                width: sFormPayment,
                padding: EdgeInsets.all(sPaddingContainer),
                decoration: BoxDecoration(
                  color: kSecondColor,
                  borderRadius: borderRadius,
                ),
                child: Column(
                  children: <Widget>[
                    // Transaction
                    Transaction(),
                    Divider(
                      color: kFourColor,
                    ),
                    // Choose Cashier
                    ChooseCashier(),
                    Divider(
                      color: kFourColor,
                    ),
                    // Choose Payment Method
                    ChoosePaymentMethod(),
                    Divider(
                      color: kFourColor,
                    ),
                    // Payment Button
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(sPaddingContainer),
                      child: ElevatedButton(
                        onPressed: () {
                          String validateError = validatePayment(_paymentBloc);
                          if (validateError.isNotEmpty) {
                            return ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                duration: dNormal,
                                backgroundColor: kUIDangerColor,
                                content: Text(validateError),
                                action: SnackBarAction(
                                  label: textButtonClose,
                                  textColor: kTextPrimaryColor,
                                  onPressed: () {},
                                ),
                              ),
                            );
                          }
                          return ExtendedNavigator.of(context)
                              .replace(Routes.receiptPage);
                        },
                        style: yButtonForm,
                        child: Text(
                          textButtonPayment,
                          style: yTextBoldDark,
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
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        mini: true,
        onPressed: () {
          return ExtendedNavigator.of(context).pop(Routes.cashierPage);
        },
        backgroundColor: kAccentColor,
        child: Icon(
          Icons.arrow_back,
          color: kPrimaryColor,
          size: sIcon,
        ),
      ),
    );
  }

  String validatePayment(PaymentBloc paymentBloc) {
    // Check Cashier
    if (paymentBloc.state.cashierName.isEmpty) {
      return "Please Choose Cashier";
    }
    // Check Payment Charge
    if (paymentBloc.state.total <= 0) {
      return "Payment Charege Cannot be 0";
    }
    // Check Cash Amount
    if (Utils().isEqualsIgnoreCase(paymentBloc.state.paymentMethod, "Cash") &&
        paymentBloc.state.cashAmount < paymentBloc.state.total) {
      return "Invalid Cash Amount";
    }
    return "";
  }
}
