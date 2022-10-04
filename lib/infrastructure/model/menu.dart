import 'package:freezed_annotation/freezed_annotation.dart';
part 'menu.freezed.dart';

@freezed
abstract class Menu with _$Menu {
  factory Menu({
    String id,
    int menuCode,
    String menuName,
  }) = _Menu;

  factory Menu.empty() => Menu(
        id: "",
        menuCode: 0,
        menuName: "",
      );
}
