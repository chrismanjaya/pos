part of 'branch_bloc.dart';

@freezed
abstract class BranchEvent with _$BranchEvent {
  const factory BranchEvent.getAllBranch() = GetAllBranch;
  const factory BranchEvent.addBranch() = AddBranch;
  const factory BranchEvent.updateBranch() = UpdateBranch;
  const factory BranchEvent.deleteBranch() = DeleteBranch;
  const factory BranchEvent.searchChanged(String text) = SearchChanged;
  const factory BranchEvent.setSelectedBranch(BranchModel branchModel) =
      SetSelectedBranch;
  const factory BranchEvent.setListBranchFiltered(
      List<BranchModel> listBranchFiltered) = SetListBranchFiltered;
  const factory BranchEvent.clearSelectedBranch() = ClearSelectedBranch;
  const factory BranchEvent.changeSelectedBranchName(String branchName) =
      ChangeSelectedBranchName;
  const factory BranchEvent.changeSelectedAddress(String address) =
      ChangeSelectedAddress;
  const factory BranchEvent.changeSelectedPhoneNumber(String phoneNumber) =
      ChangeSelectedPhoneNumber;
  const factory BranchEvent.setListSelectedBranch(
      List<BranchModel> listBranchModel) = SetListSelectedBranch;
}
