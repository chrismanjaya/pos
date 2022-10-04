import 'package:freezed_annotation/freezed_annotation.dart';
part 'action.freezed.dart';

@freezed
abstract class Action with _$Action {
  factory Action({
    String id,
    String menuId,
    String action,
  }) = _Action;

  factory Action.empty() => Action(
        id: "",
        menuId: "",
        action: "",
      );
}
