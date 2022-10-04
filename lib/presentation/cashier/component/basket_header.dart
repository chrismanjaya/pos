import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/cashier/payment/payment_bloc.dart';
import 'package:pos/presentation/core/utils.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_duration.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_string.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:pos/application/auth/auth_bloc.dart';

class BasketHeader extends StatelessWidget {
  const BasketHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthBloc _authBloc = context.read<AuthBloc>();
    bool isSave = Utils().isValidAction(
      _authBloc.state.userModel.group.listPrivilege,
      1,
      "Save",
    );
    PaymentBloc _paymentBloc = context.read<PaymentBloc>();
    String customerName =
        "Customer " + _authBloc.state.userModel.branch.branchName;
    _paymentBloc.add(
      PaymentEvent.setCustomerData(
        customerName,
        _authBloc.state.userModel.username,
      ),
    );
    _paymentBloc.add(PaymentEvent.setBranch(_authBloc.state.userModel.branch));
    return Container(
      margin: EdgeInsets.symmetric(vertical: sPaddingContainer),
      child: Row(
        children: <Widget>[
          // Customer Information
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Customer Name
                Text(
                  customerName,
                  style: yTextBold,
                ),
              ],
            ),
          ),

          // Button Save,
          Container(
            child: ElevatedButton(
              onPressed:
                  (isSave && (_paymentBloc.state.listBasketModel.length > 0))
                      ? () {
                          _paymentBloc.add(
                            PaymentEvent.saveTransaction(
                                _authBloc.state.userModel.username),
                          );
                          _paymentBloc.add(
                            PaymentEvent.clearAll(),
                          );
                          final snackBar = SnackBar(
                            duration: dNormal,
                            backgroundColor: kUIPrimaryColor,
                            content: Text(
                              "Transaction has been saved",
                              style: yTextNormalDark,
                            ),
                            action: SnackBarAction(
                              label: textButtonClose,
                              textColor: kPrimaryColor,
                              onPressed: () {},
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      : null,
              style: yButtonCircleAccent,
              child: Icon(
                Icons.download_rounded,
                size: sIconTextbox,
                color: kPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
