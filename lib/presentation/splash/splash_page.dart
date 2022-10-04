import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:pos/application/auth/auth_bloc.dart';
import 'package:pos/injection.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_path.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>()..add(const AuthEvent.authCheck()),
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state != null && !state.isLoading) {
            if (state.isAuthenticate) {
              // Go to Home Page
              print("Go to Home Page");
              return ExtendedNavigator.of(context).replace(Routes.homePage);
            } else {
              // Go to Signin Page
              print("Go to Signin Page");
              return ExtendedNavigator.of(context).replace(Routes.signInPage);
            }
          }
          print("Is Loading");
        },
        child: LoadingScreen(),
      ),
    );
  }
}

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kPrimaryColor,
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: sIconLauncher,
            child: Image(
              image: AssetImage(pathIconLauncher),
            ),
          ),
          SizedBox(
            height: sPaddingExtraLarge,
          ),
          Container(
            width: sIconLauncher * 3,
            child: LinearProgressIndicator(
              backgroundColor: kSecondColor,
              valueColor: const AlwaysStoppedAnimation<Color>(kAccentColor),
            ),
          ),
        ],
      )),
    );
  }
}
