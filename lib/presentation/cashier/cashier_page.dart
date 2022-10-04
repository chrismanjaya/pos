import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/activity/activity_bloc.dart';
import 'package:pos/application/cashier/payment/payment_bloc.dart';
import 'package:pos/presentation/cashier/component/basket.dart';
import 'package:pos/presentation/cashier/component/list_product.dart';
import 'package:pos/presentation/core/widget_size.dart';

class CashierPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PaymentBloc _paymentBloc = context.read<PaymentBloc>();
    _paymentBloc.add(const PaymentEvent.clearAll());
    ActivityBloc _activityBloc = context.read<ActivityBloc>();
    _paymentBloc.add(
        PaymentEvent.loadTransaction(_activityBloc.state.selectedTransaction));
    return WillPopScope(
      // ignore: missing_return
      onWillPop: () {},
      child: Scaffold(
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.all(sPaddingBody),
            child: Row(
              children: [
                // List Product
                Basket(),
                SizedBox(
                  width: sPaddingBody,
                ),
                // Basket
                ListProduct(),
              ],
            ),
          ),
        ),
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
