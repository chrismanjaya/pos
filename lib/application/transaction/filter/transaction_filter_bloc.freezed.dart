// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'transaction_filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TransactionFilterEventTearOff {
  const _$TransactionFilterEventTearOff();

// ignore: unused_element
  Initial initial(TransactionFilterModel transactionFilterModel) {
    return Initial(
      transactionFilterModel,
    );
  }

// ignore: unused_element
  ChangeTransactionStatus changeTransactionStatus(List<String> listStatus) {
    return ChangeTransactionStatus(
      listStatus,
    );
  }

// ignore: unused_element
  ChangeTransactionDate changeTransactionDate(
      DateTime dateFrom, DateTime dateTo) {
    return ChangeTransactionDate(
      dateFrom,
      dateTo,
    );
  }

// ignore: unused_element
  ChangeBranch changeBranch(List<BranchModel> listBranch) {
    return ChangeBranch(
      listBranch,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TransactionFilterEvent = _$TransactionFilterEventTearOff();

/// @nodoc
mixin _$TransactionFilterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(TransactionFilterModel transactionFilterModel),
    @required TResult changeTransactionStatus(List<String> listStatus),
    @required TResult changeTransactionDate(DateTime dateFrom, DateTime dateTo),
    @required TResult changeBranch(List<BranchModel> listBranch),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(TransactionFilterModel transactionFilterModel),
    TResult changeTransactionStatus(List<String> listStatus),
    TResult changeTransactionDate(DateTime dateFrom, DateTime dateTo),
    TResult changeBranch(List<BranchModel> listBranch),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult changeTransactionStatus(ChangeTransactionStatus value),
    @required TResult changeTransactionDate(ChangeTransactionDate value),
    @required TResult changeBranch(ChangeBranch value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult changeTransactionStatus(ChangeTransactionStatus value),
    TResult changeTransactionDate(ChangeTransactionDate value),
    TResult changeBranch(ChangeBranch value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $TransactionFilterEventCopyWith<$Res> {
  factory $TransactionFilterEventCopyWith(TransactionFilterEvent value,
          $Res Function(TransactionFilterEvent) then) =
      _$TransactionFilterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionFilterEventCopyWithImpl<$Res>
    implements $TransactionFilterEventCopyWith<$Res> {
  _$TransactionFilterEventCopyWithImpl(this._value, this._then);

  final TransactionFilterEvent _value;
  // ignore: unused_field
  final $Res Function(TransactionFilterEvent) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  $Res call({TransactionFilterModel transactionFilterModel});

  $TransactionFilterModelCopyWith<$Res> get transactionFilterModel;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$TransactionFilterEventCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;

  @override
  $Res call({
    Object transactionFilterModel = freezed,
  }) {
    return _then(Initial(
      transactionFilterModel == freezed
          ? _value.transactionFilterModel
          : transactionFilterModel as TransactionFilterModel,
    ));
  }

  @override
  $TransactionFilterModelCopyWith<$Res> get transactionFilterModel {
    if (_value.transactionFilterModel == null) {
      return null;
    }
    return $TransactionFilterModelCopyWith<$Res>(_value.transactionFilterModel,
        (value) {
      return _then(_value.copyWith(transactionFilterModel: value));
    });
  }
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial(this.transactionFilterModel)
      : assert(transactionFilterModel != null);

  @override
  final TransactionFilterModel transactionFilterModel;

  @override
  String toString() {
    return 'TransactionFilterEvent.initial(transactionFilterModel: $transactionFilterModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Initial &&
            (identical(other.transactionFilterModel, transactionFilterModel) ||
                const DeepCollectionEquality().equals(
                    other.transactionFilterModel, transactionFilterModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(transactionFilterModel);

  @JsonKey(ignore: true)
  @override
  $InitialCopyWith<Initial> get copyWith =>
      _$InitialCopyWithImpl<Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(TransactionFilterModel transactionFilterModel),
    @required TResult changeTransactionStatus(List<String> listStatus),
    @required TResult changeTransactionDate(DateTime dateFrom, DateTime dateTo),
    @required TResult changeBranch(List<BranchModel> listBranch),
  }) {
    assert(initial != null);
    assert(changeTransactionStatus != null);
    assert(changeTransactionDate != null);
    assert(changeBranch != null);
    return initial(transactionFilterModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(TransactionFilterModel transactionFilterModel),
    TResult changeTransactionStatus(List<String> listStatus),
    TResult changeTransactionDate(DateTime dateFrom, DateTime dateTo),
    TResult changeBranch(List<BranchModel> listBranch),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(transactionFilterModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult changeTransactionStatus(ChangeTransactionStatus value),
    @required TResult changeTransactionDate(ChangeTransactionDate value),
    @required TResult changeBranch(ChangeBranch value),
  }) {
    assert(initial != null);
    assert(changeTransactionStatus != null);
    assert(changeTransactionDate != null);
    assert(changeBranch != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult changeTransactionStatus(ChangeTransactionStatus value),
    TResult changeTransactionDate(ChangeTransactionDate value),
    TResult changeBranch(ChangeBranch value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements TransactionFilterEvent {
  const factory Initial(TransactionFilterModel transactionFilterModel) =
      _$Initial;

  TransactionFilterModel get transactionFilterModel;
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith;
}

/// @nodoc
abstract class $ChangeTransactionStatusCopyWith<$Res> {
  factory $ChangeTransactionStatusCopyWith(ChangeTransactionStatus value,
          $Res Function(ChangeTransactionStatus) then) =
      _$ChangeTransactionStatusCopyWithImpl<$Res>;
  $Res call({List<String> listStatus});
}

/// @nodoc
class _$ChangeTransactionStatusCopyWithImpl<$Res>
    extends _$TransactionFilterEventCopyWithImpl<$Res>
    implements $ChangeTransactionStatusCopyWith<$Res> {
  _$ChangeTransactionStatusCopyWithImpl(ChangeTransactionStatus _value,
      $Res Function(ChangeTransactionStatus) _then)
      : super(_value, (v) => _then(v as ChangeTransactionStatus));

  @override
  ChangeTransactionStatus get _value => super._value as ChangeTransactionStatus;

  @override
  $Res call({
    Object listStatus = freezed,
  }) {
    return _then(ChangeTransactionStatus(
      listStatus == freezed ? _value.listStatus : listStatus as List<String>,
    ));
  }
}

/// @nodoc
class _$ChangeTransactionStatus implements ChangeTransactionStatus {
  const _$ChangeTransactionStatus(this.listStatus) : assert(listStatus != null);

  @override
  final List<String> listStatus;

  @override
  String toString() {
    return 'TransactionFilterEvent.changeTransactionStatus(listStatus: $listStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeTransactionStatus &&
            (identical(other.listStatus, listStatus) ||
                const DeepCollectionEquality()
                    .equals(other.listStatus, listStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(listStatus);

  @JsonKey(ignore: true)
  @override
  $ChangeTransactionStatusCopyWith<ChangeTransactionStatus> get copyWith =>
      _$ChangeTransactionStatusCopyWithImpl<ChangeTransactionStatus>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(TransactionFilterModel transactionFilterModel),
    @required TResult changeTransactionStatus(List<String> listStatus),
    @required TResult changeTransactionDate(DateTime dateFrom, DateTime dateTo),
    @required TResult changeBranch(List<BranchModel> listBranch),
  }) {
    assert(initial != null);
    assert(changeTransactionStatus != null);
    assert(changeTransactionDate != null);
    assert(changeBranch != null);
    return changeTransactionStatus(listStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(TransactionFilterModel transactionFilterModel),
    TResult changeTransactionStatus(List<String> listStatus),
    TResult changeTransactionDate(DateTime dateFrom, DateTime dateTo),
    TResult changeBranch(List<BranchModel> listBranch),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeTransactionStatus != null) {
      return changeTransactionStatus(listStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult changeTransactionStatus(ChangeTransactionStatus value),
    @required TResult changeTransactionDate(ChangeTransactionDate value),
    @required TResult changeBranch(ChangeBranch value),
  }) {
    assert(initial != null);
    assert(changeTransactionStatus != null);
    assert(changeTransactionDate != null);
    assert(changeBranch != null);
    return changeTransactionStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult changeTransactionStatus(ChangeTransactionStatus value),
    TResult changeTransactionDate(ChangeTransactionDate value),
    TResult changeBranch(ChangeBranch value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeTransactionStatus != null) {
      return changeTransactionStatus(this);
    }
    return orElse();
  }
}

abstract class ChangeTransactionStatus implements TransactionFilterEvent {
  const factory ChangeTransactionStatus(List<String> listStatus) =
      _$ChangeTransactionStatus;

  List<String> get listStatus;
  @JsonKey(ignore: true)
  $ChangeTransactionStatusCopyWith<ChangeTransactionStatus> get copyWith;
}

/// @nodoc
abstract class $ChangeTransactionDateCopyWith<$Res> {
  factory $ChangeTransactionDateCopyWith(ChangeTransactionDate value,
          $Res Function(ChangeTransactionDate) then) =
      _$ChangeTransactionDateCopyWithImpl<$Res>;
  $Res call({DateTime dateFrom, DateTime dateTo});
}

/// @nodoc
class _$ChangeTransactionDateCopyWithImpl<$Res>
    extends _$TransactionFilterEventCopyWithImpl<$Res>
    implements $ChangeTransactionDateCopyWith<$Res> {
  _$ChangeTransactionDateCopyWithImpl(
      ChangeTransactionDate _value, $Res Function(ChangeTransactionDate) _then)
      : super(_value, (v) => _then(v as ChangeTransactionDate));

  @override
  ChangeTransactionDate get _value => super._value as ChangeTransactionDate;

  @override
  $Res call({
    Object dateFrom = freezed,
    Object dateTo = freezed,
  }) {
    return _then(ChangeTransactionDate(
      dateFrom == freezed ? _value.dateFrom : dateFrom as DateTime,
      dateTo == freezed ? _value.dateTo : dateTo as DateTime,
    ));
  }
}

/// @nodoc
class _$ChangeTransactionDate implements ChangeTransactionDate {
  const _$ChangeTransactionDate(this.dateFrom, this.dateTo)
      : assert(dateFrom != null),
        assert(dateTo != null);

  @override
  final DateTime dateFrom;
  @override
  final DateTime dateTo;

  @override
  String toString() {
    return 'TransactionFilterEvent.changeTransactionDate(dateFrom: $dateFrom, dateTo: $dateTo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeTransactionDate &&
            (identical(other.dateFrom, dateFrom) ||
                const DeepCollectionEquality()
                    .equals(other.dateFrom, dateFrom)) &&
            (identical(other.dateTo, dateTo) ||
                const DeepCollectionEquality().equals(other.dateTo, dateTo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dateFrom) ^
      const DeepCollectionEquality().hash(dateTo);

  @JsonKey(ignore: true)
  @override
  $ChangeTransactionDateCopyWith<ChangeTransactionDate> get copyWith =>
      _$ChangeTransactionDateCopyWithImpl<ChangeTransactionDate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(TransactionFilterModel transactionFilterModel),
    @required TResult changeTransactionStatus(List<String> listStatus),
    @required TResult changeTransactionDate(DateTime dateFrom, DateTime dateTo),
    @required TResult changeBranch(List<BranchModel> listBranch),
  }) {
    assert(initial != null);
    assert(changeTransactionStatus != null);
    assert(changeTransactionDate != null);
    assert(changeBranch != null);
    return changeTransactionDate(dateFrom, dateTo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(TransactionFilterModel transactionFilterModel),
    TResult changeTransactionStatus(List<String> listStatus),
    TResult changeTransactionDate(DateTime dateFrom, DateTime dateTo),
    TResult changeBranch(List<BranchModel> listBranch),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeTransactionDate != null) {
      return changeTransactionDate(dateFrom, dateTo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult changeTransactionStatus(ChangeTransactionStatus value),
    @required TResult changeTransactionDate(ChangeTransactionDate value),
    @required TResult changeBranch(ChangeBranch value),
  }) {
    assert(initial != null);
    assert(changeTransactionStatus != null);
    assert(changeTransactionDate != null);
    assert(changeBranch != null);
    return changeTransactionDate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult changeTransactionStatus(ChangeTransactionStatus value),
    TResult changeTransactionDate(ChangeTransactionDate value),
    TResult changeBranch(ChangeBranch value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeTransactionDate != null) {
      return changeTransactionDate(this);
    }
    return orElse();
  }
}

abstract class ChangeTransactionDate implements TransactionFilterEvent {
  const factory ChangeTransactionDate(DateTime dateFrom, DateTime dateTo) =
      _$ChangeTransactionDate;

  DateTime get dateFrom;
  DateTime get dateTo;
  @JsonKey(ignore: true)
  $ChangeTransactionDateCopyWith<ChangeTransactionDate> get copyWith;
}

/// @nodoc
abstract class $ChangeBranchCopyWith<$Res> {
  factory $ChangeBranchCopyWith(
          ChangeBranch value, $Res Function(ChangeBranch) then) =
      _$ChangeBranchCopyWithImpl<$Res>;
  $Res call({List<BranchModel> listBranch});
}

/// @nodoc
class _$ChangeBranchCopyWithImpl<$Res>
    extends _$TransactionFilterEventCopyWithImpl<$Res>
    implements $ChangeBranchCopyWith<$Res> {
  _$ChangeBranchCopyWithImpl(
      ChangeBranch _value, $Res Function(ChangeBranch) _then)
      : super(_value, (v) => _then(v as ChangeBranch));

  @override
  ChangeBranch get _value => super._value as ChangeBranch;

  @override
  $Res call({
    Object listBranch = freezed,
  }) {
    return _then(ChangeBranch(
      listBranch == freezed
          ? _value.listBranch
          : listBranch as List<BranchModel>,
    ));
  }
}

/// @nodoc
class _$ChangeBranch implements ChangeBranch {
  const _$ChangeBranch(this.listBranch) : assert(listBranch != null);

  @override
  final List<BranchModel> listBranch;

  @override
  String toString() {
    return 'TransactionFilterEvent.changeBranch(listBranch: $listBranch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeBranch &&
            (identical(other.listBranch, listBranch) ||
                const DeepCollectionEquality()
                    .equals(other.listBranch, listBranch)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(listBranch);

  @JsonKey(ignore: true)
  @override
  $ChangeBranchCopyWith<ChangeBranch> get copyWith =>
      _$ChangeBranchCopyWithImpl<ChangeBranch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(TransactionFilterModel transactionFilterModel),
    @required TResult changeTransactionStatus(List<String> listStatus),
    @required TResult changeTransactionDate(DateTime dateFrom, DateTime dateTo),
    @required TResult changeBranch(List<BranchModel> listBranch),
  }) {
    assert(initial != null);
    assert(changeTransactionStatus != null);
    assert(changeTransactionDate != null);
    assert(changeBranch != null);
    return changeBranch(listBranch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(TransactionFilterModel transactionFilterModel),
    TResult changeTransactionStatus(List<String> listStatus),
    TResult changeTransactionDate(DateTime dateFrom, DateTime dateTo),
    TResult changeBranch(List<BranchModel> listBranch),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeBranch != null) {
      return changeBranch(listBranch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult changeTransactionStatus(ChangeTransactionStatus value),
    @required TResult changeTransactionDate(ChangeTransactionDate value),
    @required TResult changeBranch(ChangeBranch value),
  }) {
    assert(initial != null);
    assert(changeTransactionStatus != null);
    assert(changeTransactionDate != null);
    assert(changeBranch != null);
    return changeBranch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult changeTransactionStatus(ChangeTransactionStatus value),
    TResult changeTransactionDate(ChangeTransactionDate value),
    TResult changeBranch(ChangeBranch value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeBranch != null) {
      return changeBranch(this);
    }
    return orElse();
  }
}

abstract class ChangeBranch implements TransactionFilterEvent {
  const factory ChangeBranch(List<BranchModel> listBranch) = _$ChangeBranch;

  List<BranchModel> get listBranch;
  @JsonKey(ignore: true)
  $ChangeBranchCopyWith<ChangeBranch> get copyWith;
}

/// @nodoc
class _$TransactionFilterStateTearOff {
  const _$TransactionFilterStateTearOff();

// ignore: unused_element
  _TransactionFilterState call(
      {@required List<BranchModel> listBranch,
      @required List<String> listStatus,
      @required DateTime dateFrom,
      @required DateTime dateTo,
      @required int changes}) {
    return _TransactionFilterState(
      listBranch: listBranch,
      listStatus: listStatus,
      dateFrom: dateFrom,
      dateTo: dateTo,
      changes: changes,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TransactionFilterState = _$TransactionFilterStateTearOff();

/// @nodoc
mixin _$TransactionFilterState {
  List<BranchModel> get listBranch;
  List<String> get listStatus;
  DateTime get dateFrom;
  DateTime get dateTo;
  int get changes;

  @JsonKey(ignore: true)
  $TransactionFilterStateCopyWith<TransactionFilterState> get copyWith;
}

/// @nodoc
abstract class $TransactionFilterStateCopyWith<$Res> {
  factory $TransactionFilterStateCopyWith(TransactionFilterState value,
          $Res Function(TransactionFilterState) then) =
      _$TransactionFilterStateCopyWithImpl<$Res>;
  $Res call(
      {List<BranchModel> listBranch,
      List<String> listStatus,
      DateTime dateFrom,
      DateTime dateTo,
      int changes});
}

/// @nodoc
class _$TransactionFilterStateCopyWithImpl<$Res>
    implements $TransactionFilterStateCopyWith<$Res> {
  _$TransactionFilterStateCopyWithImpl(this._value, this._then);

  final TransactionFilterState _value;
  // ignore: unused_field
  final $Res Function(TransactionFilterState) _then;

  @override
  $Res call({
    Object listBranch = freezed,
    Object listStatus = freezed,
    Object dateFrom = freezed,
    Object dateTo = freezed,
    Object changes = freezed,
  }) {
    return _then(_value.copyWith(
      listBranch: listBranch == freezed
          ? _value.listBranch
          : listBranch as List<BranchModel>,
      listStatus: listStatus == freezed
          ? _value.listStatus
          : listStatus as List<String>,
      dateFrom: dateFrom == freezed ? _value.dateFrom : dateFrom as DateTime,
      dateTo: dateTo == freezed ? _value.dateTo : dateTo as DateTime,
      changes: changes == freezed ? _value.changes : changes as int,
    ));
  }
}

/// @nodoc
abstract class _$TransactionFilterStateCopyWith<$Res>
    implements $TransactionFilterStateCopyWith<$Res> {
  factory _$TransactionFilterStateCopyWith(_TransactionFilterState value,
          $Res Function(_TransactionFilterState) then) =
      __$TransactionFilterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<BranchModel> listBranch,
      List<String> listStatus,
      DateTime dateFrom,
      DateTime dateTo,
      int changes});
}

/// @nodoc
class __$TransactionFilterStateCopyWithImpl<$Res>
    extends _$TransactionFilterStateCopyWithImpl<$Res>
    implements _$TransactionFilterStateCopyWith<$Res> {
  __$TransactionFilterStateCopyWithImpl(_TransactionFilterState _value,
      $Res Function(_TransactionFilterState) _then)
      : super(_value, (v) => _then(v as _TransactionFilterState));

  @override
  _TransactionFilterState get _value => super._value as _TransactionFilterState;

  @override
  $Res call({
    Object listBranch = freezed,
    Object listStatus = freezed,
    Object dateFrom = freezed,
    Object dateTo = freezed,
    Object changes = freezed,
  }) {
    return _then(_TransactionFilterState(
      listBranch: listBranch == freezed
          ? _value.listBranch
          : listBranch as List<BranchModel>,
      listStatus: listStatus == freezed
          ? _value.listStatus
          : listStatus as List<String>,
      dateFrom: dateFrom == freezed ? _value.dateFrom : dateFrom as DateTime,
      dateTo: dateTo == freezed ? _value.dateTo : dateTo as DateTime,
      changes: changes == freezed ? _value.changes : changes as int,
    ));
  }
}

/// @nodoc
class _$_TransactionFilterState implements _TransactionFilterState {
  const _$_TransactionFilterState(
      {@required this.listBranch,
      @required this.listStatus,
      @required this.dateFrom,
      @required this.dateTo,
      @required this.changes})
      : assert(listBranch != null),
        assert(listStatus != null),
        assert(dateFrom != null),
        assert(dateTo != null),
        assert(changes != null);

  @override
  final List<BranchModel> listBranch;
  @override
  final List<String> listStatus;
  @override
  final DateTime dateFrom;
  @override
  final DateTime dateTo;
  @override
  final int changes;

  @override
  String toString() {
    return 'TransactionFilterState(listBranch: $listBranch, listStatus: $listStatus, dateFrom: $dateFrom, dateTo: $dateTo, changes: $changes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionFilterState &&
            (identical(other.listBranch, listBranch) ||
                const DeepCollectionEquality()
                    .equals(other.listBranch, listBranch)) &&
            (identical(other.listStatus, listStatus) ||
                const DeepCollectionEquality()
                    .equals(other.listStatus, listStatus)) &&
            (identical(other.dateFrom, dateFrom) ||
                const DeepCollectionEquality()
                    .equals(other.dateFrom, dateFrom)) &&
            (identical(other.dateTo, dateTo) ||
                const DeepCollectionEquality().equals(other.dateTo, dateTo)) &&
            (identical(other.changes, changes) ||
                const DeepCollectionEquality().equals(other.changes, changes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(listBranch) ^
      const DeepCollectionEquality().hash(listStatus) ^
      const DeepCollectionEquality().hash(dateFrom) ^
      const DeepCollectionEquality().hash(dateTo) ^
      const DeepCollectionEquality().hash(changes);

  @JsonKey(ignore: true)
  @override
  _$TransactionFilterStateCopyWith<_TransactionFilterState> get copyWith =>
      __$TransactionFilterStateCopyWithImpl<_TransactionFilterState>(
          this, _$identity);
}

abstract class _TransactionFilterState implements TransactionFilterState {
  const factory _TransactionFilterState(
      {@required List<BranchModel> listBranch,
      @required List<String> listStatus,
      @required DateTime dateFrom,
      @required DateTime dateTo,
      @required int changes}) = _$_TransactionFilterState;

  @override
  List<BranchModel> get listBranch;
  @override
  List<String> get listStatus;
  @override
  DateTime get dateFrom;
  @override
  DateTime get dateTo;
  @override
  int get changes;
  @override
  @JsonKey(ignore: true)
  _$TransactionFilterStateCopyWith<_TransactionFilterState> get copyWith;
}
