import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pos/domain/mapper/product_model_mapper.dart';
import 'package:pos/domain/model/product_model.dart';
import 'package:pos/domain/services/cashier/cashier_services.dart';
import 'package:pos/infrastructure/model/group_privileges.dart';
import 'package:pos/infrastructure/model/product.dart';
import 'package:pos/infrastructure/model/user_branches.dart';
import 'package:pos/infrastructure/model/user_data.dart';
import 'package:pos/infrastructure/repository/group_privileges_repo.dart';
import 'package:pos/infrastructure/repository/product_repo.dart';
import 'package:pos/infrastructure/repository/user_branches_repo.dart';
import 'package:pos/infrastructure/repository/user_repo.dart';

@LazySingleton(as: CashierServices)
class CashierServiceImp implements CashierServices {
  @override
  Future<Either<String, List<ProductModel>>> getListProduct() async {
    final getAllProduct = await ProductRepo().getAllProduct();
    if (getAllProduct.isLeft())
      return left(getAllProduct.fold((failure) => failure, (r) => null));

    List<Product> listProduct = getAllProduct.fold((l) => null, (data) => data);
    List<ProductModel> listProductModel = [];
    for (Product product in listProduct) {
      listProductModel.add(ProductModelMapper().toProductModel(product));
    }
    return right(listProductModel);
  }

  @override
  Future<Either<String, List<String>>> getListCashier(
      String branchId, String action) async {
    List<String> listCashier = [];
    // Get List Group ID with Action "PAYMENT"
    final getListGroupPrivilegesByRole =
        await GroupPrivilegesRepo().getListGroupPrivilegesByRole(action);
    List<String> listGroupId = [];
    List<GroupPrivileges> listGroupPrivileges =
        getListGroupPrivilegesByRole.fold(
      (l) => [],
      (listData) => listData,
    );
    for (GroupPrivileges groupPrivileges in listGroupPrivileges) {
      listGroupId.add(groupPrivileges.groupId);
    }
    if (listGroupId.length == 0) return right([]);

    // Get List User ID
    List<String> listUserId = [];
    final getListUserDataByGroup =
        await UserRepo().getListUserDataByGroup(listGroupId);
    List<UserData> listUserData =
        getListUserDataByGroup.fold((l) => null, (listData) => listData);
    for (UserData userData in listUserData) {
      listUserId.add(userData.id);
    }
    if (listUserId.length == 0) return right([]);

    // Validate Branch
    final getListUserBranchesByUserId =
        await UserBranchesRepo().getListUserBranchesByUserId(listUserId);
    List<UserBranches> listUserBranches =
        getListUserBranchesByUserId.fold((l) => null, (listData) => listData);
    for (UserBranches userBranches in listUserBranches) {
      if (userBranches.branchId == branchId) {
        listCashier.add(
          listUserData
              .firstWhere(
                  (UserData userData) => userData.id == userBranches.userId)
              .username,
        );
      }
    }

    return right(listCashier);
  }

  @override
  Future<Either<String, ProductModel>> getProductByName(
      String productName) async {
    final getProductById = await ProductRepo().getProductByName(productName);
    return getProductById.fold((failure) => left(failure),
        (product) => right(ProductModelMapper().toProductModel(product)));
  }
}
