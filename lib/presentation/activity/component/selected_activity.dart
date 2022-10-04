import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/activity/activity_bloc.dart';
import 'package:pos/application/auth/auth_bloc.dart';
import 'package:pos/domain/model/privilege_model.dart';
import 'package:pos/presentation/activity/component/detail_transaction.dart';
import 'package:pos/presentation/activity/component/detail_transaction_header.dart';
import 'package:pos/presentation/activity/component/total_transaction.dart';
import 'package:pos/presentation/cashier/cashier_page.dart';
import 'package:pos/presentation/core/formatter.dart';
import 'package:pos/presentation/core/utils.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_duration.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_string.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:pos/presentation/print/print.dart';
import 'package:pos/presentation/print/print_all.dart';
import 'package:pos/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class SelectedActivity extends StatelessWidget {
  const SelectedActivity({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthBloc _authBloc = context.read<AuthBloc>();
    ActivityBloc _activityBloc = context.read<ActivityBloc>();

    bool isAuthorizedReprint = false;
    bool isAuthorizedContinue = false;
    bool isAuthorizedCVoid = false;

    for (PrivilegeModel privilegeModel
        in _authBloc.state.userModel.group.listPrivilege) {
      if (privilegeModel.menuCode == 2 &&
          Utils().isEqualsIgnoreCase(privilegeModel.action, "Reprint")) {
        isAuthorizedReprint = true;
      } else if (privilegeModel.menuCode == 2 &&
          Utils().isEqualsIgnoreCase(privilegeModel.action, "Continue")) {
        isAuthorizedContinue = true;
      } else if (privilegeModel.menuCode == 2 &&
          Utils().isEqualsIgnoreCase(privilegeModel.action, "Void")) {
        isAuthorizedCVoid = true;
      }
    }

    return BlocBuilder<ActivityBloc, ActivityState>(builder: (context, state) {
      Color statusColor = kSecondColor;
      switch (state.selectedTransaction.status) {
        case "Done":
          statusColor = kUISuccessColor;
          break;
        case "Pending":
          statusColor = kUIWarningColor;
          break;
        case "Cancelled":
          statusColor = kUIDangerColor;
          break;
        default:
          break;
      }
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
              (state.selectedTransaction.id == "")
                  ? Container()
                  : Row(
                      children: <Widget>[
                        // Customer Name
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                state.selectedTransaction.id.toUpperCase(),
                                style: yTextBoldAccent,
                              ),
                              Text(
                                state.selectedTransaction.customerName,
                                style: yTextNormal,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: sPaddingContainer,
                        ),
                        // Status
                        Text(
                          state.selectedTransaction.status,
                          style: yTextSubtitle.copyWith(color: statusColor),
                        ),
                      ],
                    ),
              (state.selectedTransaction.id == "")
                  ? Container()
                  : Divider(
                      color: kThirdColor,
                    ),
              // Body
              (state.selectedTransaction.id == "")
                  ? Expanded(
                      child: Container(),
                    )
                  : Expanded(
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: DetailTransactionHeader(),
                          ),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: state.selectedTransaction
                                      .listTransactionDetailModel
                                      .map(
                                        (transactionDetailModel) =>
                                            DetailTransaction(
                                          quantity: transactionDetailModel
                                                  .quantity
                                                  .toString() +
                                              "x",
                                          name: transactionDetailModel.itemName,
                                          discount: Formatter().decimalGrouping(
                                              transactionDetailModel
                                                      .itemDiscount *
                                                  transactionDetailModel
                                                      .quantity),
                                          price: Formatter().decimalGrouping(
                                              transactionDetailModel.itemPrice *
                                                  transactionDetailModel
                                                      .quantity),
                                          isDiscount: (transactionDetailModel
                                                  .itemDiscount >
                                              0),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            color: kThirdColor,
                          ),
                          Container(
                            width: double.infinity,
                            child: Column(
                              children: <Widget>[
                                // Subtotal
                                TotalTransaction(
                                  title: "Subtotal",
                                  value: state.selectedTransaction.subtotal,
                                ),
                                // Total Discount
                                TotalTransaction(
                                  title: "Discount",
                                  value: state.selectedTransaction.discount,
                                ),
                                // Total
                                TotalTransaction(
                                  title: "Total",
                                  value: state.selectedTransaction.total,
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: kThirdColor,
                          ),
                        ],
                      ),
                    ),

              // Button
              Container(
                child: Row(
                  children: <Widget>[
                    // Button: Back
                    Container(
                      width: sButtonForm,
                      color: kPrimaryColor,
                      child: ElevatedButton(
                        onPressed: () {
                          return ExtendedNavigator.of(context)
                              .replace(Routes.homePage);
                        },
                        style: yButtonCircleAccent,
                        child: Icon(
                          Icons.arrow_back,
                          color: kPrimaryColor,
                          size: sIcon,
                        ),
                      ),
                    ),
                    // Button: Print All
                    Container(
                      width: sButtonForm,
                      color: kPrimaryColor,
                      child: ElevatedButton(
                        onPressed: isAuthorizedReprint
                            ? () async {
                                final result = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => PrintAll(
                                      listTransactionHeaderModel:
                                          state.listTransactionFiltered,
                                      branch: _authBloc.state.userModel.branch,
                                    ),
                                  ),
                                );
                                if (result != null && result.length > 0) {
                                  final snackBar = SnackBar(
                                    duration: dNormal,
                                    backgroundColor: kAccentColor,
                                    content: Text(
                                      '$result',
                                      style: yTextNormalDark,
                                    ),
                                    action: SnackBarAction(
                                      label: textButtonClose,
                                      textColor: kPrimaryColor,
                                      onPressed: () {},
                                    ),
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                }
                              }
                            : null,
                        style: yButtonCirclePrimary,
                        child: Icon(
                          Icons.description,
                          color: kTextPrimaryColor,
                          size: sIcon,
                        ),
                      ),
                    ),
                    // Button: Re-Print
                    (state.selectedTransaction.status == "Done")
                        ? Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: sPaddingContainer),
                              child: ElevatedButton(
                                onPressed: isAuthorizedReprint
                                    ? () async {
                                        final result = await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (_) => Print(
                                              referenceNo: state
                                                  .selectedTransaction.id
                                                  .toUpperCase(),
                                              transactionHeaderModel:
                                                  state.selectedTransaction,
                                              branch: _authBloc
                                                  .state.userModel.branch,
                                            ),
                                          ),
                                        );
                                        if (result != null &&
                                            result.length > 0) {
                                          final snackBar = SnackBar(
                                            duration: dNormal,
                                            backgroundColor: kAccentColor,
                                            content: Text(
                                              '$result',
                                              style: yTextNormalDark,
                                            ),
                                            action: SnackBarAction(
                                              label: textButtonClose,
                                              textColor: kPrimaryColor,
                                              onPressed: () {},
                                            ),
                                          );
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(snackBar);
                                        }
                                      }
                                    : null,
                                style: yButtonFormGrey,
                                child: Text(
                                  "Re-Print",
                                  style: yTextBold,
                                ),
                              ),
                            ),
                          )
                        : Container(),
                    // Button: Void
                    (state.selectedTransaction.status == "Done")
                        ? Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: sPaddingContainer),
                              child: ElevatedButton(
                                onPressed: isAuthorizedCVoid
                                    ? () {
                                        showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                            backgroundColor: kPrimaryColor,
                                            contentPadding: EdgeInsets.zero,
                                            titlePadding: EdgeInsets.zero,
                                            title: Container(
                                              padding: EdgeInsets.all(
                                                  sPaddingContainer),
                                              color: kAccentColor,
                                              width: double.infinity,
                                              child: Text(
                                                "Void Transaction",
                                                style: yTextBoldDark,
                                              ),
                                            ),
                                            actions: <Widget>[
                                              TextButton(
                                                onPressed: () {
                                                  return Navigator.of(context,
                                                          rootNavigator: true)
                                                      .pop();
                                                },
                                                child: Text(
                                                  "No",
                                                  style: yTextBold,
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  _activityBloc.add(
                                                    ActivityEvent
                                                        .voidTransaction(state
                                                            .selectedTransaction),
                                                  );
                                                  return Navigator.of(context,
                                                          rootNavigator: true)
                                                      .pop();
                                                },
                                                child: Text(
                                                  "Yes",
                                                  style: yTextBoldAccent,
                                                ),
                                              ),
                                            ],
                                            content: Container(
                                              padding: EdgeInsets.all(
                                                sPaddingBody,
                                              ),
                                              child: Text(
                                                "Are you sure to void this transaction ?",
                                                style: yTextNormal,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                    : null,
                                style: yButtonFormBorder,
                                child: Text(
                                  "Void",
                                  style: yTextBold,
                                ),
                              ),
                            ),
                          )
                        : Container(),
                    // Button: Continue
                    (state.selectedTransaction.status == "Pending")
                        ? Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: sPaddingContainer),
                              child: ElevatedButton(
                                onPressed: isAuthorizedContinue
                                    ? () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute<CashierPage>(
                                            builder: (_) => BlocProvider.value(
                                              value:
                                                  BlocProvider.of<ActivityBloc>(
                                                      context),
                                              child: CashierPage(),
                                            ),
                                          ),
                                        );
                                      }
                                    : null,
                                style: yButtonFormGrey,
                                child: Text(
                                  "Continue",
                                  style: yTextBold,
                                ),
                              ),
                            ),
                          )
                        : Container(),
                    // Button: Discard
                    (state.selectedTransaction.status == "Pending")
                        ? Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: sPaddingContainer),
                              child: ElevatedButton(
                                onPressed: isAuthorizedContinue
                                    ? () {
                                        showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                            backgroundColor: kPrimaryColor,
                                            contentPadding: EdgeInsets.zero,
                                            titlePadding: EdgeInsets.zero,
                                            title: Container(
                                              padding: EdgeInsets.all(
                                                  sPaddingContainer),
                                              color: kAccentColor,
                                              width: double.infinity,
                                              child: Text(
                                                "Discard Transaction",
                                                style: yTextBoldDark,
                                              ),
                                            ),
                                            actions: <Widget>[
                                              TextButton(
                                                onPressed: () {
                                                  return Navigator.of(context,
                                                          rootNavigator: true)
                                                      .pop();
                                                },
                                                child: Text(
                                                  "No",
                                                  style: yTextBold,
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  _activityBloc.add(
                                                    ActivityEvent
                                                        .discardTransaction(state
                                                            .selectedTransaction),
                                                  );
                                                  return Navigator.of(context,
                                                          rootNavigator: true)
                                                      .pop();
                                                },
                                                child: Text(
                                                  "Yes",
                                                  style: yTextBoldAccent,
                                                ),
                                              ),
                                            ],
                                            content: Container(
                                              padding: EdgeInsets.all(
                                                sPaddingBody,
                                              ),
                                              child: Text(
                                                "Are you sure to discard this transaction ?",
                                                style: yTextNormal,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                    : null,
                                style: yButtonFormBorder,
                                child: Text(
                                  "Discard",
                                  style: yTextBold,
                                ),
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
              ),
            ],
          ));
    });
  }
}
