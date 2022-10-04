// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProductEventTearOff {
  const _$ProductEventTearOff();

// ignore: unused_element
  GetAllProduct getAllProduct() {
    return const GetAllProduct();
  }

// ignore: unused_element
  GetProduct getProduct(String productId) {
    return GetProduct(
      productId,
    );
  }

// ignore: unused_element
  AddProduct addProduct() {
    return const AddProduct();
  }

// ignore: unused_element
  UpdateProduct updateProduct() {
    return const UpdateProduct();
  }

// ignore: unused_element
  DeleteProduct deleteProduct() {
    return const DeleteProduct();
  }

// ignore: unused_element
  SearchChanged searchChanged(String text) {
    return SearchChanged(
      text,
    );
  }

// ignore: unused_element
  SetSelectedProduct setSelectedProduct(ProductModel productModel) {
    return SetSelectedProduct(
      productModel,
    );
  }

// ignore: unused_element
  ClearSelectedProduct clearSelectedProduct() {
    return const ClearSelectedProduct();
  }

// ignore: unused_element
  ChangeSelectedProductName changeSelectedProductName(String productName) {
    return ChangeSelectedProductName(
      productName,
    );
  }

// ignore: unused_element
  ChangeSelectedProductPrice changeSelectedProductPrice(double productPrice) {
    return ChangeSelectedProductPrice(
      productPrice,
    );
  }

