part of 'product_bloc.dart';

@freezed
abstract class ProductEvent with _$ProductEvent {
  const factory ProductEvent.getAllProduct() = GetAllProduct;
  const factory ProductEvent.getProduct(String productId) = GetProduct;
  const factory ProductEvent.addProduct() = AddProduct;
  const factory ProductEvent.updateProduct() = UpdateProduct;
  const factory ProductEvent.deleteProduct() = DeleteProduct;
  const factory ProductEvent.searchChanged(String text) = SearchChanged;

  const factory ProductEvent.setSelectedProduct(ProductModel productModel) =
      SetSelectedProduct;
  const factory ProductEvent.clearSelectedProduct() = ClearSelectedProduct;
  const factory ProductEvent.changeSelectedProductName(String productName) =
      ChangeSelectedProductName;
  const factory ProductEvent.changeSelectedProductPrice(double productPrice) =
      ChangeSelectedProductPrice;
  const factory ProductEvent.changeSelectedProductDiscount(
      double productDiscount) = ChangeSelectedProductDiscount;
}
