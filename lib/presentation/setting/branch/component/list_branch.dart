import 'package:flutter/material.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:pos/presentation/setting/branch/component/branches.dart';
import 'package:pos/presentation/setting/branch/component/textbox_search.dart';

class ListBranch extends StatelessWidget {
  const ListBranch({
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
          // ListBranch: Header
          TextboxSearch(),
          SizedBox(
            height: sPaddingContainer,
          ),
          // ListBranch: Branches
          Branches(),
        ],
      ),
    );
  }
}
