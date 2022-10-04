part of 'group_bloc.dart';

@freezed
abstract class GroupEvent with _$GroupEvent {
  const factory GroupEvent.getAllGroup() = GetAllGroup;
  const factory GroupEvent.addGroup() = AddGroup;
  const factory GroupEvent.updateGroup() = UpdateGroup;
  const factory GroupEvent.deleteGroup() = DeleteGroup;
  const factory GroupEvent.searchChanged(String text) = SearchChanged;
  const factory GroupEvent.setSelectedGroup(GroupModel groupModel) =
      SetSelectedGroup;
  const factory GroupEvent.clearSelectedGroup() = ClearSelectedGroup;
  const factory GroupEvent.changeGroupName(String groupname) = ChangeGroupName;
  const factory GroupEvent.changeListPrivilege(
      List<PrivilegeModel> listPrivilegeModel) = ChangeListPrivilege;
}
