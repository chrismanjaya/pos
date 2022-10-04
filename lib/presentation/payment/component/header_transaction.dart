import 'package:flutter/material.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';

class HeaderTransaction extends StatelessWidget {
  final String title;
  final String value;

  const HeaderTransaction({
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
              style: yTextMiniAccent,
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              value,
              style: yTextNormal,
            ),
          ),
        ],
      ),
    );
  }
}