// ignore: unused_element
  ChangeSelectedProductDiscount changeSelectedProductDiscount(
      double productDiscount) {
    return ChangeSelectedProductDiscount(
      productDiscount,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProductEvent = _$ProductEventTearOff();

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllProduct(),
    @required TResult getProduct(String productId),
    @required TResult addProduct(),
    @required TResult updateProduct(),
    @required TResult deleteProduct(),
    @required TResult searchChanged(String text),
    @required TResult setSelectedProduct(ProductModel productModel),
    @required TResult clearSelectedProduct(),
    @required TResult changeSelectedProductName(String productName),
    @required TResult changeSelectedProductPrice(double productPrice),
    @required TResult changeSelectedProductDiscount(double productDiscount),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllProduct(),
    TResult getProduct(String productId),
    TResult addProduct(),
    TResult updateProduct(),
    TResult deleteProduct(),
    TResult searchChanged(String text),
    TResult setSelectedProduct(ProductModel productModel),
    TResult clearSelectedProduct(),
    TResult changeSelectedProductName(String productName),
    TResult changeSelectedProductPrice(double productPrice),
    TResult changeSelectedProductDiscount(double productDiscount),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllProduct(GetAllProduct value),
    @required TResult getProduct(GetProduct value),
    @required TResult addProduct(AddProduct value),
    @required TResult updateProduct(UpdateProduct value),
    @required TResult deleteProduct(DeleteProduct value),
    @required TResult searchChanged(SearchChanged value),
    @required TResult setSelectedProduct(SetSelectedProduct value),
    @required TResult clearSelectedProduct(ClearSelectedProduct value),
    @required
        TResult changeSelectedProductName(ChangeSelectedProductName value),
    @required
        TResult changeSelectedProductPrice(ChangeSelectedProductPrice value),
    @required
        TResult changeSelectedProductDiscount(
            ChangeSelectedProductDiscount value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllProduct(GetAllProduct value),
    TResult getProduct(GetProduct value),
    TResult addProduct(AddProduct value),
    TResult updateProduct(UpdateProduct value),
    TResult deleteProduct(DeleteProduct value),
    TResult searchChanged(SearchChanged value),
    TResult setSelectedProduct(SetSelectedProduct value),
    TResult clearSelectedProduct(ClearSelectedProduct value),
    TResult changeSelectedProductName(ChangeSelectedProductName value),
    TResult changeSelectedProductPrice(ChangeSelectedProductPrice value),
    TResult changeSelectedProductDiscount(ChangeSelectedProductDiscount value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res> implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  final ProductEvent _value;
  // ignore: unused_field
  final $Res Function(ProductEvent) _then;
}

/// @nodoc
abstract class $GetAllProductCopyWith<$Res> {
  factory $GetAllProductCopyWith(
          GetAllProduct value, $Res Function(GetAllProduct) then) =
      _$GetAllProductCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetAllProductCopyWithImpl<$Res> extends _$ProductEventCopyWithImpl<$Res>
    implements $GetAllProductCopyWith<$Res> {
  _$GetAllProductCopyWithImpl(
      GetAllProduct _value, $Res Function(GetAllProduct) _then)
      : super(_value, (v) => _then(v as GetAllProduct));

  @override
  GetAllProduct get _value => super._value as GetAllProduct;
}

/// @nodoc
class _$GetAllProduct implements GetAllProduct {
  const _$GetAllProduct();

  @override
  String toString() {
    return 'ProductEvent.getAllProduct()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetAllProduct);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllProduct(),
    @required TResult getProduct(String productId),
    @required TResult addProduct(),
    @required TResult updateProduct(),
    @required TResult deleteProduct(),
    @required TResult searchChanged(String text),
    @required TResult setSelectedProduct(ProductModel productModel),
    @required TResult clearSelectedProduct(),
    @required TResult changeSelectedProductName(String productName),
    @required TResult changeSelectedProductPrice(double productPrice),
    @required TResult changeSelectedProductDiscount(double productDiscount),
  }) {
    assert(getAllProduct != null);
    assert(getProduct != null);
    assert(addProduct != null);
    assert(updateProduct != null);
    assert(deleteProduct != null);
    assert(searchChanged != null);
    assert(setSelectedProduct != null);
    assert(clearSelectedProduct != null);
    assert(changeSelectedProductName != null);
    assert(changeSelectedProductPrice != null);
    assert(changeSelectedProductDiscount != null);
    return getAllProduct();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllProduct(),
    TResult getProduct(String productId),
    TResult addProduct(),
    TResult updateProduct(),
    TResult deleteProduct(),
    TResult searchChanged(String text),
    TResult setSelectedProduct(ProductModel productModel),
    TResult clearSelectedProduct(),
    TResult changeSelectedProductName(String productName),
    TResult changeSelectedProductPrice(double productPrice),
    TResult changeSelectedProductDiscount(double productDiscount),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllProduct != null) {
      return getAllProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllProduct(GetAllProduct value),
    @required TResult getProduct(GetProduct value),
    @required TResult addProduct(AddProduct value),
    @required TResult updateProduct(UpdateProduct value),
    @required TResult deleteProduct(DeleteProduct value),
    @required TResult searchChanged(SearchChanged value),
    @required TResult setSelectedProduct(SetSelectedProduct value),
    @required TResult clearSelectedProduct(ClearSelectedProduct value),
    @required
        TResult changeSelectedProductName(ChangeSelectedProductName value),
    @required
        TResult changeSelectedProductPrice(ChangeSelectedProductPrice value),
    @required
        TResult changeSelectedProductDiscount(
            ChangeSelectedProductDiscount value),
  }) {
    assert(getAllProduct != null);
    assert(getProduct != null);
    assert(addProduct != null);
    assert(updateProduct != null);
    assert(deleteProduct != null);
    assert(searchChanged != null);
    assert(setSelectedProduct != null);
    assert(clearSelectedProduct != null);
    assert(changeSelectedProductName != null);
    assert(changeSelectedProductPrice != null);
    assert(changeSelectedProductDiscount != null);
    return getAllProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllProduct(GetAllProduct value),
    TResult getProduct(GetProduct value),
    TResult addProduct(AddProduct value),
    TResult updateProduct(UpdateProduct value),
    TResult deleteProduct(DeleteProduct value),
    TResult searchChanged(SearchChanged value),
    TResult setSelectedProduct(SetSelectedProduct value),
    TResult clearSelectedProduct(ClearSelectedProduct value),
    TResult changeSelectedProductName(ChangeSelectedProductName value),
    TResult changeSelectedProductPrice(ChangeSelectedProductPrice value),
    TResult changeSelectedProductDiscount(ChangeSelectedProductDiscount value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllProduct != null) {
      return getAllProduct(this);
    }
    return orElse();
  }
}

abstract class GetAllProduct implements ProductEvent {
  const factory GetAllProduct() = _$GetAllProduct;
}

/// @nodoc
abstract class $GetProductCopyWith<$Res> {
  factory $GetProductCopyWith(
          GetProduct value, $Res Function(GetProduct) then) =
      _$GetProductCopyWithImpl<$Res>;
  $Res call({String productId});
}

/// @nodoc
class _$GetProductCopyWithImpl<$Res> extends _$ProductEventCopyWithImpl<$Res>
    implements $GetProductCopyWith<$Res> {
  _$GetProductCopyWithImpl(GetProduct _value, $Res Function(GetProduct) _then)
      : super(_value, (v) => _then(v as GetProduct));

  @override
  GetProduct get _value => super._value as GetProduct;

  @override
  $Res call({
    Object productId = freezed,
  }) {
    return _then(GetProduct(
      productId == freezed ? _value.productId : productId as String,
    ));
  }
}

/// @nodoc
class _$GetProduct implements GetProduct {
  const _$GetProduct(this.productId) : assert(productId != null);

  @override
  final String productId;

  @override
  String toString() {
    return 'ProductEvent.getProduct(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetProduct &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productId);

  @JsonKey(ignore: true)
  @override
  $GetProductCopyWith<GetProduct> get copyWith =>
      _$GetProductCopyWithImpl<GetProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllProduct(),
    @required TResult getProduct(String productId),
    @required TResult addProduct(),
    @required TResult updateProduct(),
    @required TResult deleteProduct(),
    @required TResult searchChanged(String text),
    @required TResult setSelectedProduct(ProductModel productModel),
    @required TResult clearSelectedProduct(),
    @required TResult changeSelectedProductName(String productName),
    @required TResult changeSelectedProductPrice(double productPrice),
    @required TResult changeSelectedProductDiscount(double productDiscount),
  }) {
    assert(getAllProduct != null);
    assert(getProduct != null);
    assert(addProduct != null);
    assert(updateProduct != null);
    assert(deleteProduct != null);
    assert(searchChanged != null);
    assert(setSelectedProduct != null);
    assert(clearSelectedProduct != null);
    assert(changeSelectedProductName != null);
    assert(changeSelectedProductPrice != null);
    assert(changeSelectedProductDiscount != null);
    return getProduct(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllProduct(),
    TResult getProduct(String productId),
    TResult addProduct(),
    TResult updateProduct(),
    TResult deleteProduct(),
    TResult searchChanged(String text),
    TResult setSelectedProduct(ProductModel productModel),
    TResult clearSelectedProduct(),
    TResult changeSelectedProductName(String productName),
    TResult changeSelectedProductPrice(double productPrice),
    TResult changeSelectedProductDiscount(double productDiscount),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getProduct != null) {
      return getProduct(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllProduct(GetAllProduct value),
    @required TResult getProduct(GetProduct value),
    @required TResult addProduct(AddProduct value),
    @required TResult updateProduct(UpdateProduct value),
    @required TResult deleteProduct(DeleteProduct value),
    @required TResult searchChanged(SearchChanged value),
    @required TResult setSelectedProduct(SetSelectedProduct value),
    @required TResult clearSelectedProduct(ClearSelectedProduct value),
    @required
        TResult changeSelectedProductName(ChangeSelectedProductName value),
    @required
        TResult changeSelectedProductPrice(ChangeSelectedProductPrice value),
    @required
        TResult changeSelectedProductDiscount(
            ChangeSelectedProductDiscount value),
  }) {
    assert(getAllProduct != null);
    assert(getProduct != null);
    assert(addProduct != null);
    assert(updateProduct != null);
    assert(deleteProduct != null);
    assert(searchChanged != null);
    assert(setSelectedProduct != null);
    assert(clearSelectedProduct != null);
    assert(changeSelectedProductName != null);
    assert(changeSelectedProductPrice != null);
    assert(changeSelectedProductDiscount != null);
    return getProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllProduct(GetAllProduct value),
    TResult getProduct(GetProduct value),
    TResult addProduct(AddProduct value),
    TResult updateProduct(UpdateProduct value),
    TResult deleteProduct(DeleteProduct value),
    TResult searchChanged(SearchChanged value),
    TResult setSelectedProduct(SetSelectedProduct value),
    TResult clearSelectedProduct(ClearSelectedProduct value),
    TResult changeSelectedProductName(ChangeSelectedProductName value),
    TResult changeSelectedProductPrice(ChangeSelectedProductPrice value),
    TResult changeSelectedProductDiscount(ChangeSelectedProductDiscount value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getProduct != null) {
      return getProduct(this);
    }
    return orElse();
  }
}

abstract class GetProduct implements ProductEvent {
  const factory GetProduct(String productId) = _$GetProduct;

  String get productId;
  @JsonKey(ignore: true)
  $GetProductCopyWith<GetProduct> get copyWith;
}

/// @nodoc
abstract class $AddProductCopyWith<$Res> {
  factory $AddProductCopyWith(
          AddProduct value, $Res Function(AddProduct) then) =
      _$AddProductCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddProductCopyWithImpl<$Res> extends _$ProductEventCopyWithImpl<$Res>
    implements $AddProductCopyWith<$Res> {
  _$AddProductCopyWithImpl(AddProduct _value, $Res Function(AddProduct) _then)
      : super(_value, (v) => _then(v as AddProduct));

  @override
  AddProduct get _value => super._value as AddProduct;
}

/// @nodoc
class _$AddProduct implements AddProduct {
  const _$AddProduct();

  @override
  String toString() {
    return 'ProductEvent.addProduct()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddProduct);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllProduct(),
    @required TResult getProduct(String productId),
    @required TResult addProduct(),
    @required TResult updateProduct(),
    @required TResult deleteProduct(),
    @required TResult searchChanged(String text),
    @required TResult setSelectedProduct(ProductModel productModel),
    @required TResult clearSelectedProduct(),
    @required TResult changeSelectedProductName(String productName),
    @required TResult changeSelectedProductPrice(double productPrice),
    @required TResult changeSelectedProductDiscount(double productDiscount),
  }) {
    assert(getAllProduct != null);
    assert(getProduct != null);
    assert(addProduct != null);
    assert(updateProduct != null);
    assert(deleteProduct != null);
    assert(searchChanged != null);
    assert(setSelectedProduct != null);
    assert(clearSelectedProduct != null);
    assert(changeSelectedProductName != null);
    assert(changeSelectedProductPrice != null);
    assert(changeSelectedProductDiscount != null);
    return addProduct();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllProduct(),
    TResult getProduct(String productId),
    TResult addProduct(),
    TResult updateProduct(),
    TResult deleteProduct(),
    TResult searchChanged(String text),
    TResult setSelectedProduct(ProductModel productModel),
    TResult clearSelectedProduct(),
    TResult changeSelectedProductName(String productName),
    TResult changeSelectedProductPrice(double productPrice),
    TResult changeSelectedProductDiscount(double productDiscount),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addProduct != null) {
      return addProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllProduct(GetAllProduct value),
    @required TResult getProduct(GetProduct value),
    @required TResult addProduct(AddProduct value),
    @required TResult updateProduct(UpdateProduct value),
    @required TResult deleteProduct(DeleteProduct value),
    @required TResult searchChanged(SearchChanged value),
    @required TResult setSelectedProduct(SetSelectedProduct value),
    @required TResult clearSelectedProduct(ClearSelectedProduct value),
    @required
        TResult changeSelectedProductName(ChangeSelectedProductName value),
    @required
        TResult changeSelectedProductPrice(ChangeSelectedProductPrice value),
    @required
        TResult changeSelectedProductDiscount(
            ChangeSelectedProductDiscount value),
  }) {
    assert(getAllProduct != null);
    assert(getProduct != null);
    assert(addProduct != null);
    assert(updateProduct != null);
    assert(deleteProduct != null);
    assert(searchChanged != null);
    assert(setSelectedProduct != null);
    assert(clearSelectedProduct != null);
    assert(changeSelectedProductName != null);
    assert(changeSelectedProductPrice != null);
    assert(changeSelectedProductDiscount != null);
    return addProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllProduct(GetAllProduct value),
    TResult getProduct(GetProduct value),
    TResult addProduct(AddProduct value),
    TResult updateProduct(UpdateProduct value),
    TResult deleteProduct(DeleteProduct value),
    TResult searchChanged(SearchChanged value),
    TResult setSelectedProduct(SetSelectedProduct value),
    TResult clearSelectedProduct(ClearSelectedProduct value),
    TResult changeSelectedProductName(ChangeSelectedProductName value),
    TResult changeSelectedProductPrice(ChangeSelectedProductPrice value),
    TResult changeSelectedProductDiscount(ChangeSelectedProductDiscount value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addProduct != null) {
      return addProduct(this);
    }
    return orElse();
  }
}

abstract class AddProduct implements ProductEvent {
  const factory AddProduct() = _$AddProduct;
}

/// @nodoc
abstract class $UpdateProductCopyWith<$Res> {
  factory $UpdateProductCopyWith(
          UpdateProduct value, $Res Function(UpdateProduct) then) =
      _$UpdateProductCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateProductCopyWithImpl<$Res> extends _$ProductEventCopyWithImpl<$Res>
    implements $UpdateProductCopyWith<$Res> {
  _$UpdateProductCopyWithImpl(
      UpdateProduct _value, $Res Function(UpdateProduct) _then)
      : super(_value, (v) => _then(v as UpdateProduct));

  @override
  UpdateProduct get _value => super._value as UpdateProduct;
}

/// @nodoc
class _$UpdateProduct implements UpdateProduct {
  const _$UpdateProduct();

  @override
  String toString() {
    return 'ProductEvent.updateProduct()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdateProduct);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllProduct(),
    @required TResult getProduct(String productId),
    @required TResult addProduct(),
    @required TResult updateProduct(),
    @required TResult deleteProduct(),
    @required TResult searchChanged(String text),
    @required TResult setSelectedProduct(ProductModel productModel),
    @required TResult clearSelectedProduct(),
    @required TResult changeSelectedProductName(String productName),
    @required TResult changeSelectedProductPrice(double productPrice),
    @required TResult changeSelectedProductDiscount(double productDiscount),
  }) {
    assert(getAllProduct != null);
    assert(getProduct != null);
    assert(addProduct != null);
    assert(updateProduct != null);
    assert(deleteProduct != null);
    assert(searchChanged != null);
    assert(setSelectedProduct != null);
    assert(clearSelectedProduct != null);
    assert(changeSelectedProductName != null);
    assert(changeSelectedProductPrice != null);
    assert(changeSelectedProductDiscount != null);
    return updateProduct();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllProduct(),
    TResult getProduct(String productId),
    TResult addProduct(),
    TResult updateProduct(),
    TResult deleteProduct(),
    TResult searchChanged(String text),
    TResult setSelectedProduct(ProductModel productModel),
    TResult clearSelectedProduct(),
    TResult changeSelectedProductName(String productName),
    TResult changeSelectedProductPrice(double productPrice),
    TResult changeSelectedProductDiscount(double productDiscount),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateProduct != null) {
      return updateProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllProduct(GetAllProduct value),
    @required TResult getProduct(GetProduct value),
    @required TResult addProduct(AddProduct value),
    @required TResult updateProduct(UpdateProduct value),
    @required TResult deleteProduct(DeleteProduct value),
    @required TResult searchChanged(SearchChanged value),
    @required TResult setSelectedProduct(SetSelectedProduct value),
    @required TResult clearSelectedProduct(ClearSelectedProduct value),
    @required
        TResult changeSelectedProductName(ChangeSelectedProductName value),
    @required
        TResult changeSelectedProductPrice(ChangeSelectedProductPrice value),
    @required
        TResult changeSelectedProductDiscount(
            ChangeSelectedProductDiscount value),
  }) {
    assert(getAllProduct != null);
    assert(getProduct != null);
    assert(addProduct != null);
    assert(updateProduct != null);
    assert(deleteProduct != null);
    assert(searchChanged != null);
    assert(setSelectedProduct != null);
    assert(clearSelectedProduct != null);
    assert(changeSelectedProductName != null);
    assert(changeSelectedProductPrice != null);
    assert(changeSelectedProductDiscount != null);
    return updateProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllProduct(GetAllProduct value),
    TResult getProduct(GetProduct value),
    TResult addProduct(AddProduct value),
    TResult updateProduct(UpdateProduct value),
    TResult deleteProduct(DeleteProduct value),
    TResult searchChanged(SearchChanged value),
    TResult setSelectedProduct(SetSelectedProduct value),
    TResult clearSelectedProduct(ClearSelectedProduct value),
    TResult changeSelectedProductName(ChangeSelectedProductName value),
    TResult changeSelectedProductPrice(ChangeSelectedProductPrice value),
    TResult changeSelectedProductDiscount(ChangeSelectedProductDiscount value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateProduct != null) {
      return updateProduct(this);
    }
    return orElse();
  }
}

