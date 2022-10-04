import 'package:dartz/dartz.dart';
import 'package:pos/domain/model/product_model.dart';

abstract class CashierServices {
  Future<Either<String, List<ProductModel>>> getListProduct();
  Future<Either<String, List<String>>> getListCashier(
      String branchId, String action);
  Future<Either<String, ProductModel>> getProductByName(String productName);
}
