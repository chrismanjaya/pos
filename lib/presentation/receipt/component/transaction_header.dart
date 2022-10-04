import 'package:flutter/material.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';

class TransactionHeader extends StatelessWidget {
  final String title;
  final String value;

  const TransactionHeader({
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
            flex: 4,
            child: Text(
              title,
              style: yTextNormalReceipt,
            ),
          ),
          Text(
            ": ",
            style: yTextNormalReceipt,
          ),
          Expanded(
            flex: 10,
            child: Text(
              value,
              style: yTextNormalReceipt,
            ),
          ),
        ],
      ),
    );
  }
}
