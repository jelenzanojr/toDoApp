// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search) loadData,
    required TResult Function() load,
    required TResult Function(String id, bool isSelected) selectItem,
    required TResult Function() importData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search)? loadData,
    TResult? Function()? load,
    TResult? Function(String id, bool isSelected)? selectItem,
    TResult? Function()? importData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search)? loadData,
    TResult Function()? load,
    TResult Function(String id, bool isSelected)? selectItem,
    TResult Function()? importData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_Load value) load,
    required TResult Function(_SelectItem value) selectItem,
    required TResult Function(_ImportData value) importData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_Load value)? load,
    TResult? Function(_SelectItem value)? selectItem,
    TResult? Function(_ImportData value)? importData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_Load value)? load,
    TResult Function(_SelectItem value)? selectItem,
    TResult Function(_ImportData value)? importData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadDataImplCopyWith<$Res> {
  factory _$$LoadDataImplCopyWith(
          _$LoadDataImpl value, $Res Function(_$LoadDataImpl) then) =
      __$$LoadDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String search});
}

/// @nodoc
class __$$LoadDataImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$LoadDataImpl>
    implements _$$LoadDataImplCopyWith<$Res> {
  __$$LoadDataImplCopyWithImpl(
      _$LoadDataImpl _value, $Res Function(_$LoadDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
  }) {
    return _then(_$LoadDataImpl(
      null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadDataImpl implements _LoadData {
  const _$LoadDataImpl(this.search);

  @override
  final String search;

  @override
  String toString() {
    return 'ProductEvent.loadData(search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadDataImpl &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadDataImplCopyWith<_$LoadDataImpl> get copyWith =>
      __$$LoadDataImplCopyWithImpl<_$LoadDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search) loadData,
    required TResult Function() load,
    required TResult Function(String id, bool isSelected) selectItem,
    required TResult Function() importData,
  }) {
    return loadData(search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search)? loadData,
    TResult? Function()? load,
    TResult? Function(String id, bool isSelected)? selectItem,
    TResult? Function()? importData,
  }) {
    return loadData?.call(search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search)? loadData,
    TResult Function()? load,
    TResult Function(String id, bool isSelected)? selectItem,
    TResult Function()? importData,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_Load value) load,
    required TResult Function(_SelectItem value) selectItem,
    required TResult Function(_ImportData value) importData,
  }) {
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_Load value)? load,
    TResult? Function(_SelectItem value)? selectItem,
    TResult? Function(_ImportData value)? importData,
  }) {
    return loadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_Load value)? load,
    TResult Function(_SelectItem value)? selectItem,
    TResult Function(_ImportData value)? importData,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class _LoadData implements ProductEvent {
  const factory _LoadData(final String search) = _$LoadDataImpl;

  String get search;
  @JsonKey(ignore: true)
  _$$LoadDataImplCopyWith<_$LoadDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadImplCopyWith<$Res> {
  factory _$$LoadImplCopyWith(
          _$LoadImpl value, $Res Function(_$LoadImpl) then) =
      __$$LoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$LoadImpl>
    implements _$$LoadImplCopyWith<$Res> {
  __$$LoadImplCopyWithImpl(_$LoadImpl _value, $Res Function(_$LoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadImpl implements _Load {
  const _$LoadImpl();

  @override
  String toString() {
    return 'ProductEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search) loadData,
    required TResult Function() load,
    required TResult Function(String id, bool isSelected) selectItem,
    required TResult Function() importData,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search)? loadData,
    TResult? Function()? load,
    TResult? Function(String id, bool isSelected)? selectItem,
    TResult? Function()? importData,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search)? loadData,
    TResult Function()? load,
    TResult Function(String id, bool isSelected)? selectItem,
    TResult Function()? importData,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_Load value) load,
    required TResult Function(_SelectItem value) selectItem,
    required TResult Function(_ImportData value) importData,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_Load value)? load,
    TResult? Function(_SelectItem value)? selectItem,
    TResult? Function(_ImportData value)? importData,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_Load value)? load,
    TResult Function(_SelectItem value)? selectItem,
    TResult Function(_ImportData value)? importData,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements ProductEvent {
  const factory _Load() = _$LoadImpl;
}

/// @nodoc
abstract class _$$SelectItemImplCopyWith<$Res> {
  factory _$$SelectItemImplCopyWith(
          _$SelectItemImpl value, $Res Function(_$SelectItemImpl) then) =
      __$$SelectItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, bool isSelected});
}

