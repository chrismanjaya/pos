import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';

@freezed
abstract class ProductModel with _$ProductModel {
  factory ProductModel({
    String id,
    String name,
    double price,
    double discount,
  }) = _Product;

  factory ProductModel.empty() => ProductModel(
        id: "",
        name: "",
        price: 0,
        discount: 0,
      );
}
