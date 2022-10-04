import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/branch/branch_bloc.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/setting/branch/component/branch_card.dart';

class Branches extends StatelessWidget {
  const Branches({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BranchBloc, BranchState>(
      builder: (context, state) {
        if (state.isLoaded) {
          return Body(
            branchState: state,
          );
        } else {
          return Container(
            child: LinearProgressIndicator(
              backgroundColor: kSecondColor,
              valueColor: const AlwaysStoppedAnimation<Color>(kAccentColor),
            ),
          );
        }
      },
    );
  }
}

class Body extends StatelessWidget {
  final BranchState branchState;
  const Body({
    Key key,
    @required this.branchState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
          itemCount: branchState.listBranchFiltered.length,
          itemBuilder: (context, index) => BranchCard(
            branchModel: branchState.listBranchFiltered[index],
          ),
        ),
      ),
    );
  }
}
