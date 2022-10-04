import 'package:dartz/dartz.dart';
import 'package:pos/domain/model/product_model.dart';

abstract class ProductServices {
  Future<Either<String, List<ProductModel>>> getAllProduct();
  Future<Either<String, ProductModel>> getProductById(String productId);
  Future<Either<String, Unit>> addProduct(ProductModel productModel);
  Future<Either<String, Unit>> updateProduct(ProductModel productModel);
  Future<Either<String, Unit>> deleteProduct(String productId);
}
