import 'package:flutter/material.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';

class MenuCard extends StatelessWidget {
  final String menuName;
  final IconData menuIcon;
  final Function onTap;

  const MenuCard({
    Key key,
    @required this.menuName,
    @required this.menuIcon,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        height: sMenuCard,
        width: sMenuCard,
        padding: EdgeInsets.all(sPaddingMedium),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          border: Border.all(
            color: kSecondColor,
          ),
        ),
        child: Column(
          children: <Widget>[
            // Menu Icon
            Container(
              height: sMenuIconBox,
              width: sMenuIconBox,
              margin: EdgeInsets.only(bottom: sPaddingMedium),
              decoration: BoxDecoration(
                color: kFourColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                menuIcon,
                size: sMenuIcon,
                color: kPrimaryColor,
              ),
            ),
            // Menu Name
            Text(
              menuName,
              textAlign: TextAlign.center,
              style: yTextNormal,
            ),
          ],
        ),
      ),
    );
  }
}
