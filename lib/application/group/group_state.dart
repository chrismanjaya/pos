part of 'group_bloc.dart';

@freezed
abstract class GroupState with _$GroupState {
  const factory GroupState({
    @required List<GroupModel> listGroupModel,
    @required List<GroupModel> listGroupModelFiltered,
    @required GroupModel selectedGroup,
    @required bool isLoading,
    @required bool isLoaded,
    @required bool isValid,
    @required bool isError,
    @required String message,
  }) = _GroupState;

  factory GroupState.initial() => GroupState(
        listGroupModel: [],
        listGroupModelFiltered: [],
        selectedGroup: GroupModel.empty(),
        isLoading: false,
        isLoaded: false,
        isValid: false,
        isError: false,
        message: "",
      );
}
