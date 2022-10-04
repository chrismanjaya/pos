// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'expense_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ExpenseModelTearOff {
  const _$ExpenseModelTearOff();

// ignore: unused_element
  _Expense call(
      {String id, String itemName, DateTime dateTime, double itemCost}) {
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
const $ExpenseModel = _$ExpenseModelTearOff();

/// @nodoc
mixin _$ExpenseModel {
  String get id;
  String get itemName;
  DateTime get dateTime;
  double get itemCost;

  @JsonKey(ignore: true)
  $ExpenseModelCopyWith<ExpenseModel> get copyWith;
}

/// @nodoc
abstract class $ExpenseModelCopyWith<$Res> {
  factory $ExpenseModelCopyWith(
          ExpenseModel value, $Res Function(ExpenseModel) then) =
      _$ExpenseModelCopyWithImpl<$Res>;
  $Res call({String id, String itemName, DateTime dateTime, double itemCost});
}

/// @nodoc
class _$ExpenseModelCopyWithImpl<$Res> implements $ExpenseModelCopyWith<$Res> {
  _$ExpenseModelCopyWithImpl(this._value, this._then);

  final ExpenseModel _value;
  // ignore: unused_field
  final $Res Function(ExpenseModel) _then;

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
      dateTime: dateTime == freezed ? _value.dateTime : dateTime as DateTime,
      itemCost: itemCost == freezed ? _value.itemCost : itemCost as double,
    ));
  }
}

/// @nodoc
abstract class _$ExpenseCopyWith<$Res> implements $ExpenseModelCopyWith<$Res> {
  factory _$ExpenseCopyWith(_Expense value, $Res Function(_Expense) then) =
      __$ExpenseCopyWithImpl<$Res>;
  @override
  $Res call({String id, String itemName, DateTime dateTime, double itemCost});
}

/// @nodoc
class __$ExpenseCopyWithImpl<$Res> extends _$ExpenseModelCopyWithImpl<$Res>
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
      dateTime: dateTime == freezed ? _value.dateTime : dateTime as DateTime,
      itemCost: itemCost == freezed ? _value.itemCost : itemCost as double,
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
  final DateTime dateTime;
  @override
  final double itemCost;

  @override
  String toString() {
    return 'ExpenseModel(id: $id, itemName: $itemName, dateTime: $dateTime, itemCost: $itemCost)';
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

abstract class _Expense implements ExpenseModel {
  factory _Expense(
      {String id,
      String itemName,
      DateTime dateTime,
      double itemCost}) = _$_Expense;

  @override
  String get id;
  @override
  String get itemName;
  @override
  DateTime get dateTime;
  @override
  double get itemCost;
  @override
  @JsonKey(ignore: true)
  _$ExpenseCopyWith<_Expense> get copyWith;
}
