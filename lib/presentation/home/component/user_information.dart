import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_string.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:pos/application/auth/auth_bloc.dart';
import 'package:pos/presentation/home/component/choose_branch.dart';

class UserInformation extends StatelessWidget {
  const UserInformation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Username
          Container(
            child: Row(
              children: <Widget>[
                Text(
                  textWelcomeUser,
                  style: yTextNormal,
                ),
                Text(
                  context.read<AuthBloc>().state.userModel.username,
                  style: yTextBold,
                ),
                SizedBox(width: sPaddingContainer),
                Container(
                  height: sButtonStatus * 0.20,
                  padding: EdgeInsets.symmetric(horizontal: sPaddingSmall),
                  decoration: BoxDecoration(
                    color: kAccentColor,
                    borderRadius: BorderRadius.all(sRadius),
                  ),
                  child: Center(
                    child: Text(
                      context.read<AuthBloc>().state.userModel.group.groupName,
                      style: yTextMiniBoldDark,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Branch
          ChooseBranch(),
        ],
      ),
    );
  }
}
