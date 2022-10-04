import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/group/group_bloc.dart';
import 'package:pos/injection.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/group/component/list_group.dart';
import 'package:pos/presentation/group/component/selected_group.dart';

class GroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<GroupBloc>(
      create: (context) => getIt<GroupBloc>()..add(GroupEvent.getAllGroup()),
      child: WillPopScope(
        // ignore: missing_return
        onWillPop: () {},
        child: Scaffold(
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.all(sPaddingBody),
              child: Row(
                children: [
                  // Selected Group
                  Expanded(
                    child: SelectedGroup(),
                  ),
                  SizedBox(
                    width: sPaddingBody,
                  ),
                  // List Group
                  Expanded(
                    child: ListGroup(),
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
