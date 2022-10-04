part of 'menu_bloc.dart';

@freezed
abstract class MenuEvent with _$MenuEvent {
  const factory MenuEvent.getAllMenu() = GetAllMenu;
  const factory MenuEvent.setSelectedMenu(List<MenuModel> listMenuModel) =
      SetSelectedMenu;
}
