import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/cashier/payment/payment_bloc.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_string.dart';
import 'package:pos/presentation/core/widget_style.dart';

class ChooseCashier extends StatelessWidget {
  const ChooseCashier({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentBloc, PaymentState>(
      builder: (context, state) => Container(
        margin: EdgeInsets.all(sPaddingContainer),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Title
            Text(
              textTitleCashier,
              style: yTextBold,
            ),
            SizedBox(
              height: sPaddingContainer,
            ),
            // Button
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => changeCashierDialog(
                        context, context.read<PaymentBloc>()),
                  );
                },
                style: yButtonFormDark,
                child: (state.cashierName.isEmpty)
                    ? Text(
                        "Please Choose Cashier",
                        style: yTextBold,
                      )
                    : Text(
                        state.cashierName,
                        style: yTextBoldAccent,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AlertDialog changeCashierDialog(
      BuildContext context, PaymentBloc paymentBloc) {
    paymentBloc.add(PaymentEvent.getListCashier());

    return AlertDialog(
      backgroundColor: kPrimaryColor,
      contentPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.zero,
      title: Container(
        padding: EdgeInsets.all(sPaddingContainer),
        color: kAccentColor,
        width: double.infinity,
        child: Text(
          textChangeChasier + paymentBloc.state.branch.branchName,
          style: yTextBoldDark,
        ),
      ),
      content: SingleChildScrollView(
        child: BlocBuilder<PaymentBloc, PaymentState>(
          builder: (context, state) => (state.isLoading)
              ? Container(
                  padding: EdgeInsets.all(sPaddingContainer),
                  height: sFormSignIn,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      LinearProgressIndicator(
                        minHeight: sLineThick,
                        backgroundColor: kSecondColor,
                        valueColor:
                            const AlwaysStoppedAnimation<Color>(kAccentColor),
                      ),
                    ],
                  ))
              : (state.listCashier == null || state.listCashier.length <= 0)
                  ? Container(
                      padding: EdgeInsets.all(sPaddingContainer),
                      height: sFormSignIn,
                      child: Center(
                        child: Text(
                          "Cashier Not Found on This Branch",
                          style: yTextNormal,
                        ),
                      ),
                    )
                  : Container(
                      padding: EdgeInsets.all(sPaddingContainer),
                      height: sFormSignIn,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: state.listCashier
                            .map(
                              (String username) => InkWell(
                                onTap: () {
                                  paymentBloc.add(
                                    PaymentEvent.setCashier(username),
                                  );
                                  Navigator.of(context, rootNavigator: true)
                                      .pop();
                                },
                                child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.all(sPaddingContainer),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        width: sLineNormal,
                                        color: kSecondColor,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    username,
                                    style: yTextNormal,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
        ),
      ),
    );
  }
}
