part of 'product_bloc.dart';

@freezed
abstract class ProductEvent with _$ProductEvent {
  const factory ProductEvent.getListProduct() = GetListProduct;
  const factory ProductEvent.searchChanged(String text) = SearchChanged;
}
