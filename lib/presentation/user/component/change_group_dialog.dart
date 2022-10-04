import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/group/group_bloc.dart';
import 'package:pos/application/user/user_bloc.dart';
import 'package:pos/domain/model/group_model.dart';
import 'package:pos/injection.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';

class ChangeGroupDialog extends StatelessWidget {
  const ChangeGroupDialog({
    Key key,
    @required this.userBloc,
  }) : super(key: key);

  final UserBloc userBloc;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: kPrimaryColor,
      contentPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.zero,
      title: Container(
        padding: EdgeInsets.all(sPaddingContainer),
        color: kAccentColor,
        width: double.infinity,
        child: Text(
          "Please Select Group",
          style: yTextBoldDark,
        ),
      ),
      content: SingleChildScrollView(
        child: BlocProvider(
          create: (context) =>
              getIt<GroupBloc>()..add(GroupEvent.getAllGroup()),
          child: BlocBuilder<GroupBloc, GroupState>(
            builder: (context, state) => (state.isLoaded)
                ? Container(
                    padding: EdgeInsets.all(sPaddingContainer),
                    height: sFormSignIn,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                          state.listGroupModel.map((GroupModel groupModel) {
                        final bool isSelected = (groupModel.id ==
                            userBloc.state.selectedUser.group.id);
                        return InkWell(
                          onTap: () {
                            userBloc.add(
                              UserEvent.changeGroup(groupModel),
                            );
                            Navigator.of(context, rootNavigator: true).pop();
                          },
                          child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(sPaddingContainer),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: sLineNormal,
                                  color: kSecondColor,
                                ),
                              ),
                            ),
                            child: Text(
                              groupModel.groupName,
                              style:
                                  (isSelected) ? yTextBoldAccent : yTextNormal,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  )
                : Container(
                    padding: EdgeInsets.all(sPaddingContainer),
                    height: sFormSignIn,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        LinearProgressIndicator(
                          minHeight: sLineThick,
                          backgroundColor: kSecondColor,
                          valueColor:
                              const AlwaysStoppedAnimation<Color>(kAccentColor),
                        ),
                      ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
