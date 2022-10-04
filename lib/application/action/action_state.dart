part of 'action_bloc.dart';

@freezed
abstract class ActionState with _$ActionState {
  const factory ActionState({
    @required String action,
    @required bool isSelected,
  }) = _ActionState;

  factory ActionState.initial() => ActionState(
        action: "",
        isSelected: false,
      );
}
