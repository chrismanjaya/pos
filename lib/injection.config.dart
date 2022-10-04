// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/about/version_bloc.dart' as _i45;
import 'application/action/action_bloc.dart' as _i3;
import 'application/activity/activity_bloc.dart' as _i33;
import 'application/auth/auth_bloc.dart' as _i34;
import 'application/branch/branch_bloc.dart' as _i35;
import 'application/cashier/payment/payment_bloc.dart' as _i39;
import 'application/cashier/product/product_bloc.dart' as _i18;
import 'application/expense/expense_bloc.dart' as _i36;
import 'application/group/group_bloc.dart' as _i37;
import 'application/menu/menu_bloc.dart' as _i38;
import 'application/product/product_bloc.dart' as _i40;
import 'application/report/report_transaction_bloc.dart' as _i41;
import 'application/sign_in/sign_in_bloc.dart' as _i42;
import 'application/transaction/filter/transaction_filter_bloc.dart' as _i23;
import 'application/transaction/transaction_bloc.dart' as _i43;
import 'application/user/user_bloc.dart' as _i44;
import 'domain/services/activity/activity_services.dart' as _i4;
import 'domain/services/activity/activity_services_imp.dart' as _i5;
import 'domain/services/auth/auth_services.dart' as _i6;
import 'domain/services/auth/auth_services_imp.dart' as _i7;
import 'domain/services/branch/branch_services.dart' as _i8;
import 'domain/services/branch/branch_services_imp.dart' as _i9;
import 'domain/services/cashier/cashier_services.dart' as _i10;
import 'domain/services/cashier/cashier_services_imp.dart' as _i11;
import 'domain/services/expense/expense_services.dart' as _i12;
import 'domain/services/expense/expense_services_imp.dart' as _i13;
import 'domain/services/group/group_services.dart' as _i14;
import 'domain/services/group/group_services_imp.dart' as _i15;
import 'domain/services/menu/menu_services.dart' as _i16;
import 'domain/services/menu/menu_services_imp.dart' as _i17;
import 'domain/services/product/product_services.dart' as _i19;
import 'domain/services/product/product_services_imp.dart' as _i20;
import 'domain/services/report/transaction_report_services.dart' as _i24;
import 'domain/services/report/transaction_report_services_imp.dart' as _i25;
import 'domain/services/sign_in/sign_in_services.dart' as _i21;
import 'domain/services/sign_in/sign_in_services_imp.dart' as _i22;
import 'domain/services/transaction/transaction_services.dart' as _i26;
import 'domain/services/transaction/transaction_services_imp.dart' as _i27;
import 'domain/services/user/user_services.dart' as _i28;
import 'domain/services/user/user_services_imp.dart' as _i29;
import 'domain/services/version/version_services.dart' as _i30;
import 'domain/services/version/version_services_imp.dart' as _i31;
import 'presentation/core/widget_ratio.dart'
    as _i32; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.ActionBloc>(() => _i3.ActionBloc());
  gh.lazySingleton<_i4.ActivityServices>(() => _i5.ActivityServicesImp());
  gh.lazySingleton<_i6.AuthServices>(() => _i7.AuthServiceImp());
  gh.lazySingleton<_i8.BranchServices>(() => _i9.BranchServicesImp());
  gh.lazySingleton<_i10.CashierServices>(() => _i11.CashierServiceImp());
  gh.lazySingleton<_i12.ExpenseServices>(() => _i13.ExpenseServiceImp());
  gh.lazySingleton<_i14.GroupServices>(() => _i15.GroupServicesImp());
  gh.lazySingleton<_i16.MenuServices>(() => _i17.MenuServicesImp());
  gh.factory<_i18.ProductBloc>(
      () => _i18.ProductBloc(get<_i10.CashierServices>()));
  gh.lazySingleton<_i19.ProductServices>(() => _i20.ProductServiceImp());
  gh.lazySingleton<_i21.SignInServices>(() => _i22.SignInServicesImp());
  gh.factory<_i23.TransactionFilterBloc>(() => _i23.TransactionFilterBloc());
  gh.lazySingleton<_i24.TransactionReportServices>(
      () => _i25.TransactionReportServicesImp());
  gh.lazySingleton<_i26.TransactionServices>(
      () => _i27.TransactionServicesImp());
  gh.lazySingleton<_i28.UserServices>(() => _i29.UserServicesImp());
  gh.lazySingleton<_i30.VersionServices>(() => _i31.VersionServicesImp());
  gh.factory<_i32.WidgetRatio>(() => _i32.WidgetRatio());
  gh.factory<_i33.ActivityBloc>(
      () => _i33.ActivityBloc(get<_i4.ActivityServices>()));
  gh.factory<_i34.AuthBloc>(() => _i34.AuthBloc(get<_i6.AuthServices>()));
  gh.factory<_i35.BranchBloc>(() => _i35.BranchBloc(get<_i8.BranchServices>()));
  gh.factory<_i36.ExpenseBloc>(
      () => _i36.ExpenseBloc(get<_i12.ExpenseServices>()));
  gh.factory<_i37.GroupBloc>(() => _i37.GroupBloc(get<_i14.GroupServices>()));
  gh.factory<_i38.MenuBloc>(() => _i38.MenuBloc(get<_i16.MenuServices>()));
  gh.factory<_i39.PaymentBloc>(() => _i39.PaymentBloc(
      get<_i10.CashierServices>(), get<_i26.TransactionServices>()));
  gh.factory<_i40.ProductBloc>(
      () => _i40.ProductBloc(get<_i19.ProductServices>()));
  gh.factory<_i41.ReportTransactionBloc>(
      () => _i41.ReportTransactionBloc(get<_i24.TransactionReportServices>()));
  gh.factory<_i42.SignInBloc>(
      () => _i42.SignInBloc(get<_i21.SignInServices>()));
  gh.factory<_i43.TransactionBloc>(
      () => _i43.TransactionBloc(get<_i26.TransactionServices>()));
  gh.factory<_i44.UserBloc>(() => _i44.UserBloc(get<_i28.UserServices>()));
  gh.factory<_i45.VersionBloc>(
      () => _i45.VersionBloc(get<_i30.VersionServices>()));
  return get;
}
