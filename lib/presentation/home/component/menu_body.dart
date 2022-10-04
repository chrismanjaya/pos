import 'package:flutter/material.dart';
import 'package:pos/application/auth/auth_bloc.dart';
import 'package:pos/domain/model/privilege_model.dart';
import 'package:pos/presentation/core/utils.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/home/component/menu_card.dart';
import 'package:pos/presentation/home/component/menu_item.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MenuBody extends StatelessWidget {
  const MenuBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthBloc _authBloc = context.read<AuthBloc>();
    List<PrivilegeModel> listPrivilegeModel =
        _authBloc.state.userModel.group.listPrivilege;

    List<MenuItem> listMenuItem = [];
    if (listPrivilegeModel != null) {
      for (PrivilegeModel privilegeModel in listPrivilegeModel) {
        if (Utils().isEqualsIgnoreCase(privilegeModel.action, "View")) {
          listMenuItem.add(MenuItem(privilegeModel));
        }
      }
    }

    return Expanded(
      child: (listMenuItem.length <= 0)
          ? Container()
          : Container(
              width: ((listMenuItem.length >= 4) ? 4 : listMenuItem.length)
                      .toDouble() *
                  sMenuCard,
              child: Center(
                child: GridView.builder(
                  itemCount: listMenuItem.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        (listMenuItem.length >= 4) ? 4 : listMenuItem.length,
                    childAspectRatio: 1,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                  ),
                  itemBuilder: (context, index) => MenuCard(
                    menuName: listMenuItem[index].menuName,
                    menuIcon: listMenuItem[index].menuIcon,
                    onTap: () => ExtendedNavigator.of(context)
                        .replace(listMenuItem[index].routes),
                  ),
                ),
              ),
            ),
    );
  }
}
