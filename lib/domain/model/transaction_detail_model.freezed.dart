// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'transaction_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TransactionDetailModelTearOff {
  const _$TransactionDetailModelTearOff();

// ignore: unused_element
  _TransactionDetailModel call(
      {String id,
      double itemDiscount,
      String itemName,
      int itemNo,
      double itemPrice,
      int quantity,
      String transactionId}) {
    return _TransactionDetailModel(
      id: id,
      itemDiscount: itemDiscount,
      itemName: itemName,
      itemNo: itemNo,
      itemPrice: itemPrice,
      quantity: quantity,
      transactionId: transactionId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TransactionDetailModel = _$TransactionDetailModelTearOff();

/// @nodoc
mixin _$TransactionDetailModel {
  String get id;
  double get itemDiscount;
  String get itemName;
  int get itemNo;
  double get itemPrice;
  int get quantity;
  String get transactionId;

  @JsonKey(ignore: true)
  $TransactionDetailModelCopyWith<TransactionDetailModel> get copyWith;
}

/// @nodoc
abstract class $TransactionDetailModelCopyWith<$Res> {
  factory $TransactionDetailModelCopyWith(TransactionDetailModel value,
          $Res Function(TransactionDetailModel) then) =
      _$TransactionDetailModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      double itemDiscount,
      String itemName,
      int itemNo,
      double itemPrice,
      int quantity,
      String transactionId});
}

/// @nodoc
class _$TransactionDetailModelCopyWithImpl<$Res>
    implements $TransactionDetailModelCopyWith<$Res> {
  _$TransactionDetailModelCopyWithImpl(this._value, this._then);

  final TransactionDetailModel _value;
  // ignore: unused_field
  final $Res Function(TransactionDetailModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object itemDiscount = freezed,
    Object itemName = freezed,
    Object itemNo = freezed,
    Object itemPrice = freezed,
    Object quantity = freezed,
    Object transactionId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      itemDiscount: itemDiscount == freezed
          ? _value.itemDiscount
          : itemDiscount as double,
      itemName: itemName == freezed ? _value.itemName : itemName as String,
      itemNo: itemNo == freezed ? _value.itemNo : itemNo as int,
      itemPrice: itemPrice == freezed ? _value.itemPrice : itemPrice as double,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId as String,
    ));
  }
}

/// @nodoc
abstract class _$TransactionDetailModelCopyWith<$Res>
    implements $TransactionDetailModelCopyWith<$Res> {
  factory _$TransactionDetailModelCopyWith(_TransactionDetailModel value,
          $Res Function(_TransactionDetailModel) then) =
      __$TransactionDetailModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      double itemDiscount,
      String itemName,
      int itemNo,
      double itemPrice,
      int quantity,
      String transactionId});
}

/// @nodoc
class __$TransactionDetailModelCopyWithImpl<$Res>
    extends _$TransactionDetailModelCopyWithImpl<$Res>
    implements _$TransactionDetailModelCopyWith<$Res> {
  __$TransactionDetailModelCopyWithImpl(_TransactionDetailModel _value,
      $Res Function(_TransactionDetailModel) _then)
      : super(_value, (v) => _then(v as _TransactionDetailModel));

  @override
  _TransactionDetailModel get _value => super._value as _TransactionDetailModel;

  @override
  $Res call({
    Object id = freezed,
    Object itemDiscount = freezed,
    Object itemName = freezed,
    Object itemNo = freezed,
    Object itemPrice = freezed,
    Object quantity = freezed,
    Object transactionId = freezed,
  }) {
    return _then(_TransactionDetailModel(
      id: id == freezed ? _value.id : id as String,
      itemDiscount: itemDiscount == freezed
          ? _value.itemDiscount
          : itemDiscount as double,
      itemName: itemName == freezed ? _value.itemName : itemName as String,
      itemNo: itemNo == freezed ? _value.itemNo : itemNo as int,
      itemPrice: itemPrice == freezed ? _value.itemPrice : itemPrice as double,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId as String,
    ));
  }
}

/// @nodoc
class _$_TransactionDetailModel implements _TransactionDetailModel {
  _$_TransactionDetailModel(
      {this.id,
      this.itemDiscount,
      this.itemName,
      this.itemNo,
      this.itemPrice,
      this.quantity,
      this.transactionId});

  @override
  final String id;
  @override
  final double itemDiscount;
  @override
  final String itemName;
  @override
  final int itemNo;
  @override
  final double itemPrice;
  @override
  final int quantity;
  @override
  final String transactionId;

  @override
  String toString() {
    return 'TransactionDetailModel(id: $id, itemDiscount: $itemDiscount, itemName: $itemName, itemNo: $itemNo, itemPrice: $itemPrice, quantity: $quantity, transactionId: $transactionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionDetailModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.itemDiscount, itemDiscount) ||
                const DeepCollectionEquality()
                    .equals(other.itemDiscount, itemDiscount)) &&
            (identical(other.itemName, itemName) ||
                const DeepCollectionEquality()
                    .equals(other.itemName, itemName)) &&
            (identical(other.itemNo, itemNo) ||
                const DeepCollectionEquality().equals(other.itemNo, itemNo)) &&
            (identical(other.itemPrice, itemPrice) ||
                const DeepCollectionEquality()
                    .equals(other.itemPrice, itemPrice)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality()
                    .equals(other.transactionId, transactionId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(itemDiscount) ^
      const DeepCollectionEquality().hash(itemName) ^
      const DeepCollectionEquality().hash(itemNo) ^
      const DeepCollectionEquality().hash(itemPrice) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(transactionId);

  @JsonKey(ignore: true)
  @override
  _$TransactionDetailModelCopyWith<_TransactionDetailModel> get copyWith =>
      __$TransactionDetailModelCopyWithImpl<_TransactionDetailModel>(
          this, _$identity);
}

abstract class _TransactionDetailModel implements TransactionDetailModel {
  factory _TransactionDetailModel(
      {String id,
      double itemDiscount,
      String itemName,
      int itemNo,
      double itemPrice,
      int quantity,
      String transactionId}) = _$_TransactionDetailModel;

  @override
  String get id;
  @override
  double get itemDiscount;
  @override
  String get itemName;
  @override
  int get itemNo;
  @override
  double get itemPrice;
  @override
  int get quantity;
  @override
  String get transactionId;
  @override
  @JsonKey(ignore: true)
  _$TransactionDetailModelCopyWith<_TransactionDetailModel> get copyWith;
}