/// @nodoc
class __$$SelectItemImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$SelectItemImpl>
    implements _$$SelectItemImplCopyWith<$Res> {
  __$$SelectItemImplCopyWithImpl(
      _$SelectItemImpl _value, $Res Function(_$SelectItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isSelected = null,
  }) {
    return _then(_$SelectItemImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SelectItemImpl implements _SelectItem {
  const _$SelectItemImpl(this.id, this.isSelected);

  @override
  final String id;
  @override
  final bool isSelected;

  @override
  String toString() {
    return 'ProductEvent.selectItem(id: $id, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectItemImplCopyWith<_$SelectItemImpl> get copyWith =>
      __$$SelectItemImplCopyWithImpl<_$SelectItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search) loadData,
    required TResult Function() load,
    required TResult Function(String id, bool isSelected) selectItem,
    required TResult Function() importData,
  }) {
    return selectItem(id, isSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search)? loadData,
    TResult? Function()? load,
    TResult? Function(String id, bool isSelected)? selectItem,
    TResult? Function()? importData,
  }) {
    return selectItem?.call(id, isSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search)? loadData,
    TResult Function()? load,
    TResult Function(String id, bool isSelected)? selectItem,
    TResult Function()? importData,
    required TResult orElse(),
  }) {
    if (selectItem != null) {
      return selectItem(id, isSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_Load value) load,
    required TResult Function(_SelectItem value) selectItem,
    required TResult Function(_ImportData value) importData,
  }) {
    return selectItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_Load value)? load,
    TResult? Function(_SelectItem value)? selectItem,
    TResult? Function(_ImportData value)? importData,
  }) {
    return selectItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_Load value)? load,
    TResult Function(_SelectItem value)? selectItem,
    TResult Function(_ImportData value)? importData,
    required TResult orElse(),
  }) {
    if (selectItem != null) {
      return selectItem(this);
    }
    return orElse();
  }
}

abstract class _SelectItem implements ProductEvent {
  const factory _SelectItem(final String id, final bool isSelected) =
      _$SelectItemImpl;

  String get id;
  bool get isSelected;
  @JsonKey(ignore: true)
  _$$SelectItemImplCopyWith<_$SelectItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImportDataImplCopyWith<$Res> {
  factory _$$ImportDataImplCopyWith(
          _$ImportDataImpl value, $Res Function(_$ImportDataImpl) then) =
      __$$ImportDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ImportDataImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$ImportDataImpl>
    implements _$$ImportDataImplCopyWith<$Res> {
  __$$ImportDataImplCopyWithImpl(
      _$ImportDataImpl _value, $Res Function(_$ImportDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ImportDataImpl implements _ImportData {
  const _$ImportDataImpl();

  @override
  String toString() {
    return 'ProductEvent.importData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ImportDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search) loadData,
    required TResult Function() load,
    required TResult Function(String id, bool isSelected) selectItem,
    required TResult Function() importData,
  }) {
    return importData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search)? loadData,
    TResult? Function()? load,
    TResult? Function(String id, bool isSelected)? selectItem,
    TResult? Function()? importData,
  }) {
    return importData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search)? loadData,
    TResult Function()? load,
    TResult Function(String id, bool isSelected)? selectItem,
    TResult Function()? importData,
    required TResult orElse(),
  }) {
    if (importData != null) {
      return importData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_Load value) load,
    required TResult Function(_SelectItem value) selectItem,
    required TResult Function(_ImportData value) importData,
  }) {
    return importData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_Load value)? load,
    TResult? Function(_SelectItem value)? selectItem,
    TResult? Function(_ImportData value)? importData,
  }) {
    return importData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_Load value)? load,
    TResult Function(_SelectItem value)? selectItem,
    TResult Function(_ImportData value)? importData,
    required TResult orElse(),
  }) {
    if (importData != null) {
      return importData(this);
    }
    return orElse();
  }
}

