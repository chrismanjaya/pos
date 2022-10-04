import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pos/domain/model/branch_model.dart';
import 'package:pos/domain/model/group_model.dart';
import 'package:pos/domain/model/user_model.dart';
import 'package:pos/domain/services/user/user_services.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final UserServices _userServices;

  UserBloc(this._userServices) : super(UserState.initial());

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    yield* event.map(
      getAllUser: (e) async* {
        yield state.copyWith(
          isLoading: true,
        );
        final getAllUser = await _userServices.getAllUser();
        yield state.copyWith(
          listUserModel: getAllUser.fold((l) => [], (data) => data),
          listUserModelFiltered: getAllUser.fold((l) => [], (data) => data),
          isLoading: false,
          isLoaded: true,
        );
      },
      resetUserPassword: (e) async* {
        yield state.copyWith(
          isLoading: true,
          isError: false,
          message: "",
        );
        final resetUserPassword =
            await _userServices.resetUserPassword(state.selectedUser);
        if (resetUserPassword.isLeft()) {
          yield state.copyWith(
            isError: true,
            message: resetUserPassword.fold((failure) => failure, (r) => ""),
          );
        } else {
          yield state.copyWith(
            isError: false,
            message: "Success reseting password " +
                state.selectedUser.username +
                ". New password will be sent to user email address",
          );
        }

        yield state.copyWith(
          isLoading: false,
          isError: false,
          message: "",
        );
      },
      addUser: (e) async* {
        yield state.copyWith(
          isLoading: true,
          isError: false,
          message: "",
        );
        bool isValid = true;
        if (state.selectedUser.username == "") {
          isValid = false;
          yield state.copyWith(
            isError: true,
            message: "Username is empty",
          );
        } else if (state.selectedUser.email == "") {
          isValid = false;
          yield state.copyWith(
            isError: true,
            message: "Email is empty",
          );
        } else if (state.selectedUser.group.groupName == "") {
          isValid = false;
          yield state.copyWith(
            isError: true,
            message: "Please select group",
          );
        } else if (state.selectedUser.listBranch.length == 0) {
          isValid = false;
          yield state.copyWith(
            isError: true,
            message: "Please select branch",
          );
        }
        if (isValid) {
          final addUser = await _userServices.addUser(state.selectedUser);
          if (addUser.isLeft()) {
            yield state.copyWith(
              isError: true,
              message: addUser.fold(
                (failure) => failure,
                (r) => "",
              ),
            );
          } else {
            yield state.copyWith(
              isError: false,
              message: "Success adding new user",
            );
          }
        }
        yield state.copyWith(
          isLoading: false,
          isError: false,
          message: "",
        );
      },
      updateUser: (e) async* {
        yield state.copyWith(
          isLoading: true,
          isError: false,
          message: "",
        );
        final updateUser = await _userServices.updateUser(state.selectedUser);
        if (updateUser.isLeft()) {
          yield state.copyWith(
            isError: true,
            message: updateUser.fold((failure) => failure, (r) => ""),
          );
        } else {
          yield state.copyWith(
            isError: false,
            message: state.selectedUser.username + " successfully updated",
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
          listUserModelFiltered: state.listUserModel
              .where((userModel) => userModel.username
                  .toLowerCase()
                  .contains(e.text.toLowerCase()))
              .toList(),
        );
      },
      setSelectedUser: (e) async* {
        yield state.copyWith(
          selectedUser: e.userModel,
        );
      },
      clearSelectedUser: (e) async* {
        yield state.copyWith(
          selectedUser: UserModel.empty(),
        );
      },
      changeUsername: (e) async* {
        yield state.copyWith(
          selectedUser: state.selectedUser.copyWith(
            username: e.username,
          ),
        );
      },
      changeEmail: (e) async* {
        yield state.copyWith(
          selectedUser: state.selectedUser.copyWith(
            email: e.email,
          ),
        );
      },
      changeGroup: (e) async* {
        yield state.copyWith(
          selectedUser: state.selectedUser.copyWith(
            group: e.groupModel,
          ),
        );
      },
      changeListBranch: (e) async* {
        yield state.copyWith(
          selectedUser: state.selectedUser.copyWith(
            branch: (e.listBranchModel.length > 0)
                ? e.listBranchModel[0]
                : BranchModel.empty(),
            listBranch: e.listBranchModel,
          ),
        );
      },
    );
  }
}
