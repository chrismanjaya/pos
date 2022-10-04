import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/branch/branch_bloc.dart';
import 'package:pos/injection.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/setting/branch/component/list_branch.dart';
import 'package:pos/presentation/setting/branch/component/selected_branch.dart';

class BranchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<BranchBloc>(
      create: (context) => getIt<BranchBloc>()..add(BranchEvent.getAllBranch()),
      child: Scaffold(
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.all(sPaddingBody),
            child: Row(
              children: [
                // Selected Branch
                Expanded(
                  child: SelectedBranch(),
                ),
                SizedBox(
                  width: sPaddingBody,
                ),
                // List Branch
                Expanded(
                  child: ListBranch(),
                ),
              ],
            ),
          ),
        ),
        resizeToAvoidBottomInset: true,
      ),
    );
  }
}
