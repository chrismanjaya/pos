import 'package:flutter/material.dart';
import 'package:pos/domain/model/branch_model.dart';
import 'package:pos/application/auth/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/core/widget_style.dart';

class ChooseBranch extends StatelessWidget {
  const ChooseBranch({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton<BranchModel>(
        value: context.read<AuthBloc>().state.userModel.branch,
        isDense: true,
        elevation: 0,
        underline: SizedBox(),
        onChanged: (BranchModel branchModel) {
          context.read<AuthBloc>().add(AuthEvent.branchChanged(branchModel));
        },
        items: context
            .read<AuthBloc>()
            .state
            .userModel
            .listBranch
            .map(
              (BranchModel branchModel) => DropdownMenuItem<BranchModel>(
                value: branchModel,
                child: Text(
                  branchModel.branchName,
                  style: yTextDropdown,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
