import 'package:flutter/material.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:pos/presentation/product/component/products.dart';
import 'package:pos/presentation/product/component/textbox_search.dart';

class ListProduct extends StatelessWidget {
  const ListProduct({
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
          // ListProduct: Header
          TextboxSearch(),
          SizedBox(
            height: sPaddingContainer,
          ),
          // ListProduct: Products
          Products(),
        ],
      ),
    );
  }
}
