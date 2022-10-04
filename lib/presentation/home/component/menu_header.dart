import 'package:flutter/material.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_path.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:pos/presentation/home/component/user_information.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/auth/auth_bloc.dart';
import 'package:pos/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class MenuHeader extends StatelessWidget {
  const MenuHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          // Logo
          Container(
            width: sButtonForm,
            margin: EdgeInsets.only(
              bottom: sPaddingContainer,
            ),
            child: Image(
              image: AssetImage(pathIconCompany),
            ),
          ),
          SizedBox(
            width: sPaddingBody,
          ),
          // User Information
          UserInformation(),
          Expanded(child: Container()),
          // Reload
          Container(
            height: sButtonForm,
            width: sButtonForm,
            child: ElevatedButton(
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.getUserInfo());
              },
              style: yButtonCircle,
              child: Icon(
                Icons.refresh,
                size: sIcon,
                color: kTextSecondColor,
              ),
            ),
          ),
          // Logout
          Container(
            height: sButtonForm,
            width: sButtonForm,
            child: ElevatedButton(
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.signOut());
                return ExtendedNavigator.of(context).replace(Routes.signInPage);
              },
              style: yButtonCircle,
              child: Icon(
                Icons.exit_to_app,
                size: sIcon,
                color: kAccentColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
