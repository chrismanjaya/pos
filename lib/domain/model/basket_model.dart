import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/model/product_model.dart';

part 'basket_model.freezed.dart';

@freezed
abstract class BasketModel with _$BasketModel {
  factory BasketModel({
    ProductModel product,
    int quantity,
    double total,
  }) = _BasketModel;

  factory BasketModel.empty() => BasketModel(
        product: ProductModel.empty(),
        quantity: 0,
        total: 0.0,
      );
}
