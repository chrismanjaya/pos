import 'package:flutter/material.dart';
import 'package:pos/application/user/user_bloc.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/user/component/change_group_dialog.dart';
import 'package:auto_route/auto_route.dart';

class SelectedUserGroup extends StatelessWidget {
  const SelectedUserGroup({
    Key key,
    @required this.title,
    @required this.isAuthorizedChange,
  }) : super(key: key);

  final String title;
  final bool isAuthorizedChange;

  @override
  Widget build(BuildContext context) {
    UserBloc _userBloc = context.read<UserBloc>();
    String value = _userBloc.state.selectedUser.group.groupName;
    if (value.isEmpty) value = "Please select group";

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: sPaddingContainer),
            child: Text(
              title,
              style: yTextBold,
            ),
          ),
          Container(
            height: sButtonForm,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => ChangeGroupDialog(
                    userBloc: _userBloc,
                  ),
                );
              },
              style: yButtonFormGrey,
              child: Text(
                value,
                style: yTextNormalAccent,
              ),
            ),
          ),
          SizedBox(
            height: sPaddingBody,
          )
        ],
      ),
    );
  }
}
