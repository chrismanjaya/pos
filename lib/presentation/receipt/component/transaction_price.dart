import 'package:flutter/material.dart';
import 'package:pos/presentation/core/formatter.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';

class TransactionPrice extends StatelessWidget {
  final String title;
  final double value;

  const TransactionPrice({
    Key key,
    @required this.title,
    @required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: sPaddingContainer),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Text(
              title,
              style: yTextNormalReceipt,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              Formatter().decimalGrouping(value),
              textAlign: TextAlign.right,
              style: yTextNormalReceipt,
            ),
          ),
        ],
      ),
    );
  }
}
