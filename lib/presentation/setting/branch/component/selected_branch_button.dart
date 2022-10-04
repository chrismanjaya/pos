import 'package:flutter/material.dart';
import 'package:pos/application/branch/branch_bloc.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_duration.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_string.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectedBranchButton extends StatelessWidget {
  const SelectedBranchButton({
    Key key,
    @required this.isAuthorizedChange,
  }) : super(key: key);

  final bool isAuthorizedChange;

  @override
  Widget build(BuildContext context) {
    BranchBloc _branchBloc = context.read<BranchBloc>();
    return BlocListener<BranchBloc, BranchState>(
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
            _branchBloc.add(BranchEvent.getAllBranch());
            _branchBloc.add(BranchEvent.clearSelectedBranch());
          }
        }
      },
      child: BlocBuilder<BranchBloc, BranchState>(
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
            Row(
              children: <Widget>[
                // Button Add
                Expanded(
                  child: ElevatedButton(
                    onPressed: isAuthorizedChange
                        ? (_branchBloc.state.selectedBranch.branchName.isEmpty)
                            ? null
                            : () {
                                _branchBloc.add(BranchEvent.addBranch());
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
                // Button Update
                Expanded(
                  child: ElevatedButton(
                    onPressed: isAuthorizedChange
                        ? (_branchBloc.state.selectedBranch.branchName.isEmpty)
                            ? null
                            : () {
                                _branchBloc.add(BranchEvent.updateBranch());
                                String branchName =
                                    _branchBloc.state.selectedBranch.branchName;
                                final snackBar = SnackBar(
                                  duration: dNormal,
                                  backgroundColor: kUIPrimaryColor,
                                  content: Text(
                                    branchName + textNotificationSuccessUpdate,
                                    style: yTextNormalDark,
                                  ),
                                  action: SnackBarAction(
                                    label: textButtonClose,
                                    textColor: kPrimaryColor,
                                    onPressed: () {},
                                  ),
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                                _branchBloc.add(BranchEvent.getAllBranch());
                                _branchBloc
                                    .add(BranchEvent.clearSelectedBranch());
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
                SizedBox(
                  width: sPaddingContainer,
                ),
                // Button Delete
                Expanded(
                  child: ElevatedButton(
                    onPressed: isAuthorizedChange
                        ? (_branchBloc.state.selectedBranch.branchName.isEmpty)
                            ? null
                            : () {
                                _branchBloc.add(BranchEvent.deleteBranch());
                                String branchName =
                                    _branchBloc.state.selectedBranch.branchName;
                                final snackBar = SnackBar(
                                  duration: dNormal,
                                  backgroundColor: kUIDangerColor,
                                  content: Text(
                                    branchName + textNotificationSuccessDelete,
                                    style: yTextNormalDark,
                                  ),
                                  action: SnackBarAction(
                                    label: textButtonClose,
                                    textColor: kPrimaryColor,
                                    onPressed: () {},
                                  ),
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                                _branchBloc.add(BranchEvent.getAllBranch());
                                _branchBloc
                                    .add(BranchEvent.clearSelectedBranch());
                              }
                        : null,
                    style: yButtonFormDelete,
                    child: Text(
                      textButtonDelete,
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
