import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pos/domain/model/product_model.dart';
import 'package:pos/domain/services/cashier/cashier_services.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final CashierServices _cashierServices;

  ProductBloc(this._cashierServices) : super(ProductState.initial());

  @override
  Stream<ProductState> mapEventToState(ProductEvent event) async* {
    yield* event.map(
      getListProduct: (e) async* {
        yield state.copyWith(
          isLoading: true,
        );

        final getListProduct = await _cashierServices.getListProduct();
        if (getListProduct.isLeft()) {
          yield state.copyWith(
            isLoading: false,
            isLoaded: false,
            errorMessage:
                getListProduct.fold((failure) => failure, (r) => null),
          );
        } else {
          yield state.copyWith(
            isLoading: false,
            isLoaded: true,
            listProduct: getListProduct.fold((l) => null, (data) => data),
            listProductFiltered:
                getListProduct.fold((l) => null, (data) => data),
          );
        }
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
