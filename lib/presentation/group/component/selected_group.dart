import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pos/application/group/group_bloc.dart';
import 'package:pos/domain/model/privilege_model.dart';
import 'package:pos/presentation/core/utils.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/auth/auth_bloc.dart';
import 'package:pos/presentation/group/component/selected_group_button.dart';
import 'package:pos/presentation/group/component/selected_group_group_name.dart';
import 'package:pos/presentation/group/component/selected_group_header.dart';
import 'package:pos/presentation/group/component/selected_group_privileges.dart';

class SelectedGroup extends StatelessWidget {
  const SelectedGroup({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _node = FocusScope.of(context);
    AuthBloc _authBloc = context.read<AuthBloc>();
    bool isAuthorizedChange = false;
    for (PrivilegeModel privilegeModel
        in _authBloc.state.userModel.group.listPrivilege) {
      if (Utils().isEqualsIgnoreCase(privilegeModel.menuName, "Group") &&
          Utils().isEqualsIgnoreCase(privilegeModel.action, "Change")) {
        isAuthorizedChange = true;
      }
    }

    return BlocBuilder<GroupBloc, GroupState>(builder: (context, state) {
      return Container(
        padding: EdgeInsets.fromLTRB(
          sPaddingContainer,
          sPaddingContainer,
          sPaddingContainer,
          0,
        ),
        child: Column(
          children: <Widget>[
            // Header
            SelectedGroupHeader(
              isAuthorizedChange: true,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        // Textbox: Group Name
                        SelectedGroupGroupName(
                          node: _node,
                          isAuthorizedChange: true,
                          value: state.selectedGroup.groupName,
                          title: "Group Name",
                        ),
                        // Dropdown: Privilege(s)
                        SelectedGroupPrivileges(
                          isAuthorizedChange: true,
                          title: "Privileges",
                        ),
                        // Buttons
                        SelectedGroupButton(
                          isAuthorizedChange: isAuthorizedChange,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
