import 'package:flutter/material.dart';
import 'package:pos/domain/model/privilege_model.dart';
import 'package:pos/presentation/core/widget_string.dart';
import 'package:pos/routes/router.gr.dart';

class MenuItem {
  String menuName;
  IconData menuIcon;
  String routes;

  MenuItem(PrivilegeModel privilegeModel) {
    switch (privilegeModel.menuCode) {
      case 1:
        this.menuName = textMenuCashier;
        this.menuIcon = Icons.shopping_basket;
        this.routes = Routes.cashierPage;
        break;
      case 2:
        this.menuName = textMenuActivity;
        this.menuIcon = Icons.pending_actions;
        this.routes = Routes.activityPage;
        break;
      case 3:
        this.menuName = textMenuExpense;
        this.menuIcon = Icons.attach_money;
        this.routes = Routes.expensePage;
        break;
      case 4:
        this.menuName = textMenuReport;
        this.menuIcon = Icons.equalizer;
        this.routes = Routes.reportPage;
        break;
      case 5:
        this.menuName = textMenuProduct;
        this.menuIcon = Icons.list_alt;
        this.routes = Routes.productPage;
        break;
      case 6:
        this.menuName = textMenuUser;
        this.menuIcon = Icons.person;
        this.routes = Routes.userPage;
        break;
      case 7:
        this.menuName = textMenuGroup;
        this.menuIcon = Icons.group;
        this.routes = Routes.groupPage;
        break;
      case 8:
        this.menuName = textMenuSetting;
        this.menuIcon = Icons.settings;
        this.routes = Routes.settingPage;
        break;
      default:
        this.menuName = "";
        this.menuIcon = Icons.error;
        this.routes = "";
        break;
    }
  }
}
