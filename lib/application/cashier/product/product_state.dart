part of 'product_bloc.dart';

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState({
    @required List<ProductModel> listProduct,
    @required List<ProductModel> listProductFiltered,
    @required bool isLoading,
    @required bool isLoaded,
    @required String errorMessage,
  }) = _ProductState;

  factory ProductState.initial() => ProductState(
        listProduct: [],
        listProductFiltered: [],
        isLoading: false,
        isLoaded: false,
        errorMessage: "",
      );
}
