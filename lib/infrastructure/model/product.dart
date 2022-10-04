import 'package:freezed_annotation/freezed_annotation.dart';
part 'product.freezed.dart';

@freezed
abstract class Product with _$Product {
  factory Product({
    String id,
    String productName,
    int productPrice,
    int productDiscount,
  }) = _Product;

  factory Product.empty() => Product(
        id: "",
        productName: "",
        productPrice: 0,
        productDiscount: 0,
      );
}
