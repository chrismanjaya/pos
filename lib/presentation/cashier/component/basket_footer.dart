import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/cashier/payment/payment_bloc.dart';
import 'package:pos/presentation/cashier/component/basket_footer_item.dart';
import 'package:pos/presentation/core/formatter.dart';
import 'package:pos/presentation/core/utils.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_string.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:auto_route/auto_route.dart';
import 'package:pos/routes/router.gr.dart';
import 'package:pos/application/auth/auth_bloc.dart';

class BasketFooter extends StatelessWidget {
  const BasketFooter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isPayment = Utils().isValidAction(
      context.read<AuthBloc>().state.userModel.group.listPrivilege,
      1,
      "Payment",
    );

    return BlocBuilder<PaymentBloc, PaymentState>(
      builder: (context, state) => Container(
        child: Column(
          children: <Widget>[
            Divider(
              color: kAccentColor,
              thickness: sLineNormal,
            ),
            // SubTotal
            BasketFooterItem(
              title: textTitleSubtotal,
              value: state.subTotal,
            ),
            // Total Discount
            BasketFooterItem(
              title: textTitleTotalDiscount,
              value: state.totalDiscount,
            ),
            // Total
            BasketFooterItem(
              title: textTitleTotal,
              value: state.total,
            ),
            SizedBox(
              height: sPaddingContainer,
            ),
            // Buttons
            Container(
              height: sButtonForm,
              child: Row(
                children: <Widget>[
                  // Button Back
                  Container(
                    width: sButtonForm,
                    color: kPrimaryColor,
                    child: ElevatedButton(
                      onPressed: () {
                        return ExtendedNavigator.of(context)
                            .replace(Routes.homePage);
                      },
                      style: yButtonCircleAccent,
                      child: Icon(
                        Icons.arrow_back,
                        color: kPrimaryColor,
                        size: sIcon,
                      ),
                    ),
                  ),
                  VerticalDivider(
                    color: kSecondColor,
                  ),
                  // Button Payment
                  Expanded(
                    child: Container(
                      child: ElevatedButton(
                        onPressed: (isPayment && state.total > 0)
                            ? () {
                                if (state.total > 0) {
                                  // Go to Payment Page
                                  ExtendedNavigator.of(context)
                                      .push(Routes.paymentPage);
                                }
                              }
                            : null,
                        style: yButtonForm,
                        child: Text(
                          textCharge + Formatter().decimalGrouping(state.total),
                          style: yTextBoldDark,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
