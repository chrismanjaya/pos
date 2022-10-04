import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/group/group_bloc.dart';
import 'package:pos/application/menu/menu_bloc.dart';
import 'package:pos/domain/model/menu_model.dart';
import 'package:pos/domain/model/privilege_model.dart';
import 'package:pos/injection.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';

class ChangePrivilegeDialog extends StatelessWidget {
  final GroupBloc groupBloc;
  final List<PrivilegeModel> listSelectedPrivilegeModel;

  const ChangePrivilegeDialog({
    Key key,
    @required this.groupBloc,
    @required this.listSelectedPrivilegeModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<PrivilegeModel> listPrivilegeModel = [];
    for (PrivilegeModel privilegeModel in listSelectedPrivilegeModel) {
      listPrivilegeModel.add(PrivilegeModel(
        id: "",
        actionId: privilegeModel.actionId,
        menuName: privilegeModel.menuName,
        menuCode: privilegeModel.menuCode,
        action: privilegeModel.action,
      ));
    }

    return AlertDialog(
      backgroundColor: kPrimaryColor,
      contentPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.zero,
      title: Container(
        padding: EdgeInsets.all(sPaddingContainer),
        color: kAccentColor,
        width: double.infinity,
        child: Text(
          "Please Select Privilege",
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
            groupBloc.add(GroupEvent.changeListPrivilege(listPrivilegeModel));
            return Navigator.of(context, rootNavigator: true).pop();
          },
          child: Text(
            "Confirm",
            style: yTextBoldAccent,
          ),
        ),
      ],
      content: SingleChildScrollView(
        child: BlocProvider(
          create: (context) => getIt<MenuBloc>()..add(MenuEvent.getAllMenu()),
          child: BlocBuilder<MenuBloc, MenuState>(builder: (context, state) {
            if (state.isLoaded) {
              return Container(
                padding: EdgeInsets.all(sPaddingContainer),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // List Menu
                  children: state.listMenu.map((MenuModel menuModel) {
                    return Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(sPaddingContainer),
                            child: Text(
                              menuModel.menuName,
                              style: yTextNormal,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // List Action
                            children: menuModel.listAction.map((action) {
                              PrivilegeModel privilegeModel = PrivilegeModel(
                                id: "",
                                actionId: action.id,
                                menuName: menuModel.menuName,
                                menuCode: menuModel.menuCode,
                                action: action.action,
                              );
                              bool isSelected =
                                  listPrivilegeModel.contains(privilegeModel);
                              return InkWell(
                                onTap: () {
                                  if (isSelected) {
                                    listPrivilegeModel.remove(privilegeModel);
                                  } else {
                                    listPrivilegeModel.add(privilegeModel);
                                  }

                                  List<MenuModel> listMenuSelectedMenu =
                                      state.listMenuSelectedMenu;
                                  listMenuSelectedMenu.add(menuModel);
                                  return context.read<MenuBloc>().add(
                                      MenuEvent.setSelectedMenu(
                                          listMenuSelectedMenu));
                                },
                                child: Container(
                                  padding: EdgeInsets.all(sPaddingContainer),
                                  width: double.infinity,
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
                                            : kThirdColor,
                                      ),
                                      SizedBox(
                                        width: sPaddingContainer,
                                      ),
                                      Text(action.action,
                                          style: (isSelected)
                                              ? yTextBoldAccent
                                              : yTextNormal),
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              );
            } else {
              return Container(
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
              );
            }
          }),
        ),
      ),
    );
  }
}
