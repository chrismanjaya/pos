import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pos/domain/model/group_model.dart';
import 'package:pos/domain/model/privilege_model.dart';
import 'package:pos/domain/services/group/group_services.dart';

part 'group_event.dart';
part 'group_state.dart';
part 'group_bloc.freezed.dart';

@injectable
class GroupBloc extends Bloc<GroupEvent, GroupState> {
  final GroupServices _groupServices;

  GroupBloc(this._groupServices) : super(GroupState.initial());

  @override
  Stream<GroupState> mapEventToState(GroupEvent event) async* {
    yield* event.map(
      getAllGroup: (e) async* {
        yield state.copyWith(
          isLoading: true,
        );
        final getAllGroup = await _groupServices.getAllGroup();
        yield state.copyWith(
          listGroupModel: getAllGroup.fold((l) => [], (data) => data),
          listGroupModelFiltered: getAllGroup.fold((l) => [], (data) => data),
          isLoading: false,
          isLoaded: true,
        );
      },
      addGroup: (e) async* {
        yield state.copyWith(
          isLoading: true,
          isError: false,
          message: "",
        );
        final addGroup = await _groupServices.addGroup(state.selectedGroup);
        if (addGroup.isLeft()) {
          yield state.copyWith(
            isError: true,
            message: addGroup.fold((failure) => failure, (r) => ""),
          );
        } else {
          yield state.copyWith(
            isError: false,
            message: state.selectedGroup.groupName + " successfully added",
          );
        }
        yield state.copyWith(
          isLoading: false,
          isError: false,
          message: "",
        );
      },
      updateGroup: (e) async* {
        yield state.copyWith(
          isLoading: true,
          isError: false,
          message: "",
        );
        final updateGroup =
            await _groupServices.updateGroup(state.selectedGroup);
        if (updateGroup.isLeft()) {
          yield state.copyWith(
            isError: true,
            message: updateGroup.fold((failure) => failure, (r) => ""),
          );
        } else {
          yield state.copyWith(
            isError: false,
            message: state.selectedGroup.groupName + " successfully updated",
          );
        }
        yield state.copyWith(
          isLoading: false,
          isError: false,
          message: "",
        );
      },
      deleteGroup: (e) async* {
        yield state.copyWith(
          isLoading: true,
          isError: false,
          message: "",
        );
        final deleteGroup =
            await _groupServices.deleteGroup(state.selectedGroup.id);
        if (deleteGroup.isLeft()) {
          yield state.copyWith(
            isError: true,
            message: deleteGroup.fold((failure) => failure, (r) => ""),
          );
        } else {
          yield state.copyWith(
            isError: false,
            message: state.selectedGroup.groupName + " successfully deleted",
          );
        }
        yield state.copyWith(
          isLoading: false,
          isError: false,
          message: "",
        );
      },
      searchChanged: (e) async* {
        yield state.copyWith(
          listGroupModelFiltered: state.listGroupModel
              .where((groupModel) => groupModel.groupName
                  .toLowerCase()
                  .contains(e.text.toLowerCase()))
              .toList(),
        );
      },
      setSelectedGroup: (e) async* {
        yield state.copyWith(
          selectedGroup: e.groupModel,
        );
      },
      clearSelectedGroup: (e) async* {
        yield state.copyWith(
          selectedGroup: GroupModel.empty(),
        );
      },
      changeGroupName: (e) async* {
        yield state.copyWith(
          selectedGroup: state.selectedGroup.copyWith(
            groupName: e.groupname,
          ),
        );
      },
      changeListPrivilege: (e) async* {
        yield state.copyWith(
          selectedGroup: state.selectedGroup.copyWith(
            listPrivilege: e.listPrivilegeModel,
          ),
        );
      },
    );
  }
}
