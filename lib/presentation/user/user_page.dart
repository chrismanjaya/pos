import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/user/user_bloc.dart';
import 'package:pos/injection.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/user/component/list_user.dart';
import 'package:pos/presentation/user/component/selected_user.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserBloc>(
      create: (context) => getIt<UserBloc>()..add(UserEvent.getAllUser()),
      child: WillPopScope(
        // ignore: missing_return
        onWillPop: () {},
        child: Scaffold(
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.all(sPaddingBody),
              child: Row(
                children: [
                  // Selected User
                  Expanded(
                    child: SelectedUser(),
                  ),
                  SizedBox(
                    width: sPaddingBody,
                  ),
                  // List User
                  Expanded(
                    child: ListUser(),
                  ),
                ],
              ),
            ),
          ),
          resizeToAvoidBottomInset: true,
        ),
      ),
    );
  }
}
