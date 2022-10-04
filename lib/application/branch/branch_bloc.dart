import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pos/domain/model/branch_model.dart';
import 'package:pos/domain/services/branch/branch_services.dart';

part 'branch_event.dart';
part 'branch_state.dart';
part 'branch_bloc.freezed.dart';

@injectable
class BranchBloc extends Bloc<BranchEvent, BranchState> {
  final BranchServices _branchService;

  BranchBloc(this._branchService) : super(BranchState.initial());

  @override
  Stream<BranchState> mapEventToState(BranchEvent event) async* {
    yield* event.map(
      getAllBranch: (e) async* {
        yield state.copyWith(
          isLoading: true,
        );
        final getAllBranch = await _branchService.getAllBranch();
        yield state.copyWith(
          listBranch: getAllBranch.fold((l) => [], (data) => data),
          listBranchFiltered: getAllBranch.fold((l) => [], (data) => data),
          isLoading: false,
          isLoaded: true,
        );
      },
      setListBranchFiltered: (e) async* {
        yield state.copyWith(
          listBranchFiltered: e.listBranchFiltered,
        );
      },
      setListSelectedBranch: (e) async* {
        yield state.copyWith(
          listSelectedBranch: e.listBranchModel,
        );
      },
      setSelectedBranch: (e) async* {
        yield state.copyWith(
          selectedBranch: e.branchModel,
        );
      },
      clearSelectedBranch: (e) async* {
        yield state.copyWith(
          selectedBranch: BranchModel.empty(),
        );
      },
      changeSelectedBranchName: (e) async* {
        yield state.copyWith(
          selectedBranch: state.selectedBranch.copyWith(
            branchName: e.branchName,
          ),
        );
      },
      changeSelectedAddress: (e) async* {
        yield state.copyWith(
          selectedBranch: state.selectedBranch.copyWith(
            address: e.address,
          ),
        );
      },
      changeSelectedPhoneNumber: (e) async* {
        yield state.copyWith(
          selectedBranch: state.selectedBranch.copyWith(
            phoneNumber: e.phoneNumber,
          ),
        );
      },
      addBranch: (e) async* {
        yield state.copyWith(
          isLoading: true,
          isError: false,
          message: "",
        );
        final addBranch = await _branchService.addBranch(state.selectedBranch);
        if (addBranch.isLeft()) {
          yield state.copyWith(
            isError: true,
            message: addBranch.fold((failure) => failure, (r) => ""),
          );
        } else {
          yield state.copyWith(
            isError: false,
            message: state.selectedBranch.branchName + " successfully added",
          );
        }
        yield state.copyWith(
          isLoading: false,
          isError: false,
          message: "",
        );
      },
      updateBranch: (e) async* {
        yield state.copyWith(
          isLoading: true,
          isError: false,
          message: "",
        );
        final updateBranch =
            await _branchService.updateBranch(state.selectedBranch);
        if (updateBranch.isLeft()) {
          yield state.copyWith(
            isError: true,
            message: updateBranch.fold((failure) => failure, (r) => ""),
          );
        } else {
          yield state.copyWith(
            isError: false,
            message: state.selectedBranch.branchName + " successfully updated",
          );
        }
        yield state.copyWith(
          isLoading: false,
          isError: false,
          message: "",
        );
      },
      deleteBranch: (e) async* {
        yield state.copyWith(
          isLoading: true,
          isError: false,
          message: "",
        );
        final deleteBranch =
            await _branchService.deleteBranch(state.selectedBranch.id);
        if (deleteBranch.isLeft()) {
          yield state.copyWith(
            isError: true,
            message: deleteBranch.fold((failure) => failure, (r) => ""),
          );
        } else {
          yield state.copyWith(
            isError: false,
            message: state.selectedBranch.branchName + " successfully deleted",
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
          listBranchFiltered: state.listBranch
              .where((branch) => branch.branchName
                  .toLowerCase()
                  .contains(e.text.toLowerCase()))
              .toList(),
        );
      },
    );
  }
}
