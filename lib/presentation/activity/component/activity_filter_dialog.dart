import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pos/application/activity/activity_bloc.dart';
import 'package:pos/application/transaction/filter/transaction_filter_bloc.dart';
import 'package:pos/domain/model/transaction_filter_model.dart';
import 'package:pos/injection.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_string.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:date_range_picker/date_range_picker.dart' as DateRangePicker;

AlertDialog activityFilterDialog(
    BuildContext context, ActivityBloc activityBloc) {
  final activityFilter = activityBloc.state.activityFilterModel;
  TransactionFilterModel activityFilterModel = activityFilter;

  return AlertDialog(
    backgroundColor: kPrimaryColor,
    contentPadding: EdgeInsets.zero,
    titlePadding: EdgeInsets.zero,
    title: Container(
      padding: EdgeInsets.all(sPaddingContainer),
      color: kAccentColor,
      width: double.infinity,
      child: Text(
        textActivityFilterDialog,
        style: yTextBoldDark,
      ),
    ),
    actions: [
      TextButton(
        onPressed: () {
          return Navigator.of(context, rootNavigator: true).pop();
        },
        child: Text(
          "Cancel",
          style: yTextBold,
        ),
      ),
      TextButton(
        onPressed: () {
          activityBloc.add(
            ActivityEvent.addActivityFilter(activityFilterModel),
          );
          activityBloc.add(ActivityEvent.getFiltredTransaction());
          return Navigator.of(context, rootNavigator: true).pop();
        },
        child: Text(
          "Apply",
          style: yTextBoldAccent,
        ),
      ),
    ],
    content: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(sPaddingContainer),
        height: sFormSignIn,
        child: BlocProvider<TransactionFilterBloc>(
          create: (context) => getIt<TransactionFilterBloc>()
            ..add(
              TransactionFilterEvent.initial(activityFilterModel),
            ),
          child: BlocBuilder<TransactionFilterBloc, TransactionFilterState>(
            builder: (context, state) {
              TransactionFilterBloc _transactionFilterBloc =
                  context.read<TransactionFilterBloc>();
              bool isStatusDone = state.listStatus.contains("Done");
              bool isStatusPending = state.listStatus.contains("Pending");
              bool isStatusCancelled = state.listStatus.contains("Cancelled");
              bool isStatusAll =
                  isStatusDone && isStatusPending && isStatusCancelled;

              activityFilterModel = activityFilterModel.copyWith(
                listStatus: state.listStatus,
                dateFrom: state.dateFrom,
                dateTo: state.dateTo,
              );
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // List Status
                  Text("Transaction Status", style: yTextBold),
                  Column(
                    children: <Widget>[
                      // Status: All
                      InkWell(
                        onTap: () {
                          List<String> listStatus = state.listStatus;
                          if (isStatusAll) {
                            listStatus = [];
                          } else {
                            listStatus.add("Done");
                            listStatus.add("Pending");
                            listStatus.add("Cancelled");
                          }
                          return _transactionFilterBloc.add(
                            TransactionFilterEvent.changeTransactionStatus(
                                listStatus),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                            sPaddingContainer,
                            sPaddingContainer / 2,
                            sPaddingContainer,
                            sPaddingContainer / 2,
                          ),
                          width: double.infinity,
                          child: Row(
                            children: <Widget>[
                              (isStatusAll)
                                  ? Icon(
                                      Icons.check_box_outlined,
                                      color: kAccentColor,
                                    )
                                  : Icon(
                                      Icons.check_box_outline_blank,
                                      color: kTextPrimaryColor,
                                    ),
                              SizedBox(
                                width: sPaddingContainer,
                              ),
                              Text(
                                "All",
                                style: yTextNormal,
                              )
                            ],
                          ),
                        ),
                      ),
                      // Status: Done
                      InkWell(
                        onTap: () {
                          List<String> listStatus = state.listStatus;
                          if (isStatusDone) {
                            listStatus.remove("Done");
                          } else {
                            listStatus.add("Done");
                          }
                          return _transactionFilterBloc.add(
                            TransactionFilterEvent.changeTransactionStatus(
                                listStatus),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                            sPaddingContainer,
                            sPaddingContainer / 2,
                            sPaddingContainer,
                            sPaddingContainer / 2,
                          ),
                          width: double.infinity,
                          child: Row(
                            children: <Widget>[
                              (isStatusDone)
                                  ? Icon(
                                      Icons.check_box_outlined,
                                      color: kAccentColor,
                                    )
                                  : Icon(
                                      Icons.check_box_outline_blank,
                                      color: kTextPrimaryColor,
                                    ),
                              SizedBox(
                                width: sPaddingContainer,
                              ),
                              Text(
                                "Done",
                                style: yTextNormal,
                              )
                            ],
                          ),
                        ),
                      ),
                      // Status: Pending
                      InkWell(
                        onTap: () {
                          List<String> listStatus = state.listStatus;
                          if (isStatusPending) {
                            listStatus.remove("Pending");
                          } else {
                            listStatus.add("Pending");
                          }
                          return _transactionFilterBloc.add(
                            TransactionFilterEvent.changeTransactionStatus(
                                listStatus),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                            sPaddingContainer,
                            sPaddingContainer / 2,
                            sPaddingContainer,
                            sPaddingContainer / 2,
                          ),
                          width: double.infinity,
                          child: Row(
                            children: <Widget>[
                              (isStatusPending)
                                  ? Icon(
                                      Icons.check_box_outlined,
                                      color: kAccentColor,
                                    )
                                  : Icon(
                                      Icons.check_box_outline_blank,
                                      color: kTextPrimaryColor,
                                    ),
                              SizedBox(
                                width: sPaddingContainer,
                              ),
                              Text(
                                "Pending",
                                style: yTextNormal,
                              )
                            ],
                          ),
                        ),
                      ),
                      // Status: Cancelled
                      InkWell(
                        onTap: () {
                          List<String> listStatus = state.listStatus;
                          if (isStatusCancelled) {
                            listStatus.remove("Cancelled");
                          } else {
                            listStatus.add("Cancelled");
                          }
                          return _transactionFilterBloc.add(
                            TransactionFilterEvent.changeTransactionStatus(
                                listStatus),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                            sPaddingContainer,
                            sPaddingContainer / 2,
                            sPaddingContainer,
                            sPaddingContainer / 2,
                          ),
                          width: double.infinity,
                          child: Row(
                            children: <Widget>[
                              (isStatusCancelled)
                                  ? Icon(
                                      Icons.check_box_outlined,
                                      color: kAccentColor,
                                    )
                                  : Icon(
                                      Icons.check_box_outline_blank,
                                      color: kTextPrimaryColor,
                                    ),
                              SizedBox(
                                width: sPaddingContainer,
                              ),
                              Text(
                                "Cancelled",
                                style: yTextNormal,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: sPaddingBody,
                  ),
                  // Date Range
                  Text("Transaction Date", style: yTextBold),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(
                      0,
                      sPaddingContainer / 2,
                      0,
                      sPaddingContainer / 2,
                    ),
                    child: ElevatedButton(
                      onPressed: () async {
                        final List<DateTime> picked =
                            await DateRangePicker.showDatePicker(
                                context: context,
                                initialFirstDate: state.dateFrom,
                                initialLastDate: DateTime(
                                  state.dateTo.year,
                                  state.dateTo.month,
                                  state.dateTo.day - 1,
                                ),
                                firstDate: new DateTime(2015),
                                lastDate:
                                    new DateTime(DateTime.now().year + 2));
                        if (picked != null) {
                          DateTime dateFrom = picked[0];
                          DateTime dateTo = DateTime(
                            picked[0].year,
                            picked[0].month,
                            picked[0].day + 1,
                          );
                          if (picked.length > 1) {
                            dateTo = DateTime(
                              picked[1].year,
                              picked[1].month,
                              picked[1].day + 1,
                            );
                          }
                          _transactionFilterBloc.add(
                            TransactionFilterEvent.changeTransactionDate(
                                dateFrom, dateTo),
                          );
                        }
                      },
                      style: yButtonForm,
                      child: Text(
                        "Pick Date Range",
                        style: yTextBoldDark,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                        DateFormat("dd MMM yyy").format(state.dateFrom) +
                            " to " +
                            DateFormat("dd MMM yyy").format(DateTime(
                              state.dateTo.year,
                              state.dateTo.month,
                              state.dateTo.day - 1,
                            )),
                        style: yTextMini),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    ),
  );
}
