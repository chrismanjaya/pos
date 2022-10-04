import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/infrastructure/model/action.dart';

part 'menu_model.freezed.dart';

@freezed
abstract class MenuModel with _$MenuModel {
  factory MenuModel({
    String id,
    int menuCode,
    String menuName,
    List<Action> listAction,
  }) = _MenuModel;

  factory MenuModel.empty() => MenuModel(
        id: "",
        menuCode: 0,
        menuName: "",
        listAction: [],
      );
}