abstract class UpdateProduct implements ProductEvent {
  const factory UpdateProduct() = _$UpdateProduct;
}

/// @nodoc
abstract class $DeleteProductCopyWith<$Res> {
  factory $DeleteProductCopyWith(
          DeleteProduct value, $Res Function(DeleteProduct) then) =
      _$DeleteProductCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeleteProductCopyWithImpl<$Res> extends _$ProductEventCopyWithImpl<$Res>
    implements $DeleteProductCopyWith<$Res> {
  _$DeleteProductCopyWithImpl(
      DeleteProduct _value, $Res Function(DeleteProduct) _then)
      : super(_value, (v) => _then(v as DeleteProduct));

  @override
  DeleteProduct get _value => super._value as DeleteProduct;
}

/// @nodoc
class _$DeleteProduct implements DeleteProduct {
  const _$DeleteProduct();

  @override
  String toString() {
    return 'ProductEvent.deleteProduct()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeleteProduct);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllProduct(),
    @required TResult getProduct(String productId),
    @required TResult addProduct(),
    @required TResult updateProduct(),
    @required TResult deleteProduct(),
    @required TResult searchChanged(String text),
    @required TResult setSelectedProduct(ProductModel productModel),
    @required TResult clearSelectedProduct(),
    @required TResult changeSelectedProductName(String productName),
    @required TResult changeSelectedProductPrice(double productPrice),
    @required TResult changeSelectedProductDiscount(double productDiscount),
  }) {
    assert(getAllProduct != null);
    assert(getProduct != null);
    assert(addProduct != null);
    assert(updateProduct != null);
    assert(deleteProduct != null);
    assert(searchChanged != null);
    assert(setSelectedProduct != null);
    assert(clearSelectedProduct != null);
    assert(changeSelectedProductName != null);
    assert(changeSelectedProductPrice != null);
    assert(changeSelectedProductDiscount != null);
    return deleteProduct();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllProduct(),
    TResult getProduct(String productId),
    TResult addProduct(),
    TResult updateProduct(),
    TResult deleteProduct(),
    TResult searchChanged(String text),
    TResult setSelectedProduct(ProductModel productModel),
    TResult clearSelectedProduct(),
    TResult changeSelectedProductName(String productName),
    TResult changeSelectedProductPrice(double productPrice),
    TResult changeSelectedProductDiscount(double productDiscount),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteProduct != null) {
      return deleteProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllProduct(GetAllProduct value),
    @required TResult getProduct(GetProduct value),
    @required TResult addProduct(AddProduct value),
    @required TResult updateProduct(UpdateProduct value),
    @required TResult deleteProduct(DeleteProduct value),
    @required TResult searchChanged(SearchChanged value),
    @required TResult setSelectedProduct(SetSelectedProduct value),
    @required TResult clearSelectedProduct(ClearSelectedProduct value),
    @required
        TResult changeSelectedProductName(ChangeSelectedProductName value),
    @required
        TResult changeSelectedProductPrice(ChangeSelectedProductPrice value),
    @required
        TResult changeSelectedProductDiscount(
            ChangeSelectedProductDiscount value),
  }) {
    assert(getAllProduct != null);
    assert(getProduct != null);
    assert(addProduct != null);
    assert(updateProduct != null);
    assert(deleteProduct != null);
    assert(searchChanged != null);
    assert(setSelectedProduct != null);
    assert(clearSelectedProduct != null);
    assert(changeSelectedProductName != null);
    assert(changeSelectedProductPrice != null);
    assert(changeSelectedProductDiscount != null);
    return deleteProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllProduct(GetAllProduct value),
    TResult getProduct(GetProduct value),
    TResult addProduct(AddProduct value),
    TResult updateProduct(UpdateProduct value),
    TResult deleteProduct(DeleteProduct value),
    TResult searchChanged(SearchChanged value),
    TResult setSelectedProduct(SetSelectedProduct value),
    TResult clearSelectedProduct(ClearSelectedProduct value),
    TResult changeSelectedProductName(ChangeSelectedProductName value),
    TResult changeSelectedProductPrice(ChangeSelectedProductPrice value),
    TResult changeSelectedProductDiscount(ChangeSelectedProductDiscount value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteProduct != null) {
      return deleteProduct(this);
    }
    return orElse();
  }
}

