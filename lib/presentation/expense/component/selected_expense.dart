import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pos/application/expense/expense_bloc.dart';
import 'package:pos/domain/model/privilege_model.dart';
import 'package:pos/presentation/core/utils.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_string.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/auth/auth_bloc.dart';
import 'package:pos/presentation/expense/component/selected_expense_button.dart';
import 'package:pos/presentation/expense/component/selected_expense_date_time.dart';
import 'package:pos/presentation/expense/component/selected_expense_header.dart';
import 'package:pos/presentation/expense/component/selected_expense_textbox_item_cost.dart';
import 'package:pos/presentation/expense/component/selected_expense_textbox_item_name.dart';

class SelectedExpense extends StatelessWidget {
  const SelectedExpense({
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

    return BlocBuilder<ExpenseBloc, ExpenseState>(builder: (context, state) {
      return Container(
          padding: EdgeInsets.fromLTRB(
            sPaddingContainer,
            sPaddingContainer,
            sPaddingContainer,
            0,
          ),
          child: Column(
            children: <Widget>[
              SelectedExpenseHeader(
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
                          // Button: Date Time
                          SelectedExpenseDateTime(
                            node: _node,
                            title: textExpenseDateTimeLabel,
                            isAuthorizedChange: isAuthorizedChange,
                          ),
                          // Textbox: Item Name
                          SelectedExpenseTextboxItemName(
                            node: _node,
                            title: textExpenseItemNameLabel,
                            value: state.selectedExpense.itemName,
                            isAuthorizedChange: isAuthorizedChange,
                          ),
                          // Textbox: Item Cost
                          SelectedExpenseTextboxItemCost(
                            node: _node,
                            title: textExpenseItemCostLabel,
                            value: state.selectedExpense.itemCost,
                            isAuthorizedChange: isAuthorizedChange,
                          ),
                          // Buttons
                          SelectedExpenseButton(
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
