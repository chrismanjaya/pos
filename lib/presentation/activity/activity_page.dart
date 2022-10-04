import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/activity/activity_bloc.dart';
import 'package:pos/application/auth/auth_bloc.dart';
import 'package:pos/injection.dart';
import 'package:pos/presentation/activity/component/list_activity.dart';
import 'package:pos/presentation/activity/component/selected_activity.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:auto_route/auto_route.dart';
import 'package:pos/routes/router.gr.dart';

class ActivityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthBloc _authBloc = context.read<AuthBloc>();

    return BlocProvider<ActivityBloc>(
      create: (context) => getIt<ActivityBloc>()
        ..add(
            ActivityEvent.getAllTransaction(_authBloc.state.userModel.branch)),
      child: WillPopScope(
        // ignore: missing_return
        onWillPop: () {},
        child: Scaffold(
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.all(sPaddingBody),
              child: Row(
                children: [
                  // Selected Activity
                  Expanded(
                    child: SelectedActivity(),
                  ),
                  SizedBox(
                    width: sPaddingBody,
                  ),
                  // List Activity
                  Expanded(
                    child: ListActivity(),
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
