import 'package:flutter/material.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';

class TransactionDetailBody extends StatelessWidget {
  final String quantity;
  final String name;
  final String price;
  final String discount;
  final bool isDiscount;

  const TransactionDetailBody({
    Key key,
    @required this.quantity,
    @required this.name,
    @required this.price,
    @required this.discount,
    @required this.isDiscount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: sPaddingContainer),
      child: Row(
        children: <Widget>[
          // Item Quantity
          Expanded(
            flex: 1,
            child: Text(
              quantity,
              style: yTextNormalReceipt,
            ),
          ),
          // Item Name
          Expanded(
            flex: 8,
            child: Text(
              name,
              style: yTextNormalReceipt,
            ),
          ),
          // Item Price

          Expanded(
            flex: 5,
            child: Text(
              price,
              style: yTextNormalReceipt,
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
