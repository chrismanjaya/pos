part of 'user_bloc.dart';

@freezed
abstract class UserEvent with _$UserEvent {
  const factory UserEvent.getAllUser() = GetAllUser;
  const factory UserEvent.resetUserPassword() = ResetUserPassword;
  const factory UserEvent.addUser() = AddUser;
  const factory UserEvent.updateUser() = UpdateUser;
  const factory UserEvent.searchChanged(String text) = SearchChanged;
  const factory UserEvent.setSelectedUser(UserModel userModel) =
      SetSelectedUser;
  const factory UserEvent.clearSelectedUser() = ClearSelectedUser;
  const factory UserEvent.changeUsername(String username) = ChangeUsername;
  const factory UserEvent.changeEmail(String email) = ChangeEmail;
  const factory UserEvent.changeGroup(GroupModel groupModel) = ChangeGroup;
  const factory UserEvent.changeListBranch(List<BranchModel> listBranchModel) =
      ChangeListBranch;
}
