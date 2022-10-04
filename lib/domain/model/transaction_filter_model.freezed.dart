// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'transaction_filter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TransactionFilterModelTearOff {
  const _$TransactionFilterModelTearOff();

// ignore: unused_element
  _ActivityFilterModel call(
      {List<BranchModel> listBranchModel,
      List<String> listStatus,
      DateTime dateFrom,
      DateTime dateTo}) {
    return _ActivityFilterModel(
      listBranchModel: listBranchModel,
      listStatus: listStatus,
      dateFrom: dateFrom,
      dateTo: dateTo,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TransactionFilterModel = _$TransactionFilterModelTearOff();

/// @nodoc
mixin _$TransactionFilterModel {
  List<BranchModel> get listBranchModel;
  List<String> get listStatus;
  DateTime get dateFrom;
  DateTime get dateTo;

  @JsonKey(ignore: true)
  $TransactionFilterModelCopyWith<TransactionFilterModel> get copyWith;
}

/// @nodoc
abstract class $TransactionFilterModelCopyWith<$Res> {
  factory $TransactionFilterModelCopyWith(TransactionFilterModel value,
          $Res Function(TransactionFilterModel) then) =
      _$TransactionFilterModelCopyWithImpl<$Res>;
  $Res call(
      {List<BranchModel> listBranchModel,
      List<String> listStatus,
      DateTime dateFrom,
      DateTime dateTo});
}

/// @nodoc
class _$TransactionFilterModelCopyWithImpl<$Res>
    implements $TransactionFilterModelCopyWith<$Res> {
  _$TransactionFilterModelCopyWithImpl(this._value, this._then);

  final TransactionFilterModel _value;
  // ignore: unused_field
  final $Res Function(TransactionFilterModel) _then;

  @override
  $Res call({
    Object listBranchModel = freezed,
    Object listStatus = freezed,
    Object dateFrom = freezed,
    Object dateTo = freezed,
  }) {
    return _then(_value.copyWith(
      listBranchModel: listBranchModel == freezed
          ? _value.listBranchModel
          : listBranchModel as List<BranchModel>,
      listStatus: listStatus == freezed
          ? _value.listStatus
          : listStatus as List<String>,
      dateFrom: dateFrom == freezed ? _value.dateFrom : dateFrom as DateTime,
      dateTo: dateTo == freezed ? _value.dateTo : dateTo as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$ActivityFilterModelCopyWith<$Res>
    implements $TransactionFilterModelCopyWith<$Res> {
  factory _$ActivityFilterModelCopyWith(_ActivityFilterModel value,
          $Res Function(_ActivityFilterModel) then) =
      __$ActivityFilterModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<BranchModel> listBranchModel,
      List<String> listStatus,
      DateTime dateFrom,
      DateTime dateTo});
}

/// @nodoc
class __$ActivityFilterModelCopyWithImpl<$Res>
    extends _$TransactionFilterModelCopyWithImpl<$Res>
    implements _$ActivityFilterModelCopyWith<$Res> {
  __$ActivityFilterModelCopyWithImpl(
      _ActivityFilterModel _value, $Res Function(_ActivityFilterModel) _then)
      : super(_value, (v) => _then(v as _ActivityFilterModel));

  @override
  _ActivityFilterModel get _value => super._value as _ActivityFilterModel;

  @override
  $Res call({
    Object listBranchModel = freezed,
    Object listStatus = freezed,
    Object dateFrom = freezed,
    Object dateTo = freezed,
  }) {
    return _then(_ActivityFilterModel(
      listBranchModel: listBranchModel == freezed
          ? _value.listBranchModel
          : listBranchModel as List<BranchModel>,
      listStatus: listStatus == freezed
          ? _value.listStatus
          : listStatus as List<String>,
      dateFrom: dateFrom == freezed ? _value.dateFrom : dateFrom as DateTime,
      dateTo: dateTo == freezed ? _value.dateTo : dateTo as DateTime,
    ));
  }
}

/// @nodoc
class _$_ActivityFilterModel implements _ActivityFilterModel {
  _$_ActivityFilterModel(
      {this.listBranchModel, this.listStatus, this.dateFrom, this.dateTo});

  @override
  final List<BranchModel> listBranchModel;
  @override
  final List<String> listStatus;
  @override
  final DateTime dateFrom;
  @override
  final DateTime dateTo;

  @override
  String toString() {
    return 'TransactionFilterModel(listBranchModel: $listBranchModel, listStatus: $listStatus, dateFrom: $dateFrom, dateTo: $dateTo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActivityFilterModel &&
            (identical(other.listBranchModel, listBranchModel) ||
                const DeepCollectionEquality()
                    .equals(other.listBranchModel, listBranchModel)) &&
            (identical(other.listStatus, listStatus) ||
                const DeepCollectionEquality()
                    .equals(other.listStatus, listStatus)) &&
            (identical(other.dateFrom, dateFrom) ||
                const DeepCollectionEquality()
                    .equals(other.dateFrom, dateFrom)) &&
            (identical(other.dateTo, dateTo) ||
                const DeepCollectionEquality().equals(other.dateTo, dateTo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(listBranchModel) ^
      const DeepCollectionEquality().hash(listStatus) ^
      const DeepCollectionEquality().hash(dateFrom) ^
      const DeepCollectionEquality().hash(dateTo);

  @JsonKey(ignore: true)
  @override
  _$ActivityFilterModelCopyWith<_ActivityFilterModel> get copyWith =>
      __$ActivityFilterModelCopyWithImpl<_ActivityFilterModel>(
          this, _$identity);
}

abstract class _ActivityFilterModel implements TransactionFilterModel {
  factory _ActivityFilterModel(
      {List<BranchModel> listBranchModel,
      List<String> listStatus,
      DateTime dateFrom,
      DateTime dateTo}) = _$_ActivityFilterModel;

  @override
  List<BranchModel> get listBranchModel;
  @override
  List<String> get listStatus;
  @override
  DateTime get dateFrom;
  @override
  DateTime get dateTo;
  @override
  @JsonKey(ignore: true)
  _$ActivityFilterModelCopyWith<_ActivityFilterModel> get copyWith;
}
