// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProductEventTearOff {
  const _$ProductEventTearOff();

// ignore: unused_element
  GetListProduct getListProduct() {
    return const GetListProduct();
  }

// ignore: unused_element
  SearchChanged searchChanged(String text) {
    return SearchChanged(
      text,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProductEvent = _$ProductEventTearOff();

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getListProduct(),
    @required TResult searchChanged(String text),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getListProduct(),
    TResult searchChanged(String text),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getListProduct(GetListProduct value),
    @required TResult searchChanged(SearchChanged value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getListProduct(GetListProduct value),
    TResult searchChanged(SearchChanged value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res> implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  final ProductEvent _value;
  // ignore: unused_field
  final $Res Function(ProductEvent) _then;
}

/// @nodoc
abstract class $GetListProductCopyWith<$Res> {
  factory $GetListProductCopyWith(
          GetListProduct value, $Res Function(GetListProduct) then) =
      _$GetListProductCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetListProductCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements $GetListProductCopyWith<$Res> {
  _$GetListProductCopyWithImpl(
      GetListProduct _value, $Res Function(GetListProduct) _then)
      : super(_value, (v) => _then(v as GetListProduct));

  @override
  GetListProduct get _value => super._value as GetListProduct;
}

/// @nodoc
class _$GetListProduct implements GetListProduct {
  const _$GetListProduct();

  @override
  String toString() {
    return 'ProductEvent.getListProduct()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetListProduct);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getListProduct(),
    @required TResult searchChanged(String text),
  }) {
    assert(getListProduct != null);
    assert(searchChanged != null);
    return getListProduct();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getListProduct(),
    TResult searchChanged(String text),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getListProduct != null) {
      return getListProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getListProduct(GetListProduct value),
    @required TResult searchChanged(SearchChanged value),
  }) {
    assert(getListProduct != null);
    assert(searchChanged != null);
    return getListProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getListProduct(GetListProduct value),
    TResult searchChanged(SearchChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getListProduct != null) {
      return getListProduct(this);
    }
    return orElse();
  }
}

abstract class GetListProduct implements ProductEvent {
  const factory GetListProduct() = _$GetListProduct;
}

/// @nodoc
abstract class $SearchChangedCopyWith<$Res> {
  factory $SearchChangedCopyWith(
          SearchChanged value, $Res Function(SearchChanged) then) =
      _$SearchChangedCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class _$SearchChangedCopyWithImpl<$Res> extends _$ProductEventCopyWithImpl<$Res>
    implements $SearchChangedCopyWith<$Res> {
  _$SearchChangedCopyWithImpl(
      SearchChanged _value, $Res Function(SearchChanged) _then)
      : super(_value, (v) => _then(v as SearchChanged));

  @override
  SearchChanged get _value => super._value as SearchChanged;

  @override
  $Res call({
    Object text = freezed,
  }) {
    return _then(SearchChanged(
      text == freezed ? _value.text : text as String,
    ));
  }
}

/// @nodoc
class _$SearchChanged implements SearchChanged {
  const _$SearchChanged(this.text) : assert(text != null);

  @override
  final String text;

  @override
  String toString() {
    return 'ProductEvent.searchChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchChanged &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  $SearchChangedCopyWith<SearchChanged> get copyWith =>
      _$SearchChangedCopyWithImpl<SearchChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getListProduct(),
    @required TResult searchChanged(String text),
  }) {
    assert(getListProduct != null);
    assert(searchChanged != null);
    return searchChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getListProduct(),
    TResult searchChanged(String text),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchChanged != null) {
      return searchChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getListProduct(GetListProduct value),
    @required TResult searchChanged(SearchChanged value),
  }) {
    assert(getListProduct != null);
    assert(searchChanged != null);
    return searchChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getListProduct(GetListProduct value),
    TResult searchChanged(SearchChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchChanged != null) {
      return searchChanged(this);
    }
    return orElse();
  }
}

abstract class SearchChanged implements ProductEvent {
  const factory SearchChanged(String text) = _$SearchChanged;

  String get text;
  @JsonKey(ignore: true)
  $SearchChangedCopyWith<SearchChanged> get copyWith;
}

/// @nodoc
class _$ProductStateTearOff {
  const _$ProductStateTearOff();

// ignore: unused_element
  _ProductState call(
      {@required List<ProductModel> listProduct,
      @required List<ProductModel> listProductFiltered,
      @required bool isLoading,
      @required bool isLoaded,
      @required String errorMessage}) {
    return _ProductState(
      listProduct: listProduct,
      listProductFiltered: listProductFiltered,
      isLoading: isLoading,
      isLoaded: isLoaded,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProductState = _$ProductStateTearOff();

/// @nodoc
mixin _$ProductState {
  List<ProductModel> get listProduct;
  List<ProductModel> get listProductFiltered;
  bool get isLoading;
  bool get isLoaded;
  String get errorMessage;

  @JsonKey(ignore: true)
  $ProductStateCopyWith<ProductState> get copyWith;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res>;
  $Res call(
      {List<ProductModel> listProduct,
      List<ProductModel> listProductFiltered,
      bool isLoading,
      bool isLoaded,
      String errorMessage});
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res> implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  final ProductState _value;
  // ignore: unused_field
  final $Res Function(ProductState) _then;

  @override
  $Res call({
    Object listProduct = freezed,
    Object listProductFiltered = freezed,
    Object isLoading = freezed,
    Object isLoaded = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      listProduct: listProduct == freezed
          ? _value.listProduct
          : listProduct as List<ProductModel>,
      listProductFiltered: listProductFiltered == freezed
          ? _value.listProductFiltered
          : listProductFiltered as List<ProductModel>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isLoaded: isLoaded == freezed ? _value.isLoaded : isLoaded as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
abstract class _$ProductStateCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$ProductStateCopyWith(
          _ProductState value, $Res Function(_ProductState) then) =
      __$ProductStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ProductModel> listProduct,
      List<ProductModel> listProductFiltered,
      bool isLoading,
      bool isLoaded,
      String errorMessage});
}

/// @nodoc
class __$ProductStateCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
    implements _$ProductStateCopyWith<$Res> {
  __$ProductStateCopyWithImpl(
      _ProductState _value, $Res Function(_ProductState) _then)
      : super(_value, (v) => _then(v as _ProductState));

  @override
  _ProductState get _value => super._value as _ProductState;

  @override
  $Res call({
    Object listProduct = freezed,
    Object listProductFiltered = freezed,
    Object isLoading = freezed,
    Object isLoaded = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_ProductState(
      listProduct: listProduct == freezed
          ? _value.listProduct
          : listProduct as List<ProductModel>,
      listProductFiltered: listProductFiltered == freezed
          ? _value.listProductFiltered
          : listProductFiltered as List<ProductModel>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isLoaded: isLoaded == freezed ? _value.isLoaded : isLoaded as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$_ProductState implements _ProductState {
  const _$_ProductState(
      {@required this.listProduct,
      @required this.listProductFiltered,
      @required this.isLoading,
      @required this.isLoaded,
      @required this.errorMessage})
      : assert(listProduct != null),
        assert(listProductFiltered != null),
        assert(isLoading != null),
        assert(isLoaded != null),
        assert(errorMessage != null);

  @override
  final List<ProductModel> listProduct;
  @override
  final List<ProductModel> listProductFiltered;
  @override
  final bool isLoading;
  @override
  final bool isLoaded;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ProductState(listProduct: $listProduct, listProductFiltered: $listProductFiltered, isLoading: $isLoading, isLoaded: $isLoaded, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductState &&
            (identical(other.listProduct, listProduct) ||
                const DeepCollectionEquality()
                    .equals(other.listProduct, listProduct)) &&
            (identical(other.listProductFiltered, listProductFiltered) ||
                const DeepCollectionEquality()
                    .equals(other.listProductFiltered, listProductFiltered)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isLoaded, isLoaded) ||
                const DeepCollectionEquality()
                    .equals(other.isLoaded, isLoaded)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(listProduct) ^
      const DeepCollectionEquality().hash(listProductFiltered) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isLoaded) ^
      const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$ProductStateCopyWith<_ProductState> get copyWith =>
      __$ProductStateCopyWithImpl<_ProductState>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState(
      {@required List<ProductModel> listProduct,
      @required List<ProductModel> listProductFiltered,
      @required bool isLoading,
      @required bool isLoaded,
      @required String errorMessage}) = _$_ProductState;

  @override
  List<ProductModel> get listProduct;
  @override
  List<ProductModel> get listProductFiltered;
  @override
  bool get isLoading;
  @override
  bool get isLoaded;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$ProductStateCopyWith<_ProductState> get copyWith;
}
