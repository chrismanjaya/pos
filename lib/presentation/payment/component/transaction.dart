import 'package:flutter/material.dart';
import 'package:pos/application/cashier/payment/payment_bloc.dart';
import 'package:pos/presentation/core/formatter.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_string.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:pos/presentation/payment/component/detail_transaction.dart';
import 'package:pos/presentation/payment/component/detail_transaction_header.dart';
import 'package:pos/presentation/payment/component/header_transaction.dart';
import 'package:pos/presentation/payment/component/total_transaction.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Transaction extends StatelessWidget {
  const Transaction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PaymentBloc _paymentBloc = context.read<PaymentBloc>();

    return Container(
      margin: EdgeInsets.all(sPaddingContainer),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            textTitleTransaction,
            style: yTextBold,
          ),
          SizedBox(
            height: sPaddingContainer,
          ),
          // Header Transaction
          Container(
            child: Column(
              children: <Widget>[
                // Customer Name
                HeaderTransaction(
                  title: "Customer Name",
                  value: _paymentBloc.state.customerName,
                ),
              ],
            ),
          ),
          Divider(
            color: kThirdColor,
          ),
          // Transaction Detail Header
          Container(
            child: DetailTransactionHeader(),
          ),
          // Transaction Detail
          Container(
            child: Column(
              children: _paymentBloc.state.listBasketModel
                  .map(
                    (basket) => DetailTransaction(
                      quantity: basket.quantity.toString() + "x",
                      name: basket.product.name,
                      discount: Formatter().decimalGrouping(
                          basket.product.discount * basket.quantity),
                      price: Formatter().decimalGrouping(
                          basket.product.price * basket.quantity),
                      isDiscount: (basket.product.discount > 0),
                    ),
                  )
                  .toList(),
            ),
          ),
          Divider(
            color: kThirdColor,
          ),
          // Transaction Total
          Container(
            child: Column(
              children: <Widget>[
                // Subtotal
                TotalTransaction(
                  title: "Subtotal",
                  value: _paymentBloc.state.subTotal,
                ),
                // Total Discount
                TotalTransaction(
                  title: "Discount",
                  value: _paymentBloc.state.totalDiscount,
                ),
                // Total
                TotalTransaction(
                  title: "Total",
                  value: _paymentBloc.state.total,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
