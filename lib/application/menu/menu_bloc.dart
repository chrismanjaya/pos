import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pos/domain/model/menu_model.dart';
import 'package:pos/domain/services/menu/menu_services.dart';

part 'menu_event.dart';
part 'menu_state.dart';
part 'menu_bloc.freezed.dart';

@injectable
class MenuBloc extends Bloc<MenuEvent, MenuState> {
  final MenuServices _menuService;

  MenuBloc(this._menuService) : super(MenuState.initial());

  @override
  Stream<MenuState> mapEventToState(MenuEvent event) async* {
    yield* event.map(
      getAllMenu: (e) async* {
        yield state.copyWith(
          isLoading: true,
          isLoaded: false,
        );
        final getAllMenu = await _menuService.getAllMenu();
        yield state.copyWith(
          listMenu: getAllMenu.fold((l) => [], (data) => data),
          listMenuSelectedMenu: [],
          isLoading: false,
          isLoaded: true,
        );
      },
      setSelectedMenu: (e) async* {
        yield state.copyWith(
          listMenuSelectedMenu: e.listMenuModel,
          selectedMenu: state.selectedMenu + 1,
        );
      },
    );
  }
}
