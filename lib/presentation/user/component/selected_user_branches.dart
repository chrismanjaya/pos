import 'package:flutter/material.dart';
import 'package:pos/application/branch/branch_bloc.dart';
import 'package:pos/application/user/user_bloc.dart';
import 'package:pos/injection.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/user/component/change_branch_dialog.dart';

class SelectedUserBranches extends StatelessWidget {
  const SelectedUserBranches({
    Key key,
    @required this.title,
    @required this.isAuthorizedChange,
  }) : super(key: key);

  final String title;
  final bool isAuthorizedChange;

  @override
  Widget build(BuildContext context) {
    UserBloc _userBloc = context.read<UserBloc>();
    int branches = _userBloc.state.selectedUser.listBranch.length;
    String value = (branches > 0)
        ? branches.toString() + " branches selected"
        : "Please select branch";
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: sPaddingContainer),
            child: Text(
              title,
              style: yTextBold,
            ),
          ),
          Container(
            height: sButtonForm,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return BlocProvider(
                        create: (context) => getIt<BranchBloc>()
                          ..add(BranchEvent.getAllBranch()),
                        child: BlocBuilder<BranchBloc, BranchState>(
                          builder: (context, state) {
                            if (state.isLoaded) {
                              return ChangeBranchDialog(
                                userBloc: _userBloc,
                                listBranch: state.listBranch,
                                isLoading: false,
                                listSelectedBranch:
                                    _userBloc.state.selectedUser.listBranch,
                              );
                            } else {
                              context.read<BranchBloc>().add(
                                  BranchEvent.setListSelectedBranch(
                                      _userBloc.state.selectedUser.listBranch));
                              return ChangeBranchDialog(
                                userBloc: _userBloc,
                                listBranch: [],
                                isLoading: true,
                                listSelectedBranch:
                                    _userBloc.state.selectedUser.listBranch,
                              );
                            }
                          },
                        ),
                      );
                    });
              },
              style: yButtonFormGrey,
              child: Text(
                value,
                style: yTextNormalAccent,
              ),
            ),
          ),
          SizedBox(
            height: sPaddingBody,
          )
        ],
      ),
    );
  }
}
