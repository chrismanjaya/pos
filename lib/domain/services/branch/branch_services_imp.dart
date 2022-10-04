import 'package:injectable/injectable.dart';
import 'package:pos/domain/mapper/branch_model_mapper.dart';
import 'package:pos/domain/model/branch_model.dart';
import 'package:dartz/dartz.dart';
import 'package:pos/domain/services/branch/branch_services.dart';
import 'package:pos/infrastructure/model/branch.dart';
import 'package:pos/infrastructure/repository/branch_repo.dart';

@LazySingleton(as: BranchServices)
class BranchServicesImp implements BranchServices {
  @override
  Future<Either<String, Unit>> addBranch(BranchModel branchModel) async {
    final addBranch =
        await BranchRepo().addBranch(BranchModelMapper().toBranch(branchModel));
    return addBranch.fold((failure) => left(failure), (_) => right(unit));
  }

  @override
  Future<Either<String, List<BranchModel>>> getAllBranch() async {
    final getAllBranch = await BranchRepo().getAllBranch();
    if (getAllBranch.isLeft()) {
      return left(getAllBranch.fold((failure) => failure, (r) => null));
    } else {
      List<BranchModel> branchModels = [];
      try {
        for (Branch branch
            in getAllBranch.fold((l) => null, (listBranch) => listBranch)) {
          branchModels.add(BranchModelMapper().toBranchModel(branch));
        }
      } catch (error) {
        return left(error.toString());
      }
      return right(branchModels);
    }
  }

  @override
  Future<Either<String, Unit>> deleteBranch(String branchId) async {
    final addBranch = await BranchRepo().deleteBranch(branchId);
    return addBranch.fold((failure) => left(failure), (_) => right(unit));
  }

  @override
  Future<Either<String, Unit>> updateBranch(BranchModel branchModel) async {
    final addBranch = await BranchRepo()
        .updateBranch(BranchModelMapper().toBranch(branchModel));
    return addBranch.fold((failure) => left(failure), (_) => right(unit));
  }
}
