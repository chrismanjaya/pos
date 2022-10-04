part of 'branch_bloc.dart';

@freezed
abstract class BranchState with _$BranchState {
  const factory BranchState({
    @required List<BranchModel> listBranch,
    @required List<BranchModel> listBranchFiltered,
    @required List<BranchModel> listSelectedBranch,
    @required BranchModel selectedBranch,
    @required bool isLoading,
    @required bool isLoaded,
    @required bool isError,
    @required String message,
  }) = _BranchState;

  factory BranchState.initial() => BranchState(
        listBranch: [],
        listBranchFiltered: [],
        listSelectedBranch: [],
        selectedBranch: BranchModel.empty(),
        isLoading: false,
        isLoaded: false,
        isError: false,
        message: "",
      );
}