abstract class DeleteProduct implements ProductEvent {
  const factory DeleteProduct() = _$DeleteProduct;
}

/// @nodoc
abstract class $SearchChangedCopyWith<$Res> {
  factory $SearchChangedCopyWith(
          SearchChanged value, $Res Function(SearchChanged) then) =
      _$SearchChangedCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class _$SearchChangedCopyWithImpl<$Res> extends _$ProductEventCopyWithImpl<$Res>
    implements $SearchChangedCopyWith<$Res> {
  _$SearchChangedCopyWithImpl(
      SearchChanged _value, $Res Function(SearchChanged) _then)
      : super(_value, (v) => _then(v as SearchChanged));

  @override
  SearchChanged get _value => super._value as SearchChanged;

  @override
  $Res call({
    Object text = freezed,
  }) {
    return _then(SearchChanged(
      text == freezed ? _value.text : text as String,
    ));
  }
}

/// @nodoc
class _$SearchChanged implements SearchChanged {
  const _$SearchChanged(this.text) : assert(text != null);

  @override
  final String text;

  @override
  String toString() {
    return 'ProductEvent.searchChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchChanged &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  $SearchChangedCopyWith<SearchChanged> get copyWith =>
      _$SearchChangedCopyWithImpl<SearchChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllProduct(),
    @required TResult getProduct(String productId),
    @required TResult addProduct(),
    @required TResult updateProduct(),
    @required TResult deleteProduct(),
    @required TResult searchChanged(String text),
    @required TResult setSelectedProduct(ProductModel productModel),
    @required TResult clearSelectedProduct(),
    @required TResult changeSelectedProductName(String productName),
    @required TResult changeSelectedProductPrice(double productPrice),
    @required TResult changeSelectedProductDiscount(double productDiscount),
  }) {
    assert(getAllProduct != null);
    assert(getProduct != null);
    assert(addProduct != null);
    assert(updateProduct != null);
    assert(deleteProduct != null);
    assert(searchChanged != null);
    assert(setSelectedProduct != null);
    assert(clearSelectedProduct != null);
    assert(changeSelectedProductName != null);
    assert(changeSelectedProductPrice != null);
    assert(changeSelectedProductDiscount != null);
    return searchChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllProduct(),
    TResult getProduct(String productId),
    TResult addProduct(),
    TResult updateProduct(),
    TResult deleteProduct(),
    TResult searchChanged(String text),
    TResult setSelectedProduct(ProductModel productModel),
    TResult clearSelectedProduct(),
    TResult changeSelectedProductName(String productName),
    TResult changeSelectedProductPrice(double productPrice),
    TResult changeSelectedProductDiscount(double productDiscount),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchChanged != null) {
      return searchChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllProduct(GetAllProduct value),
    @required TResult getProduct(GetProduct value),
    @required TResult addProduct(AddProduct value),
    @required TResult updateProduct(UpdateProduct value),
    @required TResult deleteProduct(DeleteProduct value),
    @required TResult searchChanged(SearchChanged value),
    @required TResult setSelectedProduct(SetSelectedProduct value),
    @required TResult clearSelectedProduct(ClearSelectedProduct value),
    @required
        TResult changeSelectedProductName(ChangeSelectedProductName value),
    @required
        TResult changeSelectedProductPrice(ChangeSelectedProductPrice value),
    @required
        TResult changeSelectedProductDiscount(
            ChangeSelectedProductDiscount value),
  }) {
    assert(getAllProduct != null);
    assert(getProduct != null);
    assert(addProduct != null);
    assert(updateProduct != null);
    assert(deleteProduct != null);
    assert(searchChanged != null);
    assert(setSelectedProduct != null);
    assert(clearSelectedProduct != null);
    assert(changeSelectedProductName != null);
    assert(changeSelectedProductPrice != null);
    assert(changeSelectedProductDiscount != null);
    return searchChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllProduct(GetAllProduct value),
    TResult getProduct(GetProduct value),
    TResult addProduct(AddProduct value),
    TResult updateProduct(UpdateProduct value),
    TResult deleteProduct(DeleteProduct value),
    TResult searchChanged(SearchChanged value),
    TResult setSelectedProduct(SetSelectedProduct value),
    TResult clearSelectedProduct(ClearSelectedProduct value),
    TResult changeSelectedProductName(ChangeSelectedProductName value),
    TResult changeSelectedProductPrice(ChangeSelectedProductPrice value),
    TResult changeSelectedProductDiscount(ChangeSelectedProductDiscount value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchChanged != null) {
      return searchChanged(this);
    }
    return orElse();
  }
}

abstract class SearchChanged implements ProductEvent {
  const factory SearchChanged(String text) = _$SearchChanged;

  String get text;
  @JsonKey(ignore: true)
  $SearchChangedCopyWith<SearchChanged> get copyWith;
}

/// @nodoc
abstract class $SetSelectedProductCopyWith<$Res> {
  factory $SetSelectedProductCopyWith(
          SetSelectedProduct value, $Res Function(SetSelectedProduct) then) =
      _$SetSelectedProductCopyWithImpl<$Res>;
  $Res call({ProductModel productModel});

  $ProductModelCopyWith<$Res> get productModel;
}

/// @nodoc
class _$SetSelectedProductCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements $SetSelectedProductCopyWith<$Res> {
  _$SetSelectedProductCopyWithImpl(
      SetSelectedProduct _value, $Res Function(SetSelectedProduct) _then)
      : super(_value, (v) => _then(v as SetSelectedProduct));

  @override
  SetSelectedProduct get _value => super._value as SetSelectedProduct;

  @override
  $Res call({
    Object productModel = freezed,
  }) {
    return _then(SetSelectedProduct(
      productModel == freezed
          ? _value.productModel
          : productModel as ProductModel,
    ));
  }

  @override
  $ProductModelCopyWith<$Res> get productModel {
    if (_value.productModel == null) {
      return null;
    }
    return $ProductModelCopyWith<$Res>(_value.productModel, (value) {
      return _then(_value.copyWith(productModel: value));
    });
  }
}

/// @nodoc
class _$SetSelectedProduct implements SetSelectedProduct {
  const _$SetSelectedProduct(this.productModel) : assert(productModel != null);

  @override
  final ProductModel productModel;

