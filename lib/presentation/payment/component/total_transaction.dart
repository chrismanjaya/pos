import 'package:flutter/material.dart';
import 'package:pos/presentation/core/formatter.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';

class TotalTransaction extends StatelessWidget {
  final String title;
  final double value;

  const TotalTransaction({
    Key key,
    @required this.title,
    @required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: sPaddingMini),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Text(
              title,
              style: yTextNormal,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              Formatter().decimalGrouping(value),
              textAlign: TextAlign.right,
              style: yTextBoldAccent,
            ),
          ),
        ],
      ),
    );
  }
}
