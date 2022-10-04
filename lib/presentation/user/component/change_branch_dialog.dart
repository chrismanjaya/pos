import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/branch/branch_bloc.dart';
import 'package:pos/application/user/user_bloc.dart';
import 'package:pos/domain/model/branch_model.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';

class ChangeBranchDialog extends StatelessWidget {
  const ChangeBranchDialog({
    Key key,
    @required this.userBloc,
    @required this.listBranch,
    @required this.listSelectedBranch,
    @required this.isLoading,
  }) : super(key: key);

  final UserBloc userBloc;
  final List<BranchModel> listBranch;
  final List<BranchModel> listSelectedBranch;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    List<BranchModel> _listSelectedBranchModel = [];
    for (BranchModel branchModel
        in context.read<BranchBloc>().state.listSelectedBranch) {
      _listSelectedBranchModel.add(branchModel);
    }
    print("_listSelectedBranchModel: " +
        _listSelectedBranchModel.length.toString());
    return AlertDialog(
      backgroundColor: kPrimaryColor,
      contentPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.zero,
      title: Container(
        padding: EdgeInsets.all(sPaddingContainer),
        color: kAccentColor,
        width: double.infinity,
        child: Text(
          "Please Select Branch",
          style: yTextBoldDark,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            return Navigator.of(context, rootNavigator: true).pop();
          },
          child: Text(
            "Cancel",
            style: yTextBold,
          ),
        ),
        TextButton(
          onPressed: () {
            userBloc.add(UserEvent.changeListBranch(_listSelectedBranchModel));
            return Navigator.of(context, rootNavigator: true).pop();
          },
          child: Text(
            "Confirm",
            style: yTextBoldAccent,
          ),
        ),
      ],
      content: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(sPaddingContainer),
          height: sFormSignIn,
          child: (isLoading)
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    LinearProgressIndicator(
                      minHeight: sLineThick,
                      backgroundColor: kSecondColor,
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(kAccentColor),
                    ),
                  ],
                )
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: listBranch.map(
                    (BranchModel branchModel) {
                      bool isSelected = (context
                          .read<BranchBloc>()
                          .state
                          .listSelectedBranch
                          .contains(branchModel));
                      return InkWell(
                        onTap: () {
                          if (isSelected) {
                            // Remove Branch
                            _listSelectedBranchModel.remove(branchModel);
                          } else {
                            // Add Branch
                            _listSelectedBranchModel.add(branchModel);
                          }
                          isSelected = !isSelected;
                          context.read<BranchBloc>().add(
                              BranchEvent.setListSelectedBranch(
                                  _listSelectedBranchModel));
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
                          child: Row(
                            children: <Widget>[
                              Icon(
                                (isSelected)
                                    ? Icons.check_box
                                    : Icons.check_box_outline_blank,
                                size: sIconMini,
                                color: (isSelected)
                                    ? kAccentColor
                                    : kTextPrimaryColor,
                              ),
                              SizedBox(
                                width: sPaddingContainer,
                              ),
                              Text(
                                branchModel.branchName,
                                style: (isSelected)
                                    ? yTextBoldAccent
                                    : yTextNormal,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ).toList(),
                ),
        ),
      ),
    );
  }
}
