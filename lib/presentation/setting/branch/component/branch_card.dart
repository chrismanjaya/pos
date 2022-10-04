import 'package:flutter/material.dart';
import 'package:pos/application/branch/branch_bloc.dart';
import 'package:pos/domain/model/branch_model.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BranchCard extends StatelessWidget {
  final BranchModel branchModel;

  const BranchCard({
    Key key,
    this.branchModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BranchBloc _branchBloc = context.read<BranchBloc>();

    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: () {
          return _branchBloc.add(BranchEvent.setSelectedBranch(branchModel));
        },
        child: Container(
          height: sItemCard,
          padding: EdgeInsets.all(
            sPaddingContainer,
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: sLineNormal,
                color: kPrimaryColor,
              ),
            ),
          ),
          child: Row(
            children: [
              // Branch Name
              Expanded(
                flex: 3,
                child: Text(
                  branchModel.branchName,
                  textAlign: TextAlign.left,
                  style: yTextNormal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
