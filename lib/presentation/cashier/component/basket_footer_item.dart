import 'package:flutter/material.dart';
import 'package:pos/presentation/core/formatter.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';

class BasketFooterItem extends StatelessWidget {
  final String title;
  final double value;

  const BasketFooterItem({
    Key key,
    @required this.title,
    @required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: sPaddingContainer,
        vertical: sPaddingMini,
      ),
      child: Row(
        children: <Widget>[
          // Title
          Text(
            title,
            style: yTextNormal,
          ),
          // Value
          Expanded(
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
