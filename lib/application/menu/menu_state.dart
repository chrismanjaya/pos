part of 'menu_bloc.dart';

@freezed
abstract class MenuState with _$MenuState {
  const factory MenuState({
    @required List<MenuModel> listMenu,
    @required List<MenuModel> listMenuSelectedMenu,
    @required int selectedMenu,
    @required bool isLoading,
    @required bool isLoaded,
    @required String errorMessage,
  }) = _MenuState;

  factory MenuState.initial() => MenuState(
        listMenu: [],
        listMenuSelectedMenu: [],
        selectedMenu: 0,
        isLoading: false,
        isLoaded: false,
        errorMessage: "",
      );
}
