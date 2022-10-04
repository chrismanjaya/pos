// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'expense.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ExpenseTearOff {
  const _$ExpenseTearOff();

// ignore: unused_element
  _Expense call(
      {String id, String itemName, Timestamp dateTime, int itemCost}) {
    return _Expense(
      id: id,
      itemName: itemName,
      dateTime: dateTime,
      itemCost: itemCost,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Expense = _$ExpenseTearOff();

/// @nodoc
mixin _$Expense {
  String get id;
  String get itemName;
  Timestamp get dateTime;
  int get itemCost;

  @JsonKey(ignore: true)
  $ExpenseCopyWith<Expense> get copyWith;
}

/// @nodoc
abstract class $ExpenseCopyWith<$Res> {
  factory $ExpenseCopyWith(Expense value, $Res Function(Expense) then) =
      _$ExpenseCopyWithImpl<$Res>;
  $Res call({String id, String itemName, Timestamp dateTime, int itemCost});
}

/// @nodoc
class _$ExpenseCopyWithImpl<$Res> implements $ExpenseCopyWith<$Res> {
  _$ExpenseCopyWithImpl(this._value, this._then);

  final Expense _value;
  // ignore: unused_field
  final $Res Function(Expense) _then;

  @override
  $Res call({
    Object id = freezed,
    Object itemName = freezed,
    Object dateTime = freezed,
    Object itemCost = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      itemName: itemName == freezed ? _value.itemName : itemName as String,
      dateTime: dateTime == freezed ? _value.dateTime : dateTime as Timestamp,
      itemCost: itemCost == freezed ? _value.itemCost : itemCost as int,
    ));
  }
}

/// @nodoc
abstract class _$ExpenseCopyWith<$Res> implements $ExpenseCopyWith<$Res> {
  factory _$ExpenseCopyWith(_Expense value, $Res Function(_Expense) then) =
      __$ExpenseCopyWithImpl<$Res>;
  @override
  $Res call({String id, String itemName, Timestamp dateTime, int itemCost});
}

/// @nodoc
class __$ExpenseCopyWithImpl<$Res> extends _$ExpenseCopyWithImpl<$Res>
    implements _$ExpenseCopyWith<$Res> {
  __$ExpenseCopyWithImpl(_Expense _value, $Res Function(_Expense) _then)
      : super(_value, (v) => _then(v as _Expense));

  @override
  _Expense get _value => super._value as _Expense;

  @override
  $Res call({
    Object id = freezed,
    Object itemName = freezed,
    Object dateTime = freezed,
    Object itemCost = freezed,
  }) {
    return _then(_Expense(
      id: id == freezed ? _value.id : id as String,
      itemName: itemName == freezed ? _value.itemName : itemName as String,
      dateTime: dateTime == freezed ? _value.dateTime : dateTime as Timestamp,
      itemCost: itemCost == freezed ? _value.itemCost : itemCost as int,
    ));
  }
}

/// @nodoc
class _$_Expense implements _Expense {
  _$_Expense({this.id, this.itemName, this.dateTime, this.itemCost});

  @override
  final String id;
  @override
  final String itemName;
  @override
  final Timestamp dateTime;
  @override
  final int itemCost;

  @override
  String toString() {
    return 'Expense(id: $id, itemName: $itemName, dateTime: $dateTime, itemCost: $itemCost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Expense &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.itemName, itemName) ||
                const DeepCollectionEquality()
                    .equals(other.itemName, itemName)) &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)) &&
            (identical(other.itemCost, itemCost) ||
                const DeepCollectionEquality()
                    .equals(other.itemCost, itemCost)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(itemName) ^
      const DeepCollectionEquality().hash(dateTime) ^
      const DeepCollectionEquality().hash(itemCost);

  @JsonKey(ignore: true)
  @override
  _$ExpenseCopyWith<_Expense> get copyWith =>
      __$ExpenseCopyWithImpl<_Expense>(this, _$identity);
}

abstract class _Expense implements Expense {
  factory _Expense(
      {String id,
      String itemName,
      Timestamp dateTime,
      int itemCost}) = _$_Expense;

  @override
  String get id;
  @override
  String get itemName;
  @override
  Timestamp get dateTime;
  @override
  int get itemCost;
  @override
  @JsonKey(ignore: true)
  _$ExpenseCopyWith<_Expense> get copyWith;
}
