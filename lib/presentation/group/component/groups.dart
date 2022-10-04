import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/group/group_bloc.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/group/component/group_card.dart';

class Groups extends StatelessWidget {
  const Groups({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupBloc, GroupState>(
      builder: (context, state) {
        if (state.isLoaded) {
          return Body(
            groupState: state,
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
  final GroupState groupState;
  const Body({
    Key key,
    @required this.groupState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
          itemCount: groupState.listGroupModelFiltered.length,
          itemBuilder: (context, index) => GroupCard(
            groupModel: groupState.listGroupModelFiltered[index],
          ),
        ),
      ),
    );
  }
}
