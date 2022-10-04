import 'package:flutter/material.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';

class DetailTransaction extends StatelessWidget {
  final String quantity;
  final String name;
  final String price;
  final String discount;
  final bool isDiscount;

  const DetailTransaction({
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
      margin: EdgeInsets.only(bottom: sPaddingSmall),
      child: Row(
        children: <Widget>[
          // Item Quantity
          Expanded(
            flex: 1,
            child: Text(
              quantity,
              style: yTextNormalAccent,
            ),
          ),
          // Item Name
          Expanded(
            flex: 5,
            child: Text(
              name,
              style: yTextNormal,
            ),
          ),
          // Item Price

          Expanded(
            flex: 2,
            child: (isDiscount)
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        price,
                        style: yTextStrikeThrough,
                        textAlign: TextAlign.right,
                      ),
                      Text(
                        discount,
                        style: yTextBold,
                        textAlign: TextAlign.right,
                      ),
                    ],
                  )
                : Text(
                    price,
                    style: yTextBold,
                    textAlign: TextAlign.right,
                  ),
          ),
        ],
      ),
    );
  }
}
