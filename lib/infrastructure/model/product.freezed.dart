// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProductTearOff {
  const _$ProductTearOff();

// ignore: unused_element
  _Product call(
      {String id, String productName, int productPrice, int productDiscount}) {
    return _Product(
      id: id,
      productName: productName,
      productPrice: productPrice,
      productDiscount: productDiscount,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Product = _$ProductTearOff();

/// @nodoc
mixin _$Product {
  String get id;
  String get productName;
  int get productPrice;
  int get productDiscount;

  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {String id, String productName, int productPrice, int productDiscount});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object id = freezed,
    Object productName = freezed,
    Object productPrice = freezed,
    Object productDiscount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      productName:
          productName == freezed ? _value.productName : productName as String,
      productPrice:
          productPrice == freezed ? _value.productPrice : productPrice as int,
      productDiscount: productDiscount == freezed
          ? _value.productDiscount
          : productDiscount as int,
    ));
  }
}

/// @nodoc
abstract class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) then) =
      __$ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, String productName, int productPrice, int productDiscount});
}

/// @nodoc
class __$ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(_Product _value, $Res Function(_Product) _then)
      : super(_value, (v) => _then(v as _Product));

  @override
  _Product get _value => super._value as _Product;

  @override
  $Res call({
    Object id = freezed,
    Object productName = freezed,
    Object productPrice = freezed,
    Object productDiscount = freezed,
  }) {
    return _then(_Product(
      id: id == freezed ? _value.id : id as String,
      productName:
          productName == freezed ? _value.productName : productName as String,
      productPrice:
          productPrice == freezed ? _value.productPrice : productPrice as int,
      productDiscount: productDiscount == freezed
          ? _value.productDiscount
          : productDiscount as int,
    ));
  }
}

/// @nodoc
class _$_Product implements _Product {
  _$_Product(
      {this.id, this.productName, this.productPrice, this.productDiscount});

  @override
  final String id;
  @override
  final String productName;
  @override
  final int productPrice;
  @override
  final int productDiscount;

  @override
  String toString() {
    return 'Product(id: $id, productName: $productName, productPrice: $productPrice, productDiscount: $productDiscount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Product &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality()
                    .equals(other.productName, productName)) &&
            (identical(other.productPrice, productPrice) ||
                const DeepCollectionEquality()
                    .equals(other.productPrice, productPrice)) &&
            (identical(other.productDiscount, productDiscount) ||
                const DeepCollectionEquality()
                    .equals(other.productDiscount, productDiscount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(productPrice) ^
      const DeepCollectionEquality().hash(productDiscount);

  @JsonKey(ignore: true)
  @override
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);
}

abstract class _Product implements Product {
  factory _Product(
      {String id,
      String productName,
      int productPrice,
      int productDiscount}) = _$_Product;

  @override
  String get id;
  @override
  String get productName;
  @override
  int get productPrice;
  @override
  int get productDiscount;
  @override
  @JsonKey(ignore: true)
  _$ProductCopyWith<_Product> get copyWith;
}
