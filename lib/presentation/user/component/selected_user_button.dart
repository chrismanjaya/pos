import 'package:flutter/material.dart';
import 'package:pos/application/user/user_bloc.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_duration.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_string.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectedUserButton extends StatelessWidget {
  const SelectedUserButton({
    Key key,
    @required this.isAuthorizedChange,
  }) : super(key: key);

  final bool isAuthorizedChange;

  @override
  Widget build(BuildContext context) {
    UserBloc _userBloc = context.read<UserBloc>();
    return BlocListener<UserBloc, UserState>(
      listener: (context, state) {
        if (state.message.length > 0) {
          final snackBar = SnackBar(
            duration: dNormal,
            backgroundColor: kUIPrimaryColor,
            content: Text(
              state.message,
              style: yTextNormal,
            ),
            action: SnackBarAction(
              label: textButtonClose,
              textColor: kTextPrimaryColor,
              onPressed: () {},
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          if (!state.isError) {
            _userBloc.add(UserEvent.getAllUser());
            _userBloc.add(UserEvent.clearSelectedUser());
          }
        }
      },
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) => Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: sPaddingBody),
              child: (state.isLoading)
                  ? LinearProgressIndicator(
                      backgroundColor: kSecondColor,
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(kAccentColor),
                    )
                  : Container(),
            ),
            // Button Update
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (!state.isLoading &&
                        isAuthorizedChange &&
                        state.selectedUser.uid != "")
                    ? () {
                        _userBloc.add(UserEvent.updateUser());
                      }
                    : null,
                style: yButtonFormUpdate,
                child: Text(
                  textButtonUpdate,
                  style: yTextBoldDark,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                // Button Add
                Expanded(
                  child: ElevatedButton(
                    onPressed: (!state.isLoading && isAuthorizedChange)
                        ? () {
                            _userBloc.add(UserEvent.addUser());
                          }
                        : null,
                    style: yButtonFormAdd,
                    child: Text(
                      textButtonAdd,
                      style: yTextBoldDark,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  width: sPaddingContainer,
                ),
                // Button Reset Password
                Expanded(
                  child: ElevatedButton(
                    onPressed: (!state.isLoading &&
                            isAuthorizedChange &&
                            state.selectedUser.uid != "")
                        ? () {
                            _userBloc.add(UserEvent.resetUserPassword());
                          }
                        : null,
                    style: yButtonFormClearAll,
                    child: Text(
                      textButtonResetPassword,
                      style: yTextBoldDark,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
