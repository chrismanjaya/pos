import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/activity/activity_bloc.dart';
import 'package:pos/application/cashier/payment/payment_bloc.dart';
import 'package:pos/injection.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_ratio.dart';
import 'package:pos/application/auth/auth_bloc.dart';
import 'package:pos/presentation/core/widget_string.dart';
import 'package:auto_route/auto_route.dart';
import 'package:pos/routes/router.gr.dart' as appRouter;

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) =>
          OrientationBuilder(builder: (context, orientation) {
        getIt<WidgetRatio>().init(constraints, orientation);
        return MultiBlocProvider(
          providers: [
            BlocProvider<ActivityBloc>(
              create: (context) => getIt<ActivityBloc>(),
            ),
            BlocProvider<AuthBloc>(
              create: (context) =>
                  getIt<AuthBloc>(), //..add(const AuthEvent.authCheck()),
            ),
            BlocProvider<PaymentBloc>(
              create: (context) => getIt<PaymentBloc>(),
            ),
          ],
          child: App(),
        );
      }),
    );
  }
}

class App extends StatelessWidget {
  const App({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      builder: ExtendedNavigator(router: appRouter.Router()),
      theme: ThemeData(
        fontFamily: "DNSans",
        canvasColor: kSecondColor,
        scaffoldBackgroundColor: kPrimaryColor,
        appBarTheme: AppBarTheme(
          color: kPrimaryColor,
          elevation: 0,
          brightness: Brightness.dark,
        ),
      ),
    );
  }
}
