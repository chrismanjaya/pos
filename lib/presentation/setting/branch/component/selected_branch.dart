import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pos/application/branch/branch_bloc.dart';
import 'package:pos/domain/model/privilege_model.dart';
import 'package:pos/presentation/core/utils.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_string.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/auth/auth_bloc.dart';
import 'package:pos/presentation/setting/branch/component/selected_branch_button.dart';
import 'package:pos/presentation/setting/branch/component/selected_branch_header.dart';
import 'package:pos/presentation/setting/branch/component/selected_branch_textbox_address.dart';
import 'package:pos/presentation/setting/branch/component/selected_branch_textbox_branch_name.dart';
import 'package:pos/presentation/setting/branch/component/selected_branch_textbox_phone_number.dart';

class SelectedBranch extends StatelessWidget {
  const SelectedBranch({
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

    return BlocBuilder<BranchBloc, BranchState>(builder: (context, state) {
      return Container(
          padding: EdgeInsets.fromLTRB(
            sPaddingContainer,
            sPaddingContainer,
            sPaddingContainer,
            0,
          ),
          child: Column(
            children: <Widget>[
              SelectedBranchHeader(
                isAuthorizedChange: isAuthorizedChange,
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
                          // Textbox: Branch Name
                          SelectedBranchTextboxBranchName(
                            node: _node,
                            title: textBranchNameLabel,
                            value: state.selectedBranch.branchName,
                            isAuthorizedChange: isAuthorizedChange,
                          ),
                          // Textbox: Address
                          SelectedBranchTextboxAddress(
                            node: _node,
                            title: textAddressLabel,
                            value: state.selectedBranch.address,
                            isAuthorizedChange: isAuthorizedChange,
                          ),
                          // Textbox: Phone Number
                          SelectedBranchTextboxPhoneNumber(
                            node: _node,
                            title: textPhoneNumberLabel,
                            value: state.selectedBranch.phoneNumber,
                            isAuthorizedChange: isAuthorizedChange,
                          ),
                          // Buttons
                          SelectedBranchButton(
                            isAuthorizedChange: isAuthorizedChange,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ));
    });
  }
}
