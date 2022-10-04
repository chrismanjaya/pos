part of 'product_bloc.dart';

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState({
    @required List<ProductModel> listProduct,
    @required List<ProductModel> listProductFiltered,
    @required ProductModel selectedProduct,
    @required bool isLoading,
    @required bool isLoaded,
    @required bool isError,
    @required String message,
  }) = _ProductState;

  factory ProductState.initial() => ProductState(
        listProduct: [],
        listProductFiltered: [],
        selectedProduct: ProductModel.empty(),
        isLoading: false,
        isLoaded: false,
        isError: false,
        message: "",
      );
}
