import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/auth/auth_bloc.dart';
import 'package:pos/application/report/report_transaction_bloc.dart';
import 'package:pos/domain/model/transaction_filter_model.dart';
import 'package:pos/injection.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:pos/presentation/report/component/report_expense.dart';
import 'package:pos/presentation/report/component/report_filter_dialog.dart';
import 'package:pos/presentation/report/component/report_transaction.dart';
import 'package:pos/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class ReportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthBloc _authBloc = context.read<AuthBloc>();

    DateTime now = DateTime.now();
    TransactionFilterModel _transactionFilterModel = TransactionFilterModel(
      listBranchModel: _authBloc.state.userModel.listBranch,
      listStatus: ["Done", "Pending", "Cancelled"],
      dateFrom: DateTime(now.year, now.month, 1),
      dateTo: DateTime(now.year, now.month + 1, 1),
    );
    return BlocProvider<ReportTransactionBloc>(
      create: (context) => getIt<ReportTransactionBloc>()
        ..add(
          ReportTransactionEvent.getReport(
            _transactionFilterModel,
          ),
        ),
      child: BlocBuilder<ReportTransactionBloc, ReportTransactionState>(
        builder: (context, state) {
          ReportTransactionBloc _reportTransactionBloc =
              context.read<ReportTransactionBloc>();
          return WillPopScope(
            // ignore: missing_return
            onWillPop: () {},
            child: Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                centerTitle: true,
                title: Text(
                  "Reports",
                  style: yTextBold,
                ),
                actions: [
                  Container(
                    width: sButtonIcon,
                    margin: EdgeInsets.symmetric(horizontal: sPaddingBody),
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => reportFilterDialog(
                            context,
                            _reportTransactionBloc,
                            List.unmodifiable(
                                _authBloc.state.userModel.listBranch),
                          ),
                        );
                      },
                      style: yButtonCircleIcon,
                      child: Icon(
                        Icons.filter_alt_outlined,
                        color: kAccentColor,
                      ),
                    ),
                  ),
                ],
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.startFloat,
              floatingActionButton: FloatingActionButton(
                mini: true,
                onPressed: () {
                  return ExtendedNavigator.of(context).replace(Routes.homePage);
                },
                backgroundColor: kAccentColor,
                child: Icon(
                  Icons.arrow_back,
                  color: kPrimaryColor,
                  size: sIcon,
                ),
              ),
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.all(sPaddingBody),
                    width: double.infinity,
                    child: (state.isLoading)
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              // Report Transaction
                              ReportTransaction(
                                state: state,
                              ),
                              // Report expense
                              ReportExpense(
                                state: state,
                              ),
                            ],
                          ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
