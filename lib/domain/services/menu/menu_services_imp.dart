import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pos/domain/mapper/menu_model_mapper.dart';
import 'package:pos/domain/model/menu_model.dart';
import 'package:pos/domain/services/menu/menu_services.dart';
import 'package:pos/infrastructure/model/action.dart';
import 'package:pos/infrastructure/model/menu.dart';
import 'package:pos/infrastructure/repository/action_repo.dart';
import 'package:pos/infrastructure/repository/menu_repo.dart';

@LazySingleton(as: MenuServices)
class MenuServicesImp implements MenuServices {
  @override
  Future<Either<String, List<MenuModel>>> getAllMenu() async {
    List<MenuModel> listMenuModel = [];
    // Get All Menu
    final getAllMenu = await MenuRepo().getAllMenu();
    if (getAllMenu.isLeft()) {
      return left(getAllMenu.fold((failure) => failure, (r) => null));
    }
    List<Menu> listMenu = getAllMenu.fold(
      (l) => null,
      (listMenu) => listMenu,
    );

    // Get All Action
    for (Menu menu in listMenu) {
      final getAllActionByMenuId =
          await ActionRepo().getAllActionByMenuId(menu.id);
      if (getAllActionByMenuId.isRight()) {
        List<Action> listAction = getAllActionByMenuId.fold(
          (l) => null,
          (listAction) => listAction,
        );
        listMenuModel.add(
          MenuModelMapper().toMenuModel(menu, listAction),
        );
      }
    }

    return right(listMenuModel);
  }
}
