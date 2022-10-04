import 'package:flutter/material.dart';
import 'package:pos/application/group/group_bloc.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/group/component/change_privilege_dialog.dart';

class SelectedGroupPrivileges extends StatelessWidget {
  const SelectedGroupPrivileges({
    Key key,
    @required this.title,
    @required this.isAuthorizedChange,
  }) : super(key: key);

  final String title;
  final bool isAuthorizedChange;

  @override
  Widget build(BuildContext context) {
    GroupBloc _groupBloc = context.read<GroupBloc>();
    int listPrivilegeLength =
        _groupBloc.state.selectedGroup.listPrivilege.length;

    String value = (listPrivilegeLength > 0)
        ? listPrivilegeLength.toString() + " privileges selected"
        : "Please select privilege";

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
                  builder: (context) => ChangePrivilegeDialog(
                    groupBloc: _groupBloc,
                    listSelectedPrivilegeModel:
                        _groupBloc.state.selectedGroup.listPrivilege,
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
