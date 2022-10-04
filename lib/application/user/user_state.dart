part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState({
    @required List<UserModel> listUserModel,
    @required List<UserModel> listUserModelFiltered,
    @required UserModel selectedUser,
    @required bool isLoading,
    @required bool isLoaded,
    @required bool isError,
    @required String message,
  }) = _UserState;

  factory UserState.initial() => UserState(
        listUserModel: [],
        listUserModelFiltered: [],
        selectedUser: UserModel.empty(),
        isLoading: false,
        isLoaded: false,
        isError: false,
        message: "",
      );
}
