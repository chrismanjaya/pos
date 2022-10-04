import 'package:flutter/material.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:pos/presentation/group/component/groups.dart';
import 'package:pos/presentation/group/component/textbox_search.dart';

class ListGroup extends StatelessWidget {
  const ListGroup({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kSecondColor,
        borderRadius: borderRadius,
      ),
      padding: EdgeInsets.fromLTRB(
        sPaddingContainer,
        sPaddingContainer,
        sPaddingContainer,
        0,
      ),
      child: Column(
        children: <Widget>[
          // ListGroup: Header
          TextboxSearch(),
          SizedBox(
            height: sPaddingContainer,
          ),
          // ListGroup: Groups
          Groups(),
        ],
      ),
    );
  }
}
