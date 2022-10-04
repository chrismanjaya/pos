// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'transaction_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TransactionDetailTearOff {
  const _$TransactionDetailTearOff();

// ignore: unused_element
  _TransactionDetail call(
      {String id,
      int itemDiscount,
      String itemName,
      int itemNo,
      int itemPrice,
      int quantity,
      String transactionId}) {
    return _TransactionDetail(
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
const $TransactionDetail = _$TransactionDetailTearOff();

/// @nodoc
mixin _$TransactionDetail {
  String get id;
  int get itemDiscount;
  String get itemName;
  int get itemNo;
  int get itemPrice;
  int get quantity;
  String get transactionId;

  @JsonKey(ignore: true)
  $TransactionDetailCopyWith<TransactionDetail> get copyWith;
}

/// @nodoc
abstract class $TransactionDetailCopyWith<$Res> {
  factory $TransactionDetailCopyWith(
          TransactionDetail value, $Res Function(TransactionDetail) then) =
      _$TransactionDetailCopyWithImpl<$Res>;
  $Res call(
      {String id,
      int itemDiscount,
      String itemName,
      int itemNo,
      int itemPrice,
      int quantity,
      String transactionId});
}

/// @nodoc
class _$TransactionDetailCopyWithImpl<$Res>
    implements $TransactionDetailCopyWith<$Res> {
  _$TransactionDetailCopyWithImpl(this._value, this._then);

  final TransactionDetail _value;
  // ignore: unused_field
  final $Res Function(TransactionDetail) _then;

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
      itemDiscount:
          itemDiscount == freezed ? _value.itemDiscount : itemDiscount as int,
      itemName: itemName == freezed ? _value.itemName : itemName as String,
      itemNo: itemNo == freezed ? _value.itemNo : itemNo as int,
      itemPrice: itemPrice == freezed ? _value.itemPrice : itemPrice as int,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId as String,
    ));
  }
}

/// @nodoc
abstract class _$TransactionDetailCopyWith<$Res>
    implements $TransactionDetailCopyWith<$Res> {
  factory _$TransactionDetailCopyWith(
          _TransactionDetail value, $Res Function(_TransactionDetail) then) =
      __$TransactionDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      int itemDiscount,
      String itemName,
      int itemNo,
      int itemPrice,
      int quantity,
      String transactionId});
}

/// @nodoc
class __$TransactionDetailCopyWithImpl<$Res>
    extends _$TransactionDetailCopyWithImpl<$Res>
    implements _$TransactionDetailCopyWith<$Res> {
  __$TransactionDetailCopyWithImpl(
      _TransactionDetail _value, $Res Function(_TransactionDetail) _then)
      : super(_value, (v) => _then(v as _TransactionDetail));

  @override
  _TransactionDetail get _value => super._value as _TransactionDetail;

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
    return _then(_TransactionDetail(
      id: id == freezed ? _value.id : id as String,
      itemDiscount:
          itemDiscount == freezed ? _value.itemDiscount : itemDiscount as int,
      itemName: itemName == freezed ? _value.itemName : itemName as String,
      itemNo: itemNo == freezed ? _value.itemNo : itemNo as int,
      itemPrice: itemPrice == freezed ? _value.itemPrice : itemPrice as int,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId as String,
    ));
  }
}

/// @nodoc
class _$_TransactionDetail implements _TransactionDetail {
  _$_TransactionDetail(
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
  final int itemDiscount;
  @override
  final String itemName;
  @override
  final int itemNo;
  @override
  final int itemPrice;
  @override
  final int quantity;
  @override
  final String transactionId;

  @override
  String toString() {
    return 'TransactionDetail(id: $id, itemDiscount: $itemDiscount, itemName: $itemName, itemNo: $itemNo, itemPrice: $itemPrice, quantity: $quantity, transactionId: $transactionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionDetail &&
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
  _$TransactionDetailCopyWith<_TransactionDetail> get copyWith =>
      __$TransactionDetailCopyWithImpl<_TransactionDetail>(this, _$identity);
}

abstract class _TransactionDetail implements TransactionDetail {
  factory _TransactionDetail(
      {String id,
      int itemDiscount,
      String itemName,
      int itemNo,
      int itemPrice,
      int quantity,
      String transactionId}) = _$_TransactionDetail;

  @override
  String get id;
  @override
  int get itemDiscount;
  @override
  String get itemName;
  @override
  int get itemNo;
  @override
  int get itemPrice;
  @override
  int get quantity;
  @override
  String get transactionId;
  @override
  @JsonKey(ignore: true)
  _$TransactionDetailCopyWith<_TransactionDetail> get copyWith;
}