  @override
  String toString() {
    return 'ProductEvent.setSelectedProduct(productModel: $productModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetSelectedProduct &&
            (identical(other.productModel, productModel) ||
                const DeepCollectionEquality()
                    .equals(other.productModel, productModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productModel);

  @JsonKey(ignore: true)
  @override
  $SetSelectedProductCopyWith<SetSelectedProduct> get copyWith =>
      _$SetSelectedProductCopyWithImpl<SetSelectedProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllProduct(),
    @required TResult getProduct(String productId),
    @required TResult addProduct(),
    @required TResult updateProduct(),
    @required TResult deleteProduct(),
    @required TResult searchChanged(String text),
    @required TResult setSelectedProduct(ProductModel productModel),
    @required TResult clearSelectedProduct(),
    @required TResult changeSelectedProductName(String productName),
    @required TResult changeSelectedProductPrice(double productPrice),
    @required TResult changeSelectedProductDiscount(double productDiscount),
  }) {
    assert(getAllProduct != null);
    assert(getProduct != null);
    assert(addProduct != null);
    assert(updateProduct != null);
    assert(deleteProduct != null);
    assert(searchChanged != null);
    assert(setSelectedProduct != null);
    assert(clearSelectedProduct != null);
    assert(changeSelectedProductName != null);
    assert(changeSelectedProductPrice != null);
    assert(changeSelectedProductDiscount != null);
    return setSelectedProduct(productModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllProduct(),
    TResult getProduct(String productId),
    TResult addProduct(),
    TResult updateProduct(),
    TResult deleteProduct(),
    TResult searchChanged(String text),
    TResult setSelectedProduct(ProductModel productModel),
    TResult clearSelectedProduct(),
    TResult changeSelectedProductName(String productName),
    TResult changeSelectedProductPrice(double productPrice),
    TResult changeSelectedProductDiscount(double productDiscount),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setSelectedProduct != null) {
      return setSelectedProduct(productModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllProduct(GetAllProduct value),
    @required TResult getProduct(GetProduct value),
    @required TResult addProduct(AddProduct value),
    @required TResult updateProduct(UpdateProduct value),
    @required TResult deleteProduct(DeleteProduct value),
    @required TResult searchChanged(SearchChanged value),
    @required TResult setSelectedProduct(SetSelectedProduct value),
    @required TResult clearSelectedProduct(ClearSelectedProduct value),
    @required
        TResult changeSelectedProductName(ChangeSelectedProductName value),
    @required
        TResult changeSelectedProductPrice(ChangeSelectedProductPrice value),
    @required
        TResult changeSelectedProductDiscount(
            ChangeSelectedProductDiscount value),
  }) {
    assert(getAllProduct != null);
    assert(getProduct != null);
    assert(addProduct != null);
    assert(updateProduct != null);
    assert(deleteProduct != null);
    assert(searchChanged != null);
    assert(setSelectedProduct != null);
    assert(clearSelectedProduct != null);
    assert(changeSelectedProductName != null);
    assert(changeSelectedProductPrice != null);
    assert(changeSelectedProductDiscount != null);
    return setSelectedProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllProduct(GetAllProduct value),
    TResult getProduct(GetProduct value),
    TResult addProduct(AddProduct value),
    TResult updateProduct(UpdateProduct value),
    TResult deleteProduct(DeleteProduct value),
    TResult searchChanged(SearchChanged value),
    TResult setSelectedProduct(SetSelectedProduct value),
    TResult clearSelectedProduct(ClearSelectedProduct value),
    TResult changeSelectedProductName(ChangeSelectedProductName value),
    TResult changeSelectedProductPrice(ChangeSelectedProductPrice value),
    TResult changeSelectedProductDiscount(ChangeSelectedProductDiscount value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setSelectedProduct != null) {
      return setSelectedProduct(this);
    }
    return orElse();
  }
}

abstract class SetSelectedProduct implements ProductEvent {
  const factory SetSelectedProduct(ProductModel productModel) =
      _$SetSelectedProduct;

  ProductModel get productModel;
  @JsonKey(ignore: true)
  $SetSelectedProductCopyWith<SetSelectedProduct> get copyWith;
}

/// @nodoc
abstract class $ClearSelectedProductCopyWith<$Res> {
  factory $ClearSelectedProductCopyWith(ClearSelectedProduct value,
          $Res Function(ClearSelectedProduct) then) =
      _$ClearSelectedProductCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClearSelectedProductCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements $ClearSelectedProductCopyWith<$Res> {
  _$ClearSelectedProductCopyWithImpl(
      ClearSelectedProduct _value, $Res Function(ClearSelectedProduct) _then)
      : super(_value, (v) => _then(v as ClearSelectedProduct));

  @override
  ClearSelectedProduct get _value => super._value as ClearSelectedProduct;
}

/// @nodoc
class _$ClearSelectedProduct implements ClearSelectedProduct {
  const _$ClearSelectedProduct();

  @override
  String toString() {
    return 'ProductEvent.clearSelectedProduct()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ClearSelectedProduct);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllProduct(),
    @required TResult getProduct(String productId),
    @required TResult addProduct(),
    @required TResult updateProduct(),
    @required TResult deleteProduct(),
    @required TResult searchChanged(String text),
    @required TResult setSelectedProduct(ProductModel productModel),
    @required TResult clearSelectedProduct(),
    @required TResult changeSelectedProductName(String productName),
    @required TResult changeSelectedProductPrice(double productPrice),
    @required TResult changeSelectedProductDiscount(double productDiscount),
  }) {
    assert(getAllProduct != null);
    assert(getProduct != null);
    assert(addProduct != null);
    assert(updateProduct != null);
    assert(deleteProduct != null);
    assert(searchChanged != null);
    assert(setSelectedProduct != null);
    assert(clearSelectedProduct != null);
    assert(changeSelectedProductName != null);
    assert(changeSelectedProductPrice != null);
    assert(changeSelectedProductDiscount != null);
    return clearSelectedProduct();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllProduct(),
    TResult getProduct(String productId),
    TResult addProduct(),
    TResult updateProduct(),
    TResult deleteProduct(),
    TResult searchChanged(String text),
    TResult setSelectedProduct(ProductModel productModel),
    TResult clearSelectedProduct(),
    TResult changeSelectedProductName(String productName),
    TResult changeSelectedProductPrice(double productPrice),
    TResult changeSelectedProductDiscount(double productDiscount),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (clearSelectedProduct != null) {
      return clearSelectedProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllProduct(GetAllProduct value),
    @required TResult getProduct(GetProduct value),
    @required TResult addProduct(AddProduct value),
    @required TResult updateProduct(UpdateProduct value),
    @required TResult deleteProduct(DeleteProduct value),
    @required TResult searchChanged(SearchChanged value),
    @required TResult setSelectedProduct(SetSelectedProduct value),
    @required TResult clearSelectedProduct(ClearSelectedProduct value),
    @required
        TResult changeSelectedProductName(ChangeSelectedProductName value),
    @required
        TResult changeSelectedProductPrice(ChangeSelectedProductPrice value),
    @required
        TResult changeSelectedProductDiscount(
            ChangeSelectedProductDiscount value),
  }) {
    assert(getAllProduct != null);
    assert(getProduct != null);
    assert(addProduct != null);
    assert(updateProduct != null);
    assert(deleteProduct != null);
    assert(searchChanged != null);
    assert(setSelectedProduct != null);
    assert(clearSelectedProduct != null);
    assert(changeSelectedProductName != null);
    assert(changeSelectedProductPrice != null);
    assert(changeSelectedProductDiscount != null);
    return clearSelectedProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllProduct(GetAllProduct value),
    TResult getProduct(GetProduct value),
    TResult addProduct(AddProduct value),
    TResult updateProduct(UpdateProduct value),
    TResult deleteProduct(DeleteProduct value),
    TResult searchChanged(SearchChanged value),
    TResult setSelectedProduct(SetSelectedProduct value),
    TResult clearSelectedProduct(ClearSelectedProduct value),
    TResult changeSelectedProductName(ChangeSelectedProductName value),
    TResult changeSelectedProductPrice(ChangeSelectedProductPrice value),
    TResult changeSelectedProductDiscount(ChangeSelectedProductDiscount value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (clearSelectedProduct != null) {
      return clearSelectedProduct(this);
    }
    return orElse();
  }
}

abstract class ClearSelectedProduct implements ProductEvent {
  const factory ClearSelectedProduct() = _$ClearSelectedProduct;
}

/// @nodoc
abstract class $ChangeSelectedProductNameCopyWith<$Res> {
  factory $ChangeSelectedProductNameCopyWith(ChangeSelectedProductName value,
          $Res Function(ChangeSelectedProductName) then) =
      _$ChangeSelectedProductNameCopyWithImpl<$Res>;
  $Res call({String productName});
}

/// @nodoc
class _$ChangeSelectedProductNameCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements $ChangeSelectedProductNameCopyWith<$Res> {
  _$ChangeSelectedProductNameCopyWithImpl(ChangeSelectedProductName _value,
      $Res Function(ChangeSelectedProductName) _then)
      : super(_value, (v) => _then(v as ChangeSelectedProductName));

