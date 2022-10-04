import 'package:flutter/material.dart';
import 'package:pos/application/group/group_bloc.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_string.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class SelectedGroupHeader extends StatelessWidget {
  const SelectedGroupHeader({
    Key key,
    @required this.isAuthorizedChange,
  }) : super(key: key);

  final bool isAuthorizedChange;

  @override
  Widget build(BuildContext context) {
    GroupBloc _groupBloc = context.read<GroupBloc>();
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              width: sButtonForm,
              color: kPrimaryColor,
              child: ElevatedButton(
                onPressed: () {
                  return ExtendedNavigator.of(context).replace(Routes.homePage);
                },
                style: yButtonCircleAccent,
                child: Icon(
                  Icons.arrow_back,
                  color: kPrimaryColor,
                  size: sIcon,
                ),
              ),
            ),
            VerticalDivider(
              color: kSecondColor,
            ),
            // Button Clear
            Expanded(
              child: ElevatedButton(
                onPressed: isAuthorizedChange
                    ? () {
                        _groupBloc.add(GroupEvent.clearSelectedGroup());
                      }
                    : null,
                style: yButtonFormClearAll,
                child: Text(
                  textButtonClearAll,
                  style: yTextBoldDark,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: sPaddingBody,
        )
      ],
    );
  }
}