abstract class _ImportData implements ProductEvent {
  const factory _ImportData() = _$ImportDataImpl;
}

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<Product> products,
            bool? loading,
            Error? error,
            Set<String> selectedItems,
            bool? successful,
            String? message)
        done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Product> products, bool? loading, Error? error,
            Set<String> selectedItems, bool? successful, String? message)?
        done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> products, bool? loading, Error? error,
            Set<String> selectedItems, bool? successful, String? message)?
        done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Done value) done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Done value)? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ProductState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<Product> products,
            bool? loading,
            Error? error,
            Set<String> selectedItems,
            bool? successful,
            String? message)
        done,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Product> products, bool? loading, Error? error,
            Set<String> selectedItems, bool? successful, String? message)?
        done,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> products, bool? loading, Error? error,
            Set<String> selectedItems, bool? successful, String? message)?
        done,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Done value) done,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Done value)? done,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ProductState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$DoneImplCopyWith<$Res> {
  factory _$$DoneImplCopyWith(
          _$DoneImpl value, $Res Function(_$DoneImpl) then) =
      __$$DoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Product> products,
      bool? loading,
      Error? error,
      Set<String> selectedItems,
      bool? successful,
      String? message});

  $ErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$DoneImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$DoneImpl>
    implements _$$DoneImplCopyWith<$Res> {
  __$$DoneImplCopyWithImpl(_$DoneImpl _value, $Res Function(_$DoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? loading = freezed,
    Object? error = freezed,
    Object? selectedItems = null,
    Object? successful = freezed,
    Object? message = freezed,
  }) {
    return _then(_$DoneImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      loading: freezed == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
      selectedItems: null == selectedItems
          ? _value._selectedItems
          : selectedItems // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      successful: freezed == successful
          ? _value.successful
          : successful // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $ErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$DoneImpl implements _Done {
  const _$DoneImpl(final List<Product> products,
      {this.loading,
      this.error,
      final Set<String> selectedItems = const <String>{},
      this.successful,
      this.message})
      : _products = products,
        _selectedItems = selectedItems;

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final bool? loading;
  @override
  final Error? error;
  final Set<String> _selectedItems;
  @override
  @JsonKey()
  Set<String> get selectedItems {
    if (_selectedItems is EqualUnmodifiableSetView) return _selectedItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedItems);
  }

  @override
  final bool? successful;
  @override
  final String? message;

  @override
  String toString() {
    return 'ProductState.done(products: $products, loading: $loading, error: $error, selectedItems: $selectedItems, successful: $successful, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoneImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._selectedItems, _selectedItems) &&
            (identical(other.successful, successful) ||
                other.successful == successful) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      loading,
      error,
      const DeepCollectionEquality().hash(_selectedItems),
      successful,
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoneImplCopyWith<_$DoneImpl> get copyWith =>
      __$$DoneImplCopyWithImpl<_$DoneImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<Product> products,
            bool? loading,
            Error? error,
            Set<String> selectedItems,
            bool? successful,
            String? message)
        done,
  }) {
    return done(
        products, this.loading, error, selectedItems, successful, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Product> products, bool? loading, Error? error,
            Set<String> selectedItems, bool? successful, String? message)?
        done,
  }) {
    return done?.call(
        products, this.loading, error, selectedItems, successful, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> products, bool? loading, Error? error,
            Set<String> selectedItems, bool? successful, String? message)?
        done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(
          products, this.loading, error, selectedItems, successful, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Done value) done,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Done value)? done,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _Done implements ProductState {
  const factory _Done(final List<Product> products,
      {final bool? loading,
      final Error? error,
      final Set<String> selectedItems,
      final bool? successful,
      final String? message}) = _$DoneImpl;

  List<Product> get products;
  bool? get loading;
  Error? get error;
  Set<String> get selectedItems;
  bool? get successful;
  String? get message;
  @JsonKey(ignore: true)
  _$$DoneImplCopyWith<_$DoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