  @override
  ChangeSelectedProductName get _value =>
      super._value as ChangeSelectedProductName;

  @override
  $Res call({
    Object productName = freezed,
  }) {
    return _then(ChangeSelectedProductName(
      productName == freezed ? _value.productName : productName as String,
    ));
  }
}

/// @nodoc
class _$ChangeSelectedProductName implements ChangeSelectedProductName {
  const _$ChangeSelectedProductName(this.productName)
      : assert(productName != null);

  @override
  final String productName;

  @override
  String toString() {
    return 'ProductEvent.changeSelectedProductName(productName: $productName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeSelectedProductName &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality()
                    .equals(other.productName, productName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productName);

  @JsonKey(ignore: true)
  @override
  $ChangeSelectedProductNameCopyWith<ChangeSelectedProductName> get copyWith =>
      _$ChangeSelectedProductNameCopyWithImpl<ChangeSelectedProductName>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllProduct(),
    @required TResult getProduct(String productId),
    @required TResult addProduct(),
    @required TResult updateProduct(),
    @required TResult deleteProduct(),
    @required TResult searchChanged(String text),
    @required TResult setSelectedProduct(ProductModel productModel),
    @required TResult clearSelectedProduct(),
    @required TResult changeSelectedProductName(String productName),
    @required TResult changeSelectedProductPrice(double productPrice),
    @required TResult changeSelectedProductDiscount(double productDiscount),
  }) {
    assert(getAllProduct != null);
    assert(getProduct != null);
    assert(addProduct != null);
    assert(updateProduct != null);
    assert(deleteProduct != null);
    assert(searchChanged != null);
    assert(setSelectedProduct != null);
    assert(clearSelectedProduct != null);
    assert(changeSelectedProductName != null);
    assert(changeSelectedProductPrice != null);
    assert(changeSelectedProductDiscount != null);
    return changeSelectedProductName(productName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllProduct(),
    TResult getProduct(String productId),
    TResult addProduct(),
    TResult updateProduct(),
    TResult deleteProduct(),
    TResult searchChanged(String text),
    TResult setSelectedProduct(ProductModel productModel),
    TResult clearSelectedProduct(),
    TResult changeSelectedProductName(String productName),
    TResult changeSelectedProductPrice(double productPrice),
    TResult changeSelectedProductDiscount(double productDiscount),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeSelectedProductName != null) {
      return changeSelectedProductName(productName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllProduct(GetAllProduct value),
    @required TResult getProduct(GetProduct value),
    @required TResult addProduct(AddProduct value),
    @required TResult updateProduct(UpdateProduct value),
    @required TResult deleteProduct(DeleteProduct value),
    @required TResult searchChanged(SearchChanged value),
    @required TResult setSelectedProduct(SetSelectedProduct value),
    @required TResult clearSelectedProduct(ClearSelectedProduct value),
    @required
        TResult changeSelectedProductName(ChangeSelectedProductName value),
    @required
        TResult changeSelectedProductPrice(ChangeSelectedProductPrice value),
    @required
        TResult changeSelectedProductDiscount(
            ChangeSelectedProductDiscount value),
  }) {
    assert(getAllProduct != null);
    assert(getProduct != null);
    assert(addProduct != null);
    assert(updateProduct != null);
    assert(deleteProduct != null);
    assert(searchChanged != null);
    assert(setSelectedProduct != null);
    assert(clearSelectedProduct != null);
    assert(changeSelectedProductName != null);
    assert(changeSelectedProductPrice != null);
    assert(changeSelectedProductDiscount != null);
    return changeSelectedProductName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllProduct(GetAllProduct value),
    TResult getProduct(GetProduct value),
    TResult addProduct(AddProduct value),
    TResult updateProduct(UpdateProduct value),
    TResult deleteProduct(DeleteProduct value),
    TResult searchChanged(SearchChanged value),
    TResult setSelectedProduct(SetSelectedProduct value),
    TResult clearSelectedProduct(ClearSelectedProduct value),
    TResult changeSelectedProductName(ChangeSelectedProductName value),
    TResult changeSelectedProductPrice(ChangeSelectedProductPrice value),
    TResult changeSelectedProductDiscount(ChangeSelectedProductDiscount value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeSelectedProductName != null) {
      return changeSelectedProductName(this);
    }
    return orElse();
  }
}

abstract class ChangeSelectedProductName implements ProductEvent {
  const factory ChangeSelectedProductName(String productName) =
      _$ChangeSelectedProductName;

  String get productName;
  @JsonKey(ignore: true)
  $ChangeSelectedProductNameCopyWith<ChangeSelectedProductName> get copyWith;
}

/// @nodoc
abstract class $ChangeSelectedProductPriceCopyWith<$Res> {
  factory $ChangeSelectedProductPriceCopyWith(ChangeSelectedProductPrice value,
          $Res Function(ChangeSelectedProductPrice) then) =
      _$ChangeSelectedProductPriceCopyWithImpl<$Res>;
  $Res call({double productPrice});
}

/// @nodoc
class _$ChangeSelectedProductPriceCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements $ChangeSelectedProductPriceCopyWith<$Res> {
  _$ChangeSelectedProductPriceCopyWithImpl(ChangeSelectedProductPrice _value,
      $Res Function(ChangeSelectedProductPrice) _then)
      : super(_value, (v) => _then(v as ChangeSelectedProductPrice));

  @override
  ChangeSelectedProductPrice get _value =>
      super._value as ChangeSelectedProductPrice;

  @override
  $Res call({
    Object productPrice = freezed,
  }) {
    return _then(ChangeSelectedProductPrice(
      productPrice == freezed ? _value.productPrice : productPrice as double,
    ));
  }
}

/// @nodoc
class _$ChangeSelectedProductPrice implements ChangeSelectedProductPrice {
  const _$ChangeSelectedProductPrice(this.productPrice)
      : assert(productPrice != null);

  @override
  final double productPrice;

