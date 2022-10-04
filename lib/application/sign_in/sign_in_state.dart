part of 'sign_in_bloc.dart';

@freezed
abstract class SignInState with _$SignInState {
  const factory SignInState({
    @required String email,
    @required String password,
    @required String errorEmailMessage,
    @required String errorPasswordMessage,
    @required bool isObscureText,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
        email: "",
        password: "",
        errorEmailMessage: "",
        errorPasswordMessage: "",
        isObscureText: true,
      );
}
