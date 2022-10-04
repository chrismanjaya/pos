import 'package:flutter/material.dart';
import 'package:pos/application/cashier/payment/payment_bloc.dart';
import 'package:pos/presentation/core/utils.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_string.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/payment/component/textbox_cash_amount.dart';

class ChoosePaymentMethod extends StatelessWidget {
  const ChoosePaymentMethod({
    Key key,
  }) : super(key: key);

  static const List<String> _listPaymentMethod = ["Cash", "Bank Transfer"];

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
              textTitlePaymentMethod,
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
                    builder: (context) => changePaymentMethodDialog(
                        context, context.read<PaymentBloc>()),
                  );
                },
                style: yButtonFormDark,
                child: Text(
                  state.paymentMethod,
                  style: yTextBoldAccent,
                ),
              ),
            ),
            // Payment
            (Utils().isEqualsIgnoreCase(state.paymentMethod, "Cash"))
                ? Container(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: sPaddingContainer,
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Cash Amount",
                                style: yTextNormal,
                              ),
                              SizedBox(
                                width: sPaddingBody,
                              ),
                              Expanded(
                                child: TextboxCashAmount(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }

  AlertDialog changePaymentMethodDialog(
      BuildContext context, PaymentBloc paymentBloc) {
    return AlertDialog(
      backgroundColor: kPrimaryColor,
      contentPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.zero,
      title: Container(
        padding: EdgeInsets.all(sPaddingContainer),
        color: kAccentColor,
        width: double.infinity,
        child: Text(
          textChangePaymentMethod,
          style: yTextBoldDark,
        ),
      ),
      content: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(sPaddingContainer),
          height: sFormSignIn,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _listPaymentMethod
                .map(
                  (String paymentMethod) => InkWell(
                    onTap: () {
                      paymentBloc.add(
                        PaymentEvent.changePaymentMethod(paymentMethod),
                      );
                      Navigator.of(context, rootNavigator: true).pop();
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
                        paymentMethod,
                        style: yTextNormal,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
