import 'package:flutter/material.dart';
import 'package:pos/application/group/group_bloc.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_duration.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_string.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectedGroupButton extends StatelessWidget {
  const SelectedGroupButton({
    Key key,
    @required this.isAuthorizedChange,
  }) : super(key: key);

  final bool isAuthorizedChange;

  @override
  Widget build(BuildContext context) {
    GroupBloc _groupBloc = context.read<GroupBloc>();
    return BlocListener<GroupBloc, GroupState>(
      listener: (context, state) {
        if (state.message.length > 0) {
          final snackBar = SnackBar(
            duration: dNormal,
            backgroundColor: kUIPrimaryColor,
            content: Text(
              state.message,
              style: yTextNormal,
            ),
            action: SnackBarAction(
              label: textButtonClose,
              textColor: kTextPrimaryColor,
              onPressed: () {},
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          if (!state.isError) {
            _groupBloc.add(GroupEvent.getAllGroup());
            _groupBloc.add(GroupEvent.clearSelectedGroup());
          }
        }
      },
      child: BlocBuilder<GroupBloc, GroupState>(
        builder: (context, state) => Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: sPaddingBody),
              child: (state.isLoading)
                  ? LinearProgressIndicator(
                      backgroundColor: kSecondColor,
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(kAccentColor),
                    )
                  : Container(),
            ),
            Row(
              children: <Widget>[
                // Button Add
                Expanded(
                  child: ElevatedButton(
                    onPressed: isAuthorizedChange
                        ? () {
                            _groupBloc.add(GroupEvent.addGroup());
                          }
                        : null,
                    style: yButtonFormAdd,
                    child: Text(
                      textButtonAdd,
                      style: yTextBoldDark,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  width: sPaddingContainer,
                ),
                // Button Update
                Expanded(
                  child: ElevatedButton(
                    onPressed: (isAuthorizedChange &&
                            _groupBloc.state.selectedGroup.id != "")
                        ? () {
                            _groupBloc.add(GroupEvent.updateGroup());
                          }
                        : null,
                    style: yButtonFormUpdate,
                    child: Text(
                      textButtonUpdate,
                      style: yTextBoldDark,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  width: sPaddingContainer,
                ),
                // Button Delete
                Expanded(
                  child: ElevatedButton(
                    onPressed: (isAuthorizedChange &&
                            _groupBloc.state.selectedGroup.id != "")
                        ? () {
                            _groupBloc.add(GroupEvent.deleteGroup());
                          }
                        : null,
                    style: yButtonFormDelete,
                    child: Text(
                      textButtonDelete,
                      style: yTextBoldDark,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
