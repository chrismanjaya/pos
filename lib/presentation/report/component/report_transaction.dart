import 'package:flutter/material.dart';
import 'package:pos/application/report/report_transaction_bloc.dart';
import 'package:pos/presentation/core/formatter.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:pos/presentation/report/component/chart_data.dart';
import 'package:pos/presentation/report/component/chart_transaction.dart';
import 'package:pos/presentation/report/report_transaction/report_transaction_page.dart';

class ReportTransaction extends StatelessWidget {
  const ReportTransaction({
    Key key,
    @required this.state,
  }) : super(key: key);

  final ReportTransactionState state;

  @override
  Widget build(BuildContext context) {
    final int done = state.transactionReportStatusModel.done;
    final int pending = state.transactionReportStatusModel.pending;
    final int cancelled = state.transactionReportStatusModel.cancelled;

    List<ChartData> _listChartData = [];
    _listChartData.add(ChartData("Done", done, "Done: " + done.toString()));
    _listChartData
        .add(ChartData("Pending", pending, "Pending: " + pending.toString()));
    _listChartData.add(ChartData(
        "Cancelled", cancelled, "Cancelled: " + cancelled.toString()));

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Report Transaction: Header
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Title
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Chart Transaction",
                        style: yTextNormal,
                      ),
                      Text(
                        state.transactionFilterModel.listBranchModel.length
                                .toString() +
                            " Selected Branches",
                        style: yTextMiniAccent,
                      ),
                      Text(
                        Formatter().dateTimeToDateString(
                                state.transactionFilterModel.dateFrom) +
                            " to " +
                            Formatter().dateTimeToDateString(
                                state.transactionFilterModel.dateTo),
                        style: yTextMiniAccent,
                      ),
                    ],
                  ),
                ),
              ),
              // Button
              Container(
                margin: EdgeInsets.symmetric(horizontal: sPaddingBody),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ReportTransactionPage(
                          listTransactionReportModel:
                              state.listTransactionReportModel,
                          filter: state.transactionFilterModel,
                        ),
                      ),
                    );
                  },
                  style: yButtonFormDark,
                  child: Text(
                    "View Detail",
                    style: yTextNormalLink,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: sPaddingBody,
          ),
          // Report Transaction: Chart
          Center(
            child: ChartTransaction(
              chartData: _listChartData,
            ),
          ),
        ],
      ),
    );
  }
}
