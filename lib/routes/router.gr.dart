// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../domain/model/expense_model.dart';
import '../domain/model/transaction_filter_model.dart';
import '../domain/model/transaction_report_model.dart';
import '../presentation/activity/activity_page.dart';
import '../presentation/cashier/cashier_page.dart';
import '../presentation/expense/expense_page.dart';
import '../presentation/group/group_page.dart';
import '../presentation/home/home_page.dart';
import '../presentation/payment/payment_page.dart';
import '../presentation/product/product_page.dart';
import '../presentation/receipt/receipt_page.dart';
import '../presentation/report/report_expense/report_expense_page.dart';
import '../presentation/report/report_page.dart';
import '../presentation/report/report_transaction/report_transaction_page.dart';
import '../presentation/setting/about/about_page.dart';
import '../presentation/setting/branch/branch_page.dart';
import '../presentation/setting/setting_page.dart';
import '../presentation/sign_in/sign_in_page.dart';
import '../presentation/splash/splash_page.dart';
import '../presentation/user/user_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String homePage = '/home-page';
  static const String cashierPage = '/cashier-page';
  static const String paymentPage = '/payment-page';
  static const String receiptPage = '/receipt-page';
  static const String activityPage = '/activity-page';
  static const String productPage = '/product-page';
  static const String expensePage = '/expense-page';
  static const String reportPage = '/report-page';
  static const String reportTransactionPage = '/report-transaction-page';
  static const String reportExpensePage = '/report-expense-page';
  static const String userPage = '/user-page';
  static const String groupPage = '/group-page';
  static const String settingPage = '/setting-page';
  static const String branchPage = '/branch-page';
  static const String aboutPage = '/about-page';
  static const all = <String>{
    splashPage,
    signInPage,
    homePage,
    cashierPage,
    paymentPage,
    receiptPage,
    activityPage,
    productPage,
    expensePage,
    reportPage,
    reportTransactionPage,
    reportExpensePage,
    userPage,
    groupPage,
    settingPage,
    branchPage,
    aboutPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.cashierPage, page: CashierPage),
    RouteDef(Routes.paymentPage, page: PaymentPage),
    RouteDef(Routes.receiptPage, page: ReceiptPage),
    RouteDef(Routes.activityPage, page: ActivityPage),
    RouteDef(Routes.productPage, page: ProductPage),
    RouteDef(Routes.expensePage, page: ExpensePage),
    RouteDef(Routes.reportPage, page: ReportPage),
    RouteDef(Routes.reportTransactionPage, page: ReportTransactionPage),
    RouteDef(Routes.reportExpensePage, page: ReportExpensePage),
    RouteDef(Routes.userPage, page: UserPage),
    RouteDef(Routes.groupPage, page: GroupPage),
    RouteDef(Routes.settingPage, page: SettingPage),
    RouteDef(Routes.branchPage, page: BranchPage),
    RouteDef(Routes.aboutPage, page: AboutPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    HomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    CashierPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CashierPage(),
        settings: data,
      );
    },
    PaymentPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => PaymentPage(),
        settings: data,
      );
    },
    ReceiptPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ReceiptPage(),
        settings: data,
      );
    },
    ActivityPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ActivityPage(),
        settings: data,
      );
    },
    ProductPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProductPage(),
        settings: data,
      );
    },
    ExpensePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ExpensePage(),
        settings: data,
      );
    },
    ReportPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ReportPage(),
        settings: data,
      );
    },
    ReportTransactionPage: (data) {
      final args = data.getArgs<ReportTransactionPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => ReportTransactionPage(
          key: args.key,
          listTransactionReportModel: args.listTransactionReportModel,
          filter: args.filter,
        ),
        settings: data,
      );
    },
    ReportExpensePage: (data) {
      final args = data.getArgs<ReportExpensePageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => ReportExpensePage(
          key: args.key,
          listExpenseModel: args.listExpenseModel,
          income: args.income,
          filter: args.filter,
        ),
        settings: data,
      );
    },
    UserPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => UserPage(),
        settings: data,
      );
    },
    GroupPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => GroupPage(),
        settings: data,
      );
    },
    SettingPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SettingPage(),
        settings: data,
      );
    },
    BranchPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => BranchPage(),
        settings: data,
      );
    },
    AboutPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AboutPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushSignInPage() => push<dynamic>(Routes.signInPage);

  Future<dynamic> pushHomePage() => push<dynamic>(Routes.homePage);

  Future<dynamic> pushCashierPage() => push<dynamic>(Routes.cashierPage);

  Future<dynamic> pushPaymentPage() => push<dynamic>(Routes.paymentPage);

  Future<dynamic> pushReceiptPage() => push<dynamic>(Routes.receiptPage);

  Future<dynamic> pushActivityPage() => push<dynamic>(Routes.activityPage);

  Future<dynamic> pushProductPage() => push<dynamic>(Routes.productPage);

  Future<dynamic> pushExpensePage() => push<dynamic>(Routes.expensePage);

  Future<dynamic> pushReportPage() => push<dynamic>(Routes.reportPage);

  Future<dynamic> pushReportTransactionPage({
    Key key,
    @required List<TransactionReportModel> listTransactionReportModel,
    @required TransactionFilterModel filter,
  }) =>
      push<dynamic>(
        Routes.reportTransactionPage,
        arguments: ReportTransactionPageArguments(
            key: key,
            listTransactionReportModel: listTransactionReportModel,
            filter: filter),
      );

  Future<dynamic> pushReportExpensePage({
    Key key,
    @required List<ExpenseModel> listExpenseModel,
    @required double income,
    @required TransactionFilterModel filter,
  }) =>
      push<dynamic>(
        Routes.reportExpensePage,
        arguments: ReportExpensePageArguments(
            key: key,
            listExpenseModel: listExpenseModel,
            income: income,
            filter: filter),
      );

  Future<dynamic> pushUserPage() => push<dynamic>(Routes.userPage);

  Future<dynamic> pushGroupPage() => push<dynamic>(Routes.groupPage);

  Future<dynamic> pushSettingPage() => push<dynamic>(Routes.settingPage);

  Future<dynamic> pushBranchPage() => push<dynamic>(Routes.branchPage);

  Future<dynamic> pushAboutPage() => push<dynamic>(Routes.aboutPage);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ReportTransactionPage arguments holder class
class ReportTransactionPageArguments {
  final Key key;
  final List<TransactionReportModel> listTransactionReportModel;
  final TransactionFilterModel filter;
  ReportTransactionPageArguments(
      {this.key,
      @required this.listTransactionReportModel,
      @required this.filter});
}

/// ReportExpensePage arguments holder class
class ReportExpensePageArguments {
  final Key key;
  final List<ExpenseModel> listExpenseModel;
  final double income;
  final TransactionFilterModel filter;
  ReportExpensePageArguments(
      {this.key,
      @required this.listExpenseModel,
      @required this.income,
      @required this.filter});
}
