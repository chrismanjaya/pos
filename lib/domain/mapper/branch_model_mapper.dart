import 'package:pos/domain/model/branch_model.dart';
import 'package:pos/infrastructure/model/branch.dart';

class BranchModelMapper {
  BranchModel toBranchModel(Branch branch) {
    return BranchModel(
      id: branch.id,
      branchName: branch.branchName,
      address: branch.address,
      phoneNumber: branch.phoneNumber,
    );
  }

  List<BranchModel> toListBranchModel(List<Branch> listBranch) {
    List<BranchModel> listBranchModel = [];
    try {
      for (Branch branch in listBranch) {
        listBranchModel.add(
          toBranchModel(branch),
        );
      }
    } catch (error) {
      print("ERROR: " + error.toString());
    }
    return listBranchModel;
  }

  Branch toBranch(BranchModel branchModel) {
    return Branch(
      id: branchModel.id,
      branchName: branchModel.branchName,
      address: branchModel.address,
      phoneNumber: branchModel.phoneNumber,
    );
  }

  List<Branch> toListBranch(List<BranchModel> listBranchModel) {
    List<Branch> listBranch = [];
    try {
      for (BranchModel branchModel in listBranchModel) {
        listBranch.add(
          toBranch(branchModel),
        );
      }
    } catch (error) {
      print("ERROR: " + error.toString());
    }
    return listBranch;
  }
}
