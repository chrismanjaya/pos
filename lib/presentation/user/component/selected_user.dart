import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pos/application/user/user_bloc.dart';
import 'package:pos/domain/model/privilege_model.dart';
import 'package:pos/presentation/core/utils.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/auth/auth_bloc.dart';
import 'package:pos/presentation/user/component/selected_user_branches.dart';
import 'package:pos/presentation/user/component/selected_user_button.dart';
import 'package:pos/presentation/user/component/selected_user_email.dart';
import 'package:pos/presentation/user/component/selected_user_group.dart';
import 'package:pos/presentation/user/component/selected_user_header.dart';
import 'package:pos/presentation/user/component/selected_user_username.dart';

class SelectedUser extends StatelessWidget {
  const SelectedUser({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _node = FocusScope.of(context);
    AuthBloc _authBloc = context.read<AuthBloc>();
    bool isAuthorizedChange = false;
    for (PrivilegeModel privilegeModel
        in _authBloc.state.userModel.group.listPrivilege) {
      if (privilegeModel.menuCode == 5 &&
          Utils().isEqualsIgnoreCase(privilegeModel.action, "Change")) {
        isAuthorizedChange = true;
      }
    }

    return BlocBuilder<UserBloc, UserState>(builder: (context, state) {
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
            SelectedUserHeader(
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
                        // Textbox: Username
                        SelectedUserUsername(
                          node: _node,
                          isAuthorizedChange: isAuthorizedChange,
                          value: state.selectedUser.username,
                          title: "Username",
                        ),
                        // Textbox: Email
                        SelectedUserEmail(
                          node: _node,
                          isAuthorizedChange: isAuthorizedChange,
                          value: state.selectedUser.email,
                          title: "Email",
                        ),
                        // Dropdown: Group
                        SelectedUserGroup(
                          isAuthorizedChange: isAuthorizedChange,
                          title: "Group",
                        ),
                        // Dropdown: Branch(es)
                        SelectedUserBranches(
                          isAuthorizedChange: isAuthorizedChange,
                          title: "Branches",
                        ),
                        // Buttons
                        SelectedUserButton(
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
