// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'transaction_report_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TransactionReportStatusModelTearOff {
  const _$TransactionReportStatusModelTearOff();

// ignore: unused_element
  _TransactionReportStatusModel call({int done, int pending, int cancelled}) {
    return _TransactionReportStatusModel(
      done: done,
      pending: pending,
      cancelled: cancelled,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TransactionReportStatusModel = _$TransactionReportStatusModelTearOff();

/// @nodoc
mixin _$TransactionReportStatusModel {
  int get done;
  int get pending;
  int get cancelled;

  @JsonKey(ignore: true)
  $TransactionReportStatusModelCopyWith<TransactionReportStatusModel>
      get copyWith;
}

/// @nodoc
abstract class $TransactionReportStatusModelCopyWith<$Res> {
  factory $TransactionReportStatusModelCopyWith(
          TransactionReportStatusModel value,
          $Res Function(TransactionReportStatusModel) then) =
      _$TransactionReportStatusModelCopyWithImpl<$Res>;
  $Res call({int done, int pending, int cancelled});
}

/// @nodoc
class _$TransactionReportStatusModelCopyWithImpl<$Res>
    implements $TransactionReportStatusModelCopyWith<$Res> {
  _$TransactionReportStatusModelCopyWithImpl(this._value, this._then);

  final TransactionReportStatusModel _value;
  // ignore: unused_field
  final $Res Function(TransactionReportStatusModel) _then;

  @override
  $Res call({
    Object done = freezed,
    Object pending = freezed,
    Object cancelled = freezed,
  }) {
    return _then(_value.copyWith(
      done: done == freezed ? _value.done : done as int,
      pending: pending == freezed ? _value.pending : pending as int,
      cancelled: cancelled == freezed ? _value.cancelled : cancelled as int,
    ));
  }
}

/// @nodoc
abstract class _$TransactionReportStatusModelCopyWith<$Res>
    implements $TransactionReportStatusModelCopyWith<$Res> {
  factory _$TransactionReportStatusModelCopyWith(
          _TransactionReportStatusModel value,
          $Res Function(_TransactionReportStatusModel) then) =
      __$TransactionReportStatusModelCopyWithImpl<$Res>;
  @override
  $Res call({int done, int pending, int cancelled});
}

/// @nodoc
class __$TransactionReportStatusModelCopyWithImpl<$Res>
    extends _$TransactionReportStatusModelCopyWithImpl<$Res>
    implements _$TransactionReportStatusModelCopyWith<$Res> {
  __$TransactionReportStatusModelCopyWithImpl(
      _TransactionReportStatusModel _value,
      $Res Function(_TransactionReportStatusModel) _then)
      : super(_value, (v) => _then(v as _TransactionReportStatusModel));

  @override
  _TransactionReportStatusModel get _value =>
      super._value as _TransactionReportStatusModel;

  @override
  $Res call({
    Object done = freezed,
    Object pending = freezed,
    Object cancelled = freezed,
  }) {
    return _then(_TransactionReportStatusModel(
      done: done == freezed ? _value.done : done as int,
      pending: pending == freezed ? _value.pending : pending as int,
      cancelled: cancelled == freezed ? _value.cancelled : cancelled as int,
    ));
  }
}

/// @nodoc
class _$_TransactionReportStatusModel implements _TransactionReportStatusModel {
  _$_TransactionReportStatusModel({this.done, this.pending, this.cancelled});

  @override
  final int done;
  @override
  final int pending;
  @override
  final int cancelled;

  @override
  String toString() {
    return 'TransactionReportStatusModel(done: $done, pending: $pending, cancelled: $cancelled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionReportStatusModel &&
            (identical(other.done, done) ||
                const DeepCollectionEquality().equals(other.done, done)) &&
            (identical(other.pending, pending) ||
                const DeepCollectionEquality()
                    .equals(other.pending, pending)) &&
            (identical(other.cancelled, cancelled) ||
                const DeepCollectionEquality()
                    .equals(other.cancelled, cancelled)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(done) ^
      const DeepCollectionEquality().hash(pending) ^
      const DeepCollectionEquality().hash(cancelled);

  @JsonKey(ignore: true)
  @override
  _$TransactionReportStatusModelCopyWith<_TransactionReportStatusModel>
      get copyWith => __$TransactionReportStatusModelCopyWithImpl<
          _TransactionReportStatusModel>(this, _$identity);
}

abstract class _TransactionReportStatusModel
    implements TransactionReportStatusModel {
  factory _TransactionReportStatusModel(
      {int done, int pending, int cancelled}) = _$_TransactionReportStatusModel;

  @override
  int get done;
  @override
  int get pending;
  @override
  int get cancelled;
  @override
  @JsonKey(ignore: true)
  _$TransactionReportStatusModelCopyWith<_TransactionReportStatusModel>
      get copyWith;
}
