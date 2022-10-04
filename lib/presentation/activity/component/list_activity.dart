import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/activity/activity_bloc.dart';
import 'package:pos/presentation/activity/component/activities.dart';
import 'package:pos/presentation/activity/component/activity_filter_dialog.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';

class ListActivity extends StatelessWidget {
  const ListActivity({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ActivityBloc _activityBloc = context.read<ActivityBloc>();

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
          // ListActivity: Header
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: sPaddingContainer,
            ),
            width: double.infinity,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Text(
                    "List Transaction",
                    style: yTextSubtitle,
                  ),
                ),
                Container(
                  width: sButtonIcon,
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) =>
                            activityFilterDialog(context, _activityBloc),
                      );
                    },
                    style: yButtonCircleIcon,
                    child: Icon(
                      Icons.filter_alt_outlined,
                      color: kAccentColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: kThirdColor,
          ),
          // ListActivity: Activities
          Activities(),
        ],
      ),
    );
  }
}
