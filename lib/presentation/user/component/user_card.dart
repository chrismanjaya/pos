import 'package:flutter/material.dart';
import 'package:pos/application/user/user_bloc.dart';
import 'package:pos/domain/model/user_model.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserCard extends StatelessWidget {
  final UserModel userModel;

  const UserCard({
    Key key,
    this.userModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserBloc _userBloc = context.read<UserBloc>();

    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: () {
          return _userBloc.add(UserEvent.setSelectedUser(userModel));
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
              // Username
              Expanded(
                flex: 3,
                child: Text(
                  userModel.username,
                  textAlign: TextAlign.left,
                  style: yTextNormal,
                ),
              ),
              // Group Name
              Expanded(
                flex: 2,
                child: Text(
                  userModel.group.groupName,
                  textAlign: TextAlign.right,
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
