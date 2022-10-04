import 'package:dartz/dartz.dart';
import 'package:pos/domain/model/branch_model.dart';

abstract class BranchServices {
  Future<Either<String, List<BranchModel>>> getAllBranch();
  Future<Either<String, Unit>> addBranch(BranchModel branchModel);
  Future<Either<String, Unit>> updateBranch(BranchModel groupModel);
  Future<Either<String, Unit>> deleteBranch(String branchId);
}
