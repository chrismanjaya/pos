import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pos/domain/model/product_model.dart';
import 'package:pos/domain/services/product/product_services.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductServices _productService;

  ProductBloc(this._productService) : super(ProductState.initial());

  @override
  Stream<ProductState> mapEventToState(ProductEvent event) async* {
    yield* event.map(
      getAllProduct: (e) async* {
        yield state.copyWith(
          isLoading: true,
        );
        final getAllProduct = await _productService.getAllProduct();
        yield state.copyWith(
          listProduct: getAllProduct.fold((l) => [], (data) => data),
          listProductFiltered: getAllProduct.fold((l) => [], (data) => data),
          isLoading: false,
          isLoaded: true,
        );
      },
      getProduct: (e) async* {
        yield state.copyWith(
          isLoading: true,
        );
        final getProduct = await _productService.getProductById(e.productId);
        yield state.copyWith(
          selectedProduct:
              getProduct.fold((l) => ProductModel.empty(), (data) => data),
          isLoading: false,
          isLoaded: true,
        );
      },
      setSelectedProduct: (e) async* {
        yield state.copyWith(
          selectedProduct: e.productModel,
        );
      },
      clearSelectedProduct: (e) async* {
        yield state.copyWith(
          selectedProduct: ProductModel.empty(),
        );
      },
      changeSelectedProductName: (e) async* {
        yield state.copyWith(
          selectedProduct: state.selectedProduct.copyWith(
            name: e.productName,
          ),
        );
      },
      changeSelectedProductPrice: (e) async* {
        yield state.copyWith(
          selectedProduct:
              state.selectedProduct.copyWith(price: e.productPrice),
        );
      },
      changeSelectedProductDiscount: (e) async* {
        yield state.copyWith(
          selectedProduct: state.selectedProduct.copyWith(
            discount: e.productDiscount,
          ),
        );
      },
      addProduct: (e) async* {
        yield state.copyWith(
          isLoading: true,
          isError: false,
          message: "",
        );
        final addProduct =
            await _productService.addProduct(state.selectedProduct);
        if (addProduct.isLeft()) {
          yield state.copyWith(
            isError: true,
            message: addProduct.fold((failure) => failure, (r) => ""),
          );
        } else {
          yield state.copyWith(
            isError: false,
            message: state.selectedProduct.name + " successfully added",
          );
        }
        yield state.copyWith(
          isLoading: false,
          isError: false,
          message: "",
        );
      },
      updateProduct: (e) async* {
        yield state.copyWith(
          isLoading: true,
          isError: false,
          message: "",
        );
        final updateProduct =
            await _productService.updateProduct(state.selectedProduct);
        if (updateProduct.isLeft()) {
          yield state.copyWith(
            isError: true,
            message: updateProduct.fold((failure) => failure, (r) => ""),
          );
        } else {
          yield state.copyWith(
            isError: false,
            message: state.selectedProduct.name + " successfully updated",
          );
        }
        yield state.copyWith(
          isLoading: false,
          isError: false,
          message: "",
        );
      },
      deleteProduct: (e) async* {
        yield state.copyWith(
          isLoading: true,
          isError: false,
          message: "",
        );
        final deleteProduct =
            await _productService.deleteProduct(state.selectedProduct.id);
        if (deleteProduct.isLeft()) {
          yield state.copyWith(
            isError: true,
            message: deleteProduct.fold((failure) => failure, (r) => ""),
          );
        } else {
          yield state.copyWith(
            isError: false,
            message: state.selectedProduct.name + " successfully deleted",
          );
        }
        yield state.copyWith(
          isLoading: false,
          isError: false,
          message: "",
        );
      },
      searchChanged: (e) async* {
        yield state.copyWith(
          listProductFiltered: state.listProduct
              .where((product) =>
                  product.name.toLowerCase().contains(e.text.toLowerCase()))
              .toList(),
        );
      },
    );
  }
}
