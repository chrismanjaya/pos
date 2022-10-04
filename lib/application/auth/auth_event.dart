part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signIn(String email, String password) = SignIn;
  const factory AuthEvent.signOut() = SignOut;
  const factory AuthEvent.authCheck() = AuthCheck;
  const factory AuthEvent.getUserInfo() = GetUserInfo;
  const factory AuthEvent.branchChanged(BranchModel branchModel) =
      BranchChanged;
}
