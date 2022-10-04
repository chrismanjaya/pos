// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'report_transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ReportTransactionEventTearOff {
  const _$ReportTransactionEventTearOff();

// ignore: unused_element
  GetReport getReport(TransactionFilterModel transactionFilterModel) {
    return GetReport(
      transactionFilterModel,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ReportTransactionEvent = _$ReportTransactionEventTearOff();

/// @nodoc
mixin _$ReportTransactionEvent {
  TransactionFilterModel get transactionFilterModel;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getReport(TransactionFilterModel transactionFilterModel),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getReport(TransactionFilterModel transactionFilterModel),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getReport(GetReport value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getReport(GetReport value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ReportTransactionEventCopyWith<ReportTransactionEvent> get copyWith;
}

/// @nodoc
abstract class $ReportTransactionEventCopyWith<$Res> {
  factory $ReportTransactionEventCopyWith(ReportTransactionEvent value,
          $Res Function(ReportTransactionEvent) then) =
      _$ReportTransactionEventCopyWithImpl<$Res>;
  $Res call({TransactionFilterModel transactionFilterModel});

  $TransactionFilterModelCopyWith<$Res> get transactionFilterModel;
}

/// @nodoc
class _$ReportTransactionEventCopyWithImpl<$Res>
    implements $ReportTransactionEventCopyWith<$Res> {
  _$ReportTransactionEventCopyWithImpl(this._value, this._then);

  final ReportTransactionEvent _value;
  // ignore: unused_field
  final $Res Function(ReportTransactionEvent) _then;

  @override
  $Res call({
    Object transactionFilterModel = freezed,
  }) {
    return _then(_value.copyWith(
      transactionFilterModel: transactionFilterModel == freezed
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
abstract class $GetReportCopyWith<$Res>
    implements $ReportTransactionEventCopyWith<$Res> {
  factory $GetReportCopyWith(GetReport value, $Res Function(GetReport) then) =
      _$GetReportCopyWithImpl<$Res>;
  @override
  $Res call({TransactionFilterModel transactionFilterModel});

  @override
  $TransactionFilterModelCopyWith<$Res> get transactionFilterModel;
}

/// @nodoc
class _$GetReportCopyWithImpl<$Res>
    extends _$ReportTransactionEventCopyWithImpl<$Res>
    implements $GetReportCopyWith<$Res> {
  _$GetReportCopyWithImpl(GetReport _value, $Res Function(GetReport) _then)
      : super(_value, (v) => _then(v as GetReport));

  @override
  GetReport get _value => super._value as GetReport;

  @override
  $Res call({
    Object transactionFilterModel = freezed,
  }) {
    return _then(GetReport(
      transactionFilterModel == freezed
          ? _value.transactionFilterModel
          : transactionFilterModel as TransactionFilterModel,
    ));
  }
}

/// @nodoc
class _$GetReport implements GetReport {
  const _$GetReport(this.transactionFilterModel)
      : assert(transactionFilterModel != null);

  @override
  final TransactionFilterModel transactionFilterModel;

  @override
  String toString() {
    return 'ReportTransactionEvent.getReport(transactionFilterModel: $transactionFilterModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetReport &&
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
  $GetReportCopyWith<GetReport> get copyWith =>
      _$GetReportCopyWithImpl<GetReport>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getReport(TransactionFilterModel transactionFilterModel),
  }) {
    assert(getReport != null);
    return getReport(transactionFilterModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getReport(TransactionFilterModel transactionFilterModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getReport != null) {
      return getReport(transactionFilterModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getReport(GetReport value),
  }) {
    assert(getReport != null);
    return getReport(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getReport(GetReport value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getReport != null) {
      return getReport(this);
    }
    return orElse();
  }
}

abstract class GetReport implements ReportTransactionEvent {
  const factory GetReport(TransactionFilterModel transactionFilterModel) =
      _$GetReport;

  @override
  TransactionFilterModel get transactionFilterModel;
  @override
  @JsonKey(ignore: true)
  $GetReportCopyWith<GetReport> get copyWith;
}

/// @nodoc
class _$ReportTransactionStateTearOff {
  const _$ReportTransactionStateTearOff();

// ignore: unused_element
  _ReportTransactionState call(
      {@required List<ExpenseModel> listExpenseModel,
      @required List<TransactionReportModel> listTransactionReportModel,
      @required TransactionReportStatusModel transactionReportStatusModel,
      @required TransactionFilterModel transactionFilterModel,
      @required bool isLoading,
      @required String errorMessage}) {
    return _ReportTransactionState(
      listExpenseModel: listExpenseModel,
      listTransactionReportModel: listTransactionReportModel,
      transactionReportStatusModel: transactionReportStatusModel,
      transactionFilterModel: transactionFilterModel,
      isLoading: isLoading,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ReportTransactionState = _$ReportTransactionStateTearOff();

/// @nodoc
mixin _$ReportTransactionState {
  List<ExpenseModel> get listExpenseModel;
  List<TransactionReportModel> get listTransactionReportModel;
  TransactionReportStatusModel get transactionReportStatusModel;
  TransactionFilterModel get transactionFilterModel;
  bool get isLoading;
  String get errorMessage;

  @JsonKey(ignore: true)
  $ReportTransactionStateCopyWith<ReportTransactionState> get copyWith;
}

/// @nodoc
abstract class $ReportTransactionStateCopyWith<$Res> {
  factory $ReportTransactionStateCopyWith(ReportTransactionState value,
          $Res Function(ReportTransactionState) then) =
      _$ReportTransactionStateCopyWithImpl<$Res>;
  $Res call(
      {List<ExpenseModel> listExpenseModel,
      List<TransactionReportModel> listTransactionReportModel,
      TransactionReportStatusModel transactionReportStatusModel,
      TransactionFilterModel transactionFilterModel,
      bool isLoading,
      String errorMessage});

  $TransactionReportStatusModelCopyWith<$Res> get transactionReportStatusModel;
  $TransactionFilterModelCopyWith<$Res> get transactionFilterModel;
}

/// @nodoc
class _$ReportTransactionStateCopyWithImpl<$Res>
    implements $ReportTransactionStateCopyWith<$Res> {
  _$ReportTransactionStateCopyWithImpl(this._value, this._then);

  final ReportTransactionState _value;
  // ignore: unused_field
  final $Res Function(ReportTransactionState) _then;

  @override
  $Res call({
    Object listExpenseModel = freezed,
    Object listTransactionReportModel = freezed,
    Object transactionReportStatusModel = freezed,
    Object transactionFilterModel = freezed,
    Object isLoading = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      listExpenseModel: listExpenseModel == freezed
          ? _value.listExpenseModel
          : listExpenseModel as List<ExpenseModel>,
      listTransactionReportModel: listTransactionReportModel == freezed
          ? _value.listTransactionReportModel
          : listTransactionReportModel as List<TransactionReportModel>,
      transactionReportStatusModel: transactionReportStatusModel == freezed
          ? _value.transactionReportStatusModel
          : transactionReportStatusModel as TransactionReportStatusModel,
      transactionFilterModel: transactionFilterModel == freezed
          ? _value.transactionFilterModel
          : transactionFilterModel as TransactionFilterModel,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }

  @override
  $TransactionReportStatusModelCopyWith<$Res> get transactionReportStatusModel {
    if (_value.transactionReportStatusModel == null) {
      return null;
    }
    return $TransactionReportStatusModelCopyWith<$Res>(
        _value.transactionReportStatusModel, (value) {
      return _then(_value.copyWith(transactionReportStatusModel: value));
    });
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
abstract class _$ReportTransactionStateCopyWith<$Res>
    implements $ReportTransactionStateCopyWith<$Res> {
  factory _$ReportTransactionStateCopyWith(_ReportTransactionState value,
          $Res Function(_ReportTransactionState) then) =
      __$ReportTransactionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ExpenseModel> listExpenseModel,
      List<TransactionReportModel> listTransactionReportModel,
      TransactionReportStatusModel transactionReportStatusModel,
      TransactionFilterModel transactionFilterModel,
      bool isLoading,
      String errorMessage});

  @override
  $TransactionReportStatusModelCopyWith<$Res> get transactionReportStatusModel;
  @override
  $TransactionFilterModelCopyWith<$Res> get transactionFilterModel;
}

/// @nodoc
class __$ReportTransactionStateCopyWithImpl<$Res>
    extends _$ReportTransactionStateCopyWithImpl<$Res>
    implements _$ReportTransactionStateCopyWith<$Res> {
  __$ReportTransactionStateCopyWithImpl(_ReportTransactionState _value,
      $Res Function(_ReportTransactionState) _then)
      : super(_value, (v) => _then(v as _ReportTransactionState));

  @override
  _ReportTransactionState get _value => super._value as _ReportTransactionState;

  @override
  $Res call({
    Object listExpenseModel = freezed,
    Object listTransactionReportModel = freezed,
    Object transactionReportStatusModel = freezed,
    Object transactionFilterModel = freezed,
    Object isLoading = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_ReportTransactionState(
      listExpenseModel: listExpenseModel == freezed
          ? _value.listExpenseModel
          : listExpenseModel as List<ExpenseModel>,
      listTransactionReportModel: listTransactionReportModel == freezed
          ? _value.listTransactionReportModel
          : listTransactionReportModel as List<TransactionReportModel>,
      transactionReportStatusModel: transactionReportStatusModel == freezed
          ? _value.transactionReportStatusModel
          : transactionReportStatusModel as TransactionReportStatusModel,
      transactionFilterModel: transactionFilterModel == freezed
          ? _value.transactionFilterModel
          : transactionFilterModel as TransactionFilterModel,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$_ReportTransactionState implements _ReportTransactionState {
  const _$_ReportTransactionState(
      {@required this.listExpenseModel,
      @required this.listTransactionReportModel,
      @required this.transactionReportStatusModel,
      @required this.transactionFilterModel,
      @required this.isLoading,
      @required this.errorMessage})
      : assert(listExpenseModel != null),
        assert(listTransactionReportModel != null),
        assert(transactionReportStatusModel != null),
        assert(transactionFilterModel != null),
        assert(isLoading != null),
        assert(errorMessage != null);

  @override
  final List<ExpenseModel> listExpenseModel;
  @override
  final List<TransactionReportModel> listTransactionReportModel;
  @override
  final TransactionReportStatusModel transactionReportStatusModel;
  @override
  final TransactionFilterModel transactionFilterModel;
  @override
  final bool isLoading;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ReportTransactionState(listExpenseModel: $listExpenseModel, listTransactionReportModel: $listTransactionReportModel, transactionReportStatusModel: $transactionReportStatusModel, transactionFilterModel: $transactionFilterModel, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReportTransactionState &&
            (identical(other.listExpenseModel, listExpenseModel) ||
                const DeepCollectionEquality()
                    .equals(other.listExpenseModel, listExpenseModel)) &&
            (identical(other.listTransactionReportModel,
                    listTransactionReportModel) ||
                const DeepCollectionEquality().equals(
                    other.listTransactionReportModel,
                    listTransactionReportModel)) &&
            (identical(other.transactionReportStatusModel,
                    transactionReportStatusModel) ||
                const DeepCollectionEquality().equals(
                    other.transactionReportStatusModel,
                    transactionReportStatusModel)) &&
            (identical(other.transactionFilterModel, transactionFilterModel) ||
                const DeepCollectionEquality().equals(
                    other.transactionFilterModel, transactionFilterModel)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(listExpenseModel) ^
      const DeepCollectionEquality().hash(listTransactionReportModel) ^
      const DeepCollectionEquality().hash(transactionReportStatusModel) ^
      const DeepCollectionEquality().hash(transactionFilterModel) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$ReportTransactionStateCopyWith<_ReportTransactionState> get copyWith =>
      __$ReportTransactionStateCopyWithImpl<_ReportTransactionState>(
          this, _$identity);
}

abstract class _ReportTransactionState implements ReportTransactionState {
  const factory _ReportTransactionState(
      {@required List<ExpenseModel> listExpenseModel,
      @required List<TransactionReportModel> listTransactionReportModel,
      @required TransactionReportStatusModel transactionReportStatusModel,
      @required TransactionFilterModel transactionFilterModel,
      @required bool isLoading,
      @required String errorMessage}) = _$_ReportTransactionState;

  @override
  List<ExpenseModel> get listExpenseModel;
  @override
  List<TransactionReportModel> get listTransactionReportModel;
  @override
  TransactionReportStatusModel get transactionReportStatusModel;
  @override
  TransactionFilterModel get transactionFilterModel;
  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$ReportTransactionStateCopyWith<_ReportTransactionState> get copyWith;
}