  @override
  String toString() {
    return 'ProductEvent.changeSelectedProductPrice(productPrice: $productPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeSelectedProductPrice &&
            (identical(other.productPrice, productPrice) ||
                const DeepCollectionEquality()
                    .equals(other.productPrice, productPrice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productPrice);

  @JsonKey(ignore: true)
  @override
  $ChangeSelectedProductPriceCopyWith<ChangeSelectedProductPrice>
      get copyWith =>
          _$ChangeSelectedProductPriceCopyWithImpl<ChangeSelectedProductPrice>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllProduct(),
    @required TResult getProduct(String productId),
    @required TResult addProduct(),
    @required TResult updateProduct(),
    @required TResult deleteProduct(),
    @required TResult searchChanged(String text),
    @required TResult setSelectedProduct(ProductModel productModel),
    @required TResult clearSelectedProduct(),
    @required TResult changeSelectedProductName(String productName),
    @required TResult changeSelectedProductPrice(double productPrice),
    @required TResult changeSelectedProductDiscount(double productDiscount),
  }) {
    assert(getAllProduct != null);
    assert(getProduct != null);
    assert(addProduct != null);
    assert(updateProduct != null);
    assert(deleteProduct != null);
    assert(searchChanged != null);
    assert(setSelectedProduct != null);
    assert(clearSelectedProduct != null);
    assert(changeSelectedProductName != null);
    assert(changeSelectedProductPrice != null);
    assert(changeSelectedProductDiscount != null);
    return changeSelectedProductPrice(productPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllProduct(),
    TResult getProduct(String productId),
    TResult addProduct(),
    TResult updateProduct(),
    TResult deleteProduct(),
    TResult searchChanged(String text),
    TResult setSelectedProduct(ProductModel productModel),
    TResult clearSelectedProduct(),
    TResult changeSelectedProductName(String productName),
    TResult changeSelectedProductPrice(double productPrice),
    TResult changeSelectedProductDiscount(double productDiscount),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeSelectedProductPrice != null) {
      return changeSelectedProductPrice(productPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllProduct(GetAllProduct value),
    @required TResult getProduct(GetProduct value),
    @required TResult addProduct(AddProduct value),
    @required TResult updateProduct(UpdateProduct value),
    @required TResult deleteProduct(DeleteProduct value),
    @required TResult searchChanged(SearchChanged value),
    @required TResult setSelectedProduct(SetSelectedProduct value),
    @required TResult clearSelectedProduct(ClearSelectedProduct value),
    @required
        TResult changeSelectedProductName(ChangeSelectedProductName value),
    @required
        TResult changeSelectedProductPrice(ChangeSelectedProductPrice value),
    @required
        TResult changeSelectedProductDiscount(
            ChangeSelectedProductDiscount value),
  }) {
    assert(getAllProduct != null);
    assert(getProduct != null);
    assert(addProduct != null);
    assert(updateProduct != null);
    assert(deleteProduct != null);
    assert(searchChanged != null);
    assert(setSelectedProduct != null);
    assert(clearSelectedProduct != null);
    assert(changeSelectedProductName != null);
    assert(changeSelectedProductPrice != null);
    assert(changeSelectedProductDiscount != null);
    return changeSelectedProductPrice(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllProduct(GetAllProduct value),
    TResult getProduct(GetProduct value),
    TResult addProduct(AddProduct value),
    TResult updateProduct(UpdateProduct value),
    TResult deleteProduct(DeleteProduct value),
    TResult searchChanged(SearchChanged value),
    TResult setSelectedProduct(SetSelectedProduct value),
    TResult clearSelectedProduct(ClearSelectedProduct value),
    TResult changeSelectedProductName(ChangeSelectedProductName value),
    TResult changeSelectedProductPrice(ChangeSelectedProductPrice value),
    TResult changeSelectedProductDiscount(ChangeSelectedProductDiscount value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeSelectedProductPrice != null) {
      return changeSelectedProductPrice(this);
    }
    return orElse();
  }
}

abstract class ChangeSelectedProductPrice implements ProductEvent {
  const factory ChangeSelectedProductPrice(double productPrice) =
      _$ChangeSelectedProductPrice;

  double get productPrice;
  @JsonKey(ignore: true)
  $ChangeSelectedProductPriceCopyWith<ChangeSelectedProductPrice> get copyWith;
}

/// @nodoc
abstract class $ChangeSelectedProductDiscountCopyWith<$Res> {
  factory $ChangeSelectedProductDiscountCopyWith(
          ChangeSelectedProductDiscount value,
          $Res Function(ChangeSelectedProductDiscount) then) =
      _$ChangeSelectedProductDiscountCopyWithImpl<$Res>;
  $Res call({double productDiscount});
}

/// @nodoc
class _$ChangeSelectedProductDiscountCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements $ChangeSelectedProductDiscountCopyWith<$Res> {
  _$ChangeSelectedProductDiscountCopyWithImpl(
      ChangeSelectedProductDiscount _value,
      $Res Function(ChangeSelectedProductDiscount) _then)
      : super(_value, (v) => _then(v as ChangeSelectedProductDiscount));

  @override
  ChangeSelectedProductDiscount get _value =>
      super._value as ChangeSelectedProductDiscount;

  @override
  $Res call({
    Object productDiscount = freezed,
  }) {
    return _then(ChangeSelectedProductDiscount(
      productDiscount == freezed
          ? _value.productDiscount
          : productDiscount as double,
    ));
  }
}

/// @nodoc
class _$ChangeSelectedProductDiscount implements ChangeSelectedProductDiscount {
  const _$ChangeSelectedProductDiscount(this.productDiscount)
      : assert(productDiscount != null);

  @override
  final double productDiscount;

  @override
  String toString() {
    return 'ProductEvent.changeSelectedProductDiscount(productDiscount: $productDiscount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeSelectedProductDiscount &&
            (identical(other.productDiscount, productDiscount) ||
                const DeepCollectionEquality()
                    .equals(other.productDiscount, productDiscount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productDiscount);

  @JsonKey(ignore: true)
  @override
  $ChangeSelectedProductDiscountCopyWith<ChangeSelectedProductDiscount>
      get copyWith => _$ChangeSelectedProductDiscountCopyWithImpl<
          ChangeSelectedProductDiscount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllProduct(),
    @required TResult getProduct(String productId),
    @required TResult addProduct(),
    @required TResult updateProduct(),
    @required TResult deleteProduct(),
    @required TResult searchChanged(String text),
    @required TResult setSelectedProduct(ProductModel productModel),
    @required TResult clearSelectedProduct(),
    @required TResult changeSelectedProductName(String productName),
    @required TResult changeSelectedProductPrice(double productPrice),
    @required TResult changeSelectedProductDiscount(double productDiscount),
  }) {
    assert(getAllProduct != null);
    assert(getProduct != null);
    assert(addProduct != null);
    assert(updateProduct != null);
    assert(deleteProduct != null);
    assert(searchChanged != null);
    assert(setSelectedProduct != null);
    assert(clearSelectedProduct != null);
    assert(changeSelectedProductName != null);
    assert(changeSelectedProductPrice != null);
    assert(changeSelectedProductDiscount != null);
    return changeSelectedProductDiscount(productDiscount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllProduct(),
    TResult getProduct(String productId),
    TResult addProduct(),
    TResult updateProduct(),
    TResult deleteProduct(),
    TResult searchChanged(String text),
    TResult setSelectedProduct(ProductModel productModel),
    TResult clearSelectedProduct(),
    TResult changeSelectedProductName(String productName),
    TResult changeSelectedProductPrice(double productPrice),
    TResult changeSelectedProductDiscount(double productDiscount),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeSelectedProductDiscount != null) {
      return changeSelectedProductDiscount(productDiscount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllProduct(GetAllProduct value),
    @required TResult getProduct(GetProduct value),
    @required TResult addProduct(AddProduct value),
    @required TResult updateProduct(UpdateProduct value),
    @required TResult deleteProduct(DeleteProduct value),
    @required TResult searchChanged(SearchChanged value),
    @required TResult setSelectedProduct(SetSelectedProduct value),
    @required TResult clearSelectedProduct(ClearSelectedProduct value),
    @required
        TResult changeSelectedProductName(ChangeSelectedProductName value),
    @required
        TResult changeSelectedProductPrice(ChangeSelectedProductPrice value),
    @required
        TResult changeSelectedProductDiscount(
            ChangeSelectedProductDiscount value),
  }) {
    assert(getAllProduct != null);
    assert(getProduct != null);
    assert(addProduct != null);
    assert(updateProduct != null);
    assert(deleteProduct != null);
    assert(searchChanged != null);
    assert(setSelectedProduct != null);
    assert(clearSelectedProduct != null);
    assert(changeSelectedProductName != null);
    assert(changeSelectedProductPrice != null);
    assert(changeSelectedProductDiscount != null);
    return changeSelectedProductDiscount(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllProduct(GetAllProduct value),
    TResult getProduct(GetProduct value),
    TResult addProduct(AddProduct value),
    TResult updateProduct(UpdateProduct value),
    TResult deleteProduct(DeleteProduct value),
    TResult searchChanged(SearchChanged value),
    TResult setSelectedProduct(SetSelectedProduct value),
    TResult clearSelectedProduct(ClearSelectedProduct value),
    TResult changeSelectedProductName(ChangeSelectedProductName value),
    TResult changeSelectedProductPrice(ChangeSelectedProductPrice value),
    TResult changeSelectedProductDiscount(ChangeSelectedProductDiscount value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeSelectedProductDiscount != null) {
      return changeSelectedProductDiscount(this);
    }
    return orElse();
  }
}

abstract class ChangeSelectedProductDiscount implements ProductEvent {
  const factory ChangeSelectedProductDiscount(double productDiscount) =
      _$ChangeSelectedProductDiscount;

  double get productDiscount;
  @JsonKey(ignore: true)
  $ChangeSelectedProductDiscountCopyWith<ChangeSelectedProductDiscount>
      get copyWith;
}

/// @nodoc
class _$ProductStateTearOff {
  const _$ProductStateTearOff();

// ignore: unused_element
  _ProductState call(
      {@required List<ProductModel> listProduct,
      @required List<ProductModel> listProductFiltered,
      @required ProductModel selectedProduct,
      @required bool isLoading,
      @required bool isLoaded,
      @required bool isError,
      @required String message}) {
    return _ProductState(
      listProduct: listProduct,
      listProductFiltered: listProductFiltered,
      selectedProduct: selectedProduct,
      isLoading: isLoading,
      isLoaded: isLoaded,
      isError: isError,
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProductState = _$ProductStateTearOff();

/// @nodoc
mixin _$ProductState {
  List<ProductModel> get listProduct;
  List<ProductModel> get listProductFiltered;
  ProductModel get selectedProduct;
  bool get isLoading;
  bool get isLoaded;
  bool get isError;
  String get message;

  @JsonKey(ignore: true)
  $ProductStateCopyWith<ProductState> get copyWith;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res>;
  $Res call(
      {List<ProductModel> listProduct,
      List<ProductModel> listProductFiltered,
      ProductModel selectedProduct,
      bool isLoading,
      bool isLoaded,
      bool isError,
      String message});

  $ProductModelCopyWith<$Res> get selectedProduct;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res> implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  final ProductState _value;
  // ignore: unused_field
  final $Res Function(ProductState) _then;

  @override
  $Res call({
    Object listProduct = freezed,
    Object listProductFiltered = freezed,
    Object selectedProduct = freezed,
    Object isLoading = freezed,
    Object isLoaded = freezed,
    Object isError = freezed,
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      listProduct: listProduct == freezed
          ? _value.listProduct
          : listProduct as List<ProductModel>,
      listProductFiltered: listProductFiltered == freezed
          ? _value.listProductFiltered
          : listProductFiltered as List<ProductModel>,
      selectedProduct: selectedProduct == freezed
          ? _value.selectedProduct
          : selectedProduct as ProductModel,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isLoaded: isLoaded == freezed ? _value.isLoaded : isLoaded as bool,
      isError: isError == freezed ? _value.isError : isError as bool,
      message: message == freezed ? _value.message : message as String,
    ));
  }

  @override
  $ProductModelCopyWith<$Res> get selectedProduct {
    if (_value.selectedProduct == null) {
      return null;
    }
    return $ProductModelCopyWith<$Res>(_value.selectedProduct, (value) {
      return _then(_value.copyWith(selectedProduct: value));
    });
  }
}

/// @nodoc
abstract class _$ProductStateCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$ProductStateCopyWith(
          _ProductState value, $Res Function(_ProductState) then) =
      __$ProductStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ProductModel> listProduct,
      List<ProductModel> listProductFiltered,
      ProductModel selectedProduct,
      bool isLoading,
      bool isLoaded,
      bool isError,
      String message});

  @override
  $ProductModelCopyWith<$Res> get selectedProduct;
}

/// @nodoc
class __$ProductStateCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
    implements _$ProductStateCopyWith<$Res> {
  __$ProductStateCopyWithImpl(
      _ProductState _value, $Res Function(_ProductState) _then)
      : super(_value, (v) => _then(v as _ProductState));

  @override
  _ProductState get _value => super._value as _ProductState;

  @override
  $Res call({
    Object listProduct = freezed,
    Object listProductFiltered = freezed,
    Object selectedProduct = freezed,
    Object isLoading = freezed,
    Object isLoaded = freezed,
    Object isError = freezed,
    Object message = freezed,
  }) {
    return _then(_ProductState(
      listProduct: listProduct == freezed
          ? _value.listProduct
          : listProduct as List<ProductModel>,
      listProductFiltered: listProductFiltered == freezed
          ? _value.listProductFiltered
          : listProductFiltered as List<ProductModel>,
      selectedProduct: selectedProduct == freezed
          ? _value.selectedProduct
          : selectedProduct as ProductModel,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isLoaded: isLoaded == freezed ? _value.isLoaded : isLoaded as bool,
      isError: isError == freezed ? _value.isError : isError as bool,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_ProductState implements _ProductState {
  const _$_ProductState(
      {@required this.listProduct,
      @required this.listProductFiltered,
      @required this.selectedProduct,
      @required this.isLoading,
      @required this.isLoaded,
      @required this.isError,
      @required this.message})
      : assert(listProduct != null),
        assert(listProductFiltered != null),
        assert(selectedProduct != null),
        assert(isLoading != null),
        assert(isLoaded != null),
        assert(isError != null),
        assert(message != null);

  @override
  final List<ProductModel> listProduct;
  @override
  final List<ProductModel> listProductFiltered;
  @override
  final ProductModel selectedProduct;
  @override
  final bool isLoading;
  @override
  final bool isLoaded;
  @override
  final bool isError;
  @override
  final String message;

  @override
  String toString() {
    return 'ProductState(listProduct: $listProduct, listProductFiltered: $listProductFiltered, selectedProduct: $selectedProduct, isLoading: $isLoading, isLoaded: $isLoaded, isError: $isError, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductState &&
            (identical(other.listProduct, listProduct) ||
                const DeepCollectionEquality()
                    .equals(other.listProduct, listProduct)) &&
            (identical(other.listProductFiltered, listProductFiltered) ||
                const DeepCollectionEquality()
                    .equals(other.listProductFiltered, listProductFiltered)) &&
            (identical(other.selectedProduct, selectedProduct) ||
                const DeepCollectionEquality()
                    .equals(other.selectedProduct, selectedProduct)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isLoaded, isLoaded) ||
                const DeepCollectionEquality()
                    .equals(other.isLoaded, isLoaded)) &&
            (identical(other.isError, isError) ||
                const DeepCollectionEquality()
                    .equals(other.isError, isError)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(listProduct) ^
      const DeepCollectionEquality().hash(listProductFiltered) ^
      const DeepCollectionEquality().hash(selectedProduct) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isLoaded) ^
      const DeepCollectionEquality().hash(isError) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ProductStateCopyWith<_ProductState> get copyWith =>
      __$ProductStateCopyWithImpl<_ProductState>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState(
      {@required List<ProductModel> listProduct,
      @required List<ProductModel> listProductFiltered,
      @required ProductModel selectedProduct,
      @required bool isLoading,
      @required bool isLoaded,
      @required bool isError,
      @required String message}) = _$_ProductState;

  @override
  List<ProductModel> get listProduct;
  @override
  List<ProductModel> get listProductFiltered;
  @override
  ProductModel get selectedProduct;
  @override
  bool get isLoading;
  @override
  bool get isLoaded;
  @override
  bool get isError;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$ProductStateCopyWith<_ProductState> get copyWith;
}
