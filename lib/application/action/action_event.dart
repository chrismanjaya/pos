part of 'action_bloc.dart';

@freezed
abstract class ActionEvent with _$ActionEvent {
  const factory ActionEvent.setAction(String action) = SetAction;
  const factory ActionEvent.actionClicked() = ActionClicked;
}
