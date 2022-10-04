part of 'sign_in_bloc.dart';

@freezed
abstract class SignInEvent with _$SignInEvent {
  const factory SignInEvent.emailChanged(String email) = EmailChange;
  const factory SignInEvent.passwordChanged(String password) = PasswordChange;
  const factory SignInEvent.obscureTextChanged(bool isObscureText) =
      ObscureTextChanged;
}
