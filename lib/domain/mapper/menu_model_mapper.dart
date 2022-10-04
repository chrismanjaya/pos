import 'package:pos/domain/model/menu_model.dart';
import 'package:pos/infrastructure/model/action.dart';
import 'package:pos/infrastructure/model/menu.dart';

class MenuModelMapper {
  MenuModel toMenuModel(Menu menu, List<Action> listAction) {
    return MenuModel(
      id: menu.id,
      menuCode: menu.menuCode,
      menuName: menu.menuName,
      listAction: listAction,
    );
  }
}
