part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @required UserModel userModel,
    @required bool isLoading,
    @required bool isLoaded,
    @required bool isAuthenticate,
    @required String errorMessage,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        userModel: UserModel.empty(),
        isLoading: false,
        isLoaded: false,
        isAuthenticate: false,
        errorMessage: "",
      );
}
