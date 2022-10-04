// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProductModelTearOff {
  const _$ProductModelTearOff();

// ignore: unused_element
  _Product call({String id, String name, double price, double discount}) {
    return _Product(
      id: id,
      name: name,
      price: price,
      discount: discount,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProductModel = _$ProductModelTearOff();

/// @nodoc
mixin _$ProductModel {
  String get id;
  String get name;
  double get price;
  double get discount;

  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res>;
  $Res call({String id, String name, double price, double discount});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res> implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  final ProductModel _value;
  // ignore: unused_field
  final $Res Function(ProductModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object price = freezed,
    Object discount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      price: price == freezed ? _value.price : price as double,
      discount: discount == freezed ? _value.discount : discount as double,
    ));
  }
}

/// @nodoc
abstract class _$ProductCopyWith<$Res> implements $ProductModelCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) then) =
      __$ProductCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, double price, double discount});
}

/// @nodoc
class __$ProductCopyWithImpl<$Res> extends _$ProductModelCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(_Product _value, $Res Function(_Product) _then)
      : super(_value, (v) => _then(v as _Product));

  @override
  _Product get _value => super._value as _Product;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object price = freezed,
    Object discount = freezed,
  }) {
    return _then(_Product(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      price: price == freezed ? _value.price : price as double,
      discount: discount == freezed ? _value.discount : discount as double,
    ));
  }
}

/// @nodoc
class _$_Product implements _Product {
  _$_Product({this.id, this.name, this.price, this.discount});

  @override
  final String id;
  @override
  final String name;
  @override
  final double price;
  @override
  final double discount;

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, price: $price, discount: $discount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Product &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(discount);

  @JsonKey(ignore: true)
  @override
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);
}

abstract class _Product implements ProductModel {
  factory _Product({String id, String name, double price, double discount}) =
      _$_Product;

  @override
  String get id;
  @override
  String get name;
  @override
  double get price;
  @override
  double get discount;
  @override
  @JsonKey(ignore: true)
  _$ProductCopyWith<_Product> get copyWith;
}
