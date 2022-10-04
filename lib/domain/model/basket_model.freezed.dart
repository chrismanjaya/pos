// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'basket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BasketModelTearOff {
  const _$BasketModelTearOff();

// ignore: unused_element
  _BasketModel call({ProductModel product, int quantity, double total}) {
    return _BasketModel(
      product: product,
      quantity: quantity,
      total: total,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BasketModel = _$BasketModelTearOff();

/// @nodoc
mixin _$BasketModel {
  ProductModel get product;
  int get quantity;
  double get total;

  @JsonKey(ignore: true)
  $BasketModelCopyWith<BasketModel> get copyWith;
}

/// @nodoc
abstract class $BasketModelCopyWith<$Res> {
  factory $BasketModelCopyWith(
          BasketModel value, $Res Function(BasketModel) then) =
      _$BasketModelCopyWithImpl<$Res>;
  $Res call({ProductModel product, int quantity, double total});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class _$BasketModelCopyWithImpl<$Res> implements $BasketModelCopyWith<$Res> {
  _$BasketModelCopyWithImpl(this._value, this._then);

  final BasketModel _value;
  // ignore: unused_field
  final $Res Function(BasketModel) _then;

  @override
  $Res call({
    Object product = freezed,
    Object quantity = freezed,
    Object total = freezed,
  }) {
    return _then(_value.copyWith(
      product: product == freezed ? _value.product : product as ProductModel,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      total: total == freezed ? _value.total : total as double,
    ));
  }

  @override
  $ProductModelCopyWith<$Res> get product {
    if (_value.product == null) {
      return null;
    }
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc
abstract class _$BasketModelCopyWith<$Res>
    implements $BasketModelCopyWith<$Res> {
  factory _$BasketModelCopyWith(
          _BasketModel value, $Res Function(_BasketModel) then) =
      __$BasketModelCopyWithImpl<$Res>;
  @override
  $Res call({ProductModel product, int quantity, double total});

  @override
  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$BasketModelCopyWithImpl<$Res> extends _$BasketModelCopyWithImpl<$Res>
    implements _$BasketModelCopyWith<$Res> {
  __$BasketModelCopyWithImpl(
      _BasketModel _value, $Res Function(_BasketModel) _then)
      : super(_value, (v) => _then(v as _BasketModel));

  @override
  _BasketModel get _value => super._value as _BasketModel;

  @override
  $Res call({
    Object product = freezed,
    Object quantity = freezed,
    Object total = freezed,
  }) {
    return _then(_BasketModel(
      product: product == freezed ? _value.product : product as ProductModel,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      total: total == freezed ? _value.total : total as double,
    ));
  }
}

/// @nodoc
class _$_BasketModel implements _BasketModel {
  _$_BasketModel({this.product, this.quantity, this.total});

  @override
  final ProductModel product;
  @override
  final int quantity;
  @override
  final double total;

  @override
  String toString() {
    return 'BasketModel(product: $product, quantity: $quantity, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BasketModel &&
            (identical(other.product, product) ||
                const DeepCollectionEquality()
                    .equals(other.product, product)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(product) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(total);

  @JsonKey(ignore: true)
  @override
  _$BasketModelCopyWith<_BasketModel> get copyWith =>
      __$BasketModelCopyWithImpl<_BasketModel>(this, _$identity);
}

abstract class _BasketModel implements BasketModel {
  factory _BasketModel({ProductModel product, int quantity, double total}) =
      _$_BasketModel;

  @override
  ProductModel get product;
  @override
  int get quantity;
  @override
  double get total;
  @override
  @JsonKey(ignore: true)
  _$BasketModelCopyWith<_BasketModel> get copyWith;
}
