import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/activity/activity_bloc.dart';
import 'package:pos/presentation/activity/component/activity_card.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_style.dart';

class Activities extends StatelessWidget {
  const Activities({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivityBloc, ActivityState>(
      builder: (context, state) {
        if (state.isLoaded) {
          return Body(
            activityState: state,
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
  final ActivityState activityState;
  const Body({
    Key key,
    @required this.activityState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: (activityState.listTransactionFiltered.length > 0)
            ? ListView.builder(
                itemCount: activityState.listTransactionFiltered.length,
                itemBuilder: (context, index) => ActivityCard(
                  transactionHeaderModel:
                      activityState.listTransactionFiltered[index],
                ),
              )
            : Container(
                child: Text(
                  "Data Not Found",
                  style: yTextNormal,
                ),
              ),
      ),
    );
  }
}
