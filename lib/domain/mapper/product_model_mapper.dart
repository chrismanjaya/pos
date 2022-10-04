import 'package:pos/domain/model/product_model.dart';
import 'package:pos/infrastructure/model/product.dart';

class ProductModelMapper {
  ProductModel toProductModel(Product product) {
    return ProductModel(
      id: product.id,
      name: product.productName,
      price: product.productPrice.toDouble(),
      discount: product.productDiscount.toDouble(),
    );
  }

  Product toProduct(ProductModel productModel) {
    return Product(
      id: productModel.id,
      productName: productModel.name,
      productPrice: productModel.price.toInt(),
      productDiscount: productModel.discount.toInt(),
    );
  }
}
