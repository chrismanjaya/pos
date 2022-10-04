import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/user/user_bloc.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/user/component/user_card.dart';

class Users extends StatelessWidget {
  const Users({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        if (state.isLoaded) {
          return Body(
            userState: state,
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
  final UserState userState;
  const Body({
    Key key,
    @required this.userState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
          itemCount: userState.listUserModelFiltered.length,
          itemBuilder: (context, index) => UserCard(
            userModel: userState.listUserModelFiltered[index],
          ),
        ),
      ),
    );
  }
}
