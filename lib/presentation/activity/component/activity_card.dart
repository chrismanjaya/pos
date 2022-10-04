import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pos/application/activity/activity_bloc.dart';
import 'package:pos/domain/model/transaction_header_model.dart';
import 'package:pos/presentation/core/formatter.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';

class ActivityCard extends StatelessWidget {
  final TransactionHeaderModel transactionHeaderModel;

  const ActivityCard({
    Key key,
    this.transactionHeaderModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ActivityBloc _activityBloc = context.read<ActivityBloc>();
    Color statusColor = kSecondColor;
    switch (transactionHeaderModel.status) {
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
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: () {
          _activityBloc.add(
            ActivityEvent.getTransaction(transactionHeaderModel.id),
          );
        },
        child: Container(
          padding: EdgeInsets.all(
            sPaddingContainer,
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: sLineNormal,
                color: kPrimaryColor,
              ),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Date Time
                    Text(
                      DateFormat("yyyy-MM-dd kk:mm:ss")
                          .format(transactionHeaderModel.transactionDate),
                      textAlign: TextAlign.left,
                      style: yTextMini,
                    ),
                    // Transaction Id
                    Text(
                      transactionHeaderModel.id.toUpperCase(),
                      textAlign: TextAlign.left,
                      style: yTextNormalAccent,
                    ),

                    // Total Transaction
                    Text(
                      Formatter().decimalGrouping(transactionHeaderModel.total),
                      textAlign: TextAlign.right,
                      style: yTextBold,
                    ),
                  ],
                ),
              ),

              SizedBox(
                width: sPaddingBody,
              ),
              // Status
              Container(
                width: sButtonStatus,
                height: sButtonStatus * 0.30,
                decoration: BoxDecoration(
                  color: statusColor,
                  borderRadius: BorderRadius.all(sRadius),
                ),
                child: Center(
                  child: Text(
                    transactionHeaderModel.status,
                    style: yTextBold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
