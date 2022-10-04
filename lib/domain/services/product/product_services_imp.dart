import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pos/domain/mapper/product_model_mapper.dart';
import 'package:pos/domain/model/product_model.dart';
import 'package:pos/domain/services/product/product_services.dart';
import 'package:pos/infrastructure/model/product.dart';
import 'package:pos/infrastructure/repository/product_repo.dart';

@LazySingleton(as: ProductServices)
class ProductServiceImp implements ProductServices {
  @override
  Future<Either<String, Unit>> addProduct(ProductModel productModel) async {
    final addProduct = await ProductRepo()
        .addProduct(ProductModelMapper().toProduct(productModel));
    return addProduct.fold((failure) => left(failure), (_) => right(unit));
  }

  @override
  Future<Either<String, Unit>> deleteProduct(String productId) async {
    final deleteProduct = await ProductRepo().deleteProduct(productId);
    return deleteProduct.fold((failure) => left(failure), (_) => right(unit));
  }

  @override
  Future<Either<String, List<ProductModel>>> getAllProduct() async {
    final getAllProduct = await ProductRepo().getAllProduct();
    if (getAllProduct.isLeft()) {
      return left(getAllProduct.fold((failure) => failure, (r) => null));
    } else {
      List<ProductModel> productModels = [];
      try {
        for (Product product
            in getAllProduct.fold((l) => null, (listProduct) => listProduct)) {
          productModels.add(ProductModelMapper().toProductModel(product));
        }
      } catch (error) {
        return left(error.toString());
      }
      return right(productModels);
    }
  }

  @override
  Future<Either<String, ProductModel>> getProductById(String productId) async {
    final getProductById = await ProductRepo().getProductById(productId);
    return getProductById.fold((failure) => left(failure),
        (product) => right(ProductModelMapper().toProductModel(product)));
  }

  @override
  Future<Either<String, Unit>> updateProduct(ProductModel productModel) async {
    final addProduct = await ProductRepo()
        .updateProduct(ProductModelMapper().toProduct(productModel));
    return addProduct.fold((failure) => left(failure), (_) => right(unit));
  }
}
