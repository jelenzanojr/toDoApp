// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'errors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Error _$ErrorFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'networkError':
      return NetworkError.fromJson(json);
    case 'serverError':
      return _ServerError.fromJson(json);
    case 'accessTokenError':
      return _AccessTokenError.fromJson(json);
    case 'unauthorizedError':
      return _UnauthorizedError.fromJson(json);
    case 'notFoundError':
      return _NotFoundError.fromJson(json);
    case 'resourceForbidden':
      return _ResourceForbidden.fromJson(json);
    case 'unsplashError':
      return _UnsplashError.fromJson(json);
    case 'storeClosed':
      return _StoreClosed.fromJson(json);
    case 'loginTimeOut':
      return _LoginTimeOut.fromJson(json);
    case 'apiError':
      return _ApiError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Error',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Error {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) networkError,
    required TResult Function() serverError,
    required TResult Function() accessTokenError,
    required TResult Function() unauthorizedError,
    required TResult Function() notFoundError,
    required TResult Function() resourceForbidden,
    required TResult Function() unsplashError,
    required TResult Function() storeClosed,
    required TResult Function() loginTimeOut,
    required TResult Function(String? message) apiError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? networkError,
    TResult? Function()? serverError,
    TResult? Function()? accessTokenError,
    TResult? Function()? unauthorizedError,
    TResult? Function()? notFoundError,
    TResult? Function()? resourceForbidden,
    TResult? Function()? unsplashError,
    TResult? Function()? storeClosed,
    TResult? Function()? loginTimeOut,
    TResult? Function(String? message)? apiError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? networkError,
    TResult Function()? serverError,
    TResult Function()? accessTokenError,
    TResult Function()? unauthorizedError,
    TResult Function()? notFoundError,
    TResult Function()? resourceForbidden,
    TResult Function()? unsplashError,
    TResult Function()? storeClosed,
    TResult Function()? loginTimeOut,
    TResult Function(String? message)? apiError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_AccessTokenError value) accessTokenError,
    required TResult Function(_UnauthorizedError value) unauthorizedError,
    required TResult Function(_NotFoundError value) notFoundError,
    required TResult Function(_ResourceForbidden value) resourceForbidden,
    required TResult Function(_UnsplashError value) unsplashError,
    required TResult Function(_StoreClosed value) storeClosed,
    required TResult Function(_LoginTimeOut value) loginTimeOut,
    required TResult Function(_ApiError value) apiError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_AccessTokenError value)? accessTokenError,
    TResult? Function(_UnauthorizedError value)? unauthorizedError,
    TResult? Function(_NotFoundError value)? notFoundError,
    TResult? Function(_ResourceForbidden value)? resourceForbidden,
    TResult? Function(_UnsplashError value)? unsplashError,
    TResult? Function(_StoreClosed value)? storeClosed,
    TResult? Function(_LoginTimeOut value)? loginTimeOut,
    TResult? Function(_ApiError value)? apiError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_AccessTokenError value)? accessTokenError,
    TResult Function(_UnauthorizedError value)? unauthorizedError,
    TResult Function(_NotFoundError value)? notFoundError,
    TResult Function(_ResourceForbidden value)? resourceForbidden,
    TResult Function(_UnsplashError value)? unsplashError,
    TResult Function(_StoreClosed value)? storeClosed,
    TResult Function(_LoginTimeOut value)? loginTimeOut,
    TResult Function(_ApiError value)? apiError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res, Error>;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res, $Val extends Error>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NetworkErrorImplCopyWith<$Res> {
  factory _$$NetworkErrorImplCopyWith(
          _$NetworkErrorImpl value, $Res Function(_$NetworkErrorImpl) then) =
      __$$NetworkErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$NetworkErrorImplCopyWithImpl<$Res>
    extends _$ErrorCopyWithImpl<$Res, _$NetworkErrorImpl>
    implements _$$NetworkErrorImplCopyWith<$Res> {
  __$$NetworkErrorImplCopyWithImpl(
      _$NetworkErrorImpl _value, $Res Function(_$NetworkErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NetworkErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NetworkErrorImpl implements NetworkError {
  _$NetworkErrorImpl({this.message = '', final String? $type})
      : $type = $type ?? 'networkError';

  factory _$NetworkErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$NetworkErrorImplFromJson(json);

  @override
  @JsonKey()
  final String? message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Error.networkError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkErrorImplCopyWith<_$NetworkErrorImpl> get copyWith =>
      __$$NetworkErrorImplCopyWithImpl<_$NetworkErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) networkError,
    required TResult Function() serverError,
    required TResult Function() accessTokenError,
    required TResult Function() unauthorizedError,
    required TResult Function() notFoundError,
    required TResult Function() resourceForbidden,
    required TResult Function() unsplashError,
    required TResult Function() storeClosed,
    required TResult Function() loginTimeOut,
    required TResult Function(String? message) apiError,
  }) {
    return networkError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? networkError,
    TResult? Function()? serverError,
    TResult? Function()? accessTokenError,
    TResult? Function()? unauthorizedError,
    TResult? Function()? notFoundError,
    TResult? Function()? resourceForbidden,
    TResult? Function()? unsplashError,
    TResult? Function()? storeClosed,
    TResult? Function()? loginTimeOut,
    TResult? Function(String? message)? apiError,
  }) {
    return networkError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? networkError,
    TResult Function()? serverError,
    TResult Function()? accessTokenError,
    TResult Function()? unauthorizedError,
    TResult Function()? notFoundError,
    TResult Function()? resourceForbidden,
    TResult Function()? unsplashError,
    TResult Function()? storeClosed,
    TResult Function()? loginTimeOut,
    TResult Function(String? message)? apiError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_AccessTokenError value) accessTokenError,
    required TResult Function(_UnauthorizedError value) unauthorizedError,
    required TResult Function(_NotFoundError value) notFoundError,
    required TResult Function(_ResourceForbidden value) resourceForbidden,
    required TResult Function(_UnsplashError value) unsplashError,
    required TResult Function(_StoreClosed value) storeClosed,
    required TResult Function(_LoginTimeOut value) loginTimeOut,
    required TResult Function(_ApiError value) apiError,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_AccessTokenError value)? accessTokenError,
    TResult? Function(_UnauthorizedError value)? unauthorizedError,
    TResult? Function(_NotFoundError value)? notFoundError,
    TResult? Function(_ResourceForbidden value)? resourceForbidden,
    TResult? Function(_UnsplashError value)? unsplashError,
    TResult? Function(_StoreClosed value)? storeClosed,
    TResult? Function(_LoginTimeOut value)? loginTimeOut,
    TResult? Function(_ApiError value)? apiError,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_AccessTokenError value)? accessTokenError,
    TResult Function(_UnauthorizedError value)? unauthorizedError,
    TResult Function(_NotFoundError value)? notFoundError,
    TResult Function(_ResourceForbidden value)? resourceForbidden,
    TResult Function(_UnsplashError value)? unsplashError,
    TResult Function(_StoreClosed value)? storeClosed,
    TResult Function(_LoginTimeOut value)? loginTimeOut,
    TResult Function(_ApiError value)? apiError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NetworkErrorImplToJson(
      this,
    );
  }
}

abstract class NetworkError implements Error {
  factory NetworkError({final String? message}) = _$NetworkErrorImpl;

  factory NetworkError.fromJson(Map<String, dynamic> json) =
      _$NetworkErrorImpl.fromJson;

  String? get message;
  @JsonKey(ignore: true)
  _$$NetworkErrorImplCopyWith<_$NetworkErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$ErrorCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ServerErrorImpl implements _ServerError {
  _$ServerErrorImpl({final String? $type}) : $type = $type ?? 'serverError';

  factory _$ServerErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerErrorImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Error.serverError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerErrorImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) networkError,
    required TResult Function() serverError,
    required TResult Function() accessTokenError,
    required TResult Function() unauthorizedError,
    required TResult Function() notFoundError,
    required TResult Function() resourceForbidden,
    required TResult Function() unsplashError,
    required TResult Function() storeClosed,
    required TResult Function() loginTimeOut,
    required TResult Function(String? message) apiError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? networkError,
    TResult? Function()? serverError,
    TResult? Function()? accessTokenError,
    TResult? Function()? unauthorizedError,
    TResult? Function()? notFoundError,
    TResult? Function()? resourceForbidden,
    TResult? Function()? unsplashError,
    TResult? Function()? storeClosed,
    TResult? Function()? loginTimeOut,
    TResult? Function(String? message)? apiError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? networkError,
    TResult Function()? serverError,
    TResult Function()? accessTokenError,
    TResult Function()? unauthorizedError,
    TResult Function()? notFoundError,
    TResult Function()? resourceForbidden,
    TResult Function()? unsplashError,
    TResult Function()? storeClosed,
    TResult Function()? loginTimeOut,
    TResult Function(String? message)? apiError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_AccessTokenError value) accessTokenError,
    required TResult Function(_UnauthorizedError value) unauthorizedError,
    required TResult Function(_NotFoundError value) notFoundError,
    required TResult Function(_ResourceForbidden value) resourceForbidden,
    required TResult Function(_UnsplashError value) unsplashError,
    required TResult Function(_StoreClosed value) storeClosed,
    required TResult Function(_LoginTimeOut value) loginTimeOut,
    required TResult Function(_ApiError value) apiError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_AccessTokenError value)? accessTokenError,
    TResult? Function(_UnauthorizedError value)? unauthorizedError,
    TResult? Function(_NotFoundError value)? notFoundError,
    TResult? Function(_ResourceForbidden value)? resourceForbidden,
    TResult? Function(_UnsplashError value)? unsplashError,
    TResult? Function(_StoreClosed value)? storeClosed,
    TResult? Function(_LoginTimeOut value)? loginTimeOut,
    TResult? Function(_ApiError value)? apiError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_AccessTokenError value)? accessTokenError,
    TResult Function(_UnauthorizedError value)? unauthorizedError,
    TResult Function(_NotFoundError value)? notFoundError,
    TResult Function(_ResourceForbidden value)? resourceForbidden,
    TResult Function(_UnsplashError value)? unsplashError,
    TResult Function(_StoreClosed value)? storeClosed,
    TResult Function(_LoginTimeOut value)? loginTimeOut,
    TResult Function(_ApiError value)? apiError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerErrorImplToJson(
      this,
    );
  }
}

abstract class _ServerError implements Error {
  factory _ServerError() = _$ServerErrorImpl;

  factory _ServerError.fromJson(Map<String, dynamic> json) =
      _$ServerErrorImpl.fromJson;
}

/// @nodoc
abstract class _$$AccessTokenErrorImplCopyWith<$Res> {
  factory _$$AccessTokenErrorImplCopyWith(_$AccessTokenErrorImpl value,
          $Res Function(_$AccessTokenErrorImpl) then) =
      __$$AccessTokenErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccessTokenErrorImplCopyWithImpl<$Res>
    extends _$ErrorCopyWithImpl<$Res, _$AccessTokenErrorImpl>
    implements _$$AccessTokenErrorImplCopyWith<$Res> {
  __$$AccessTokenErrorImplCopyWithImpl(_$AccessTokenErrorImpl _value,
      $Res Function(_$AccessTokenErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AccessTokenErrorImpl implements _AccessTokenError {
  _$AccessTokenErrorImpl({final String? $type})
      : $type = $type ?? 'accessTokenError';

  factory _$AccessTokenErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccessTokenErrorImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Error.accessTokenError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AccessTokenErrorImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) networkError,
    required TResult Function() serverError,
    required TResult Function() accessTokenError,
    required TResult Function() unauthorizedError,
    required TResult Function() notFoundError,
    required TResult Function() resourceForbidden,
    required TResult Function() unsplashError,
    required TResult Function() storeClosed,
    required TResult Function() loginTimeOut,
    required TResult Function(String? message) apiError,
  }) {
    return accessTokenError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? networkError,
    TResult? Function()? serverError,
    TResult? Function()? accessTokenError,
    TResult? Function()? unauthorizedError,
    TResult? Function()? notFoundError,
    TResult? Function()? resourceForbidden,
    TResult? Function()? unsplashError,
    TResult? Function()? storeClosed,
    TResult? Function()? loginTimeOut,
    TResult? Function(String? message)? apiError,
  }) {
    return accessTokenError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? networkError,
    TResult Function()? serverError,
    TResult Function()? accessTokenError,
    TResult Function()? unauthorizedError,
    TResult Function()? notFoundError,
    TResult Function()? resourceForbidden,
    TResult Function()? unsplashError,
    TResult Function()? storeClosed,
    TResult Function()? loginTimeOut,
    TResult Function(String? message)? apiError,
    required TResult orElse(),
  }) {
    if (accessTokenError != null) {
      return accessTokenError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_AccessTokenError value) accessTokenError,
    required TResult Function(_UnauthorizedError value) unauthorizedError,
    required TResult Function(_NotFoundError value) notFoundError,
    required TResult Function(_ResourceForbidden value) resourceForbidden,
    required TResult Function(_UnsplashError value) unsplashError,
    required TResult Function(_StoreClosed value) storeClosed,
    required TResult Function(_LoginTimeOut value) loginTimeOut,
    required TResult Function(_ApiError value) apiError,
  }) {
    return accessTokenError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_AccessTokenError value)? accessTokenError,
    TResult? Function(_UnauthorizedError value)? unauthorizedError,
    TResult? Function(_NotFoundError value)? notFoundError,
    TResult? Function(_ResourceForbidden value)? resourceForbidden,
    TResult? Function(_UnsplashError value)? unsplashError,
    TResult? Function(_StoreClosed value)? storeClosed,
    TResult? Function(_LoginTimeOut value)? loginTimeOut,
    TResult? Function(_ApiError value)? apiError,
  }) {
    return accessTokenError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_AccessTokenError value)? accessTokenError,
    TResult Function(_UnauthorizedError value)? unauthorizedError,
    TResult Function(_NotFoundError value)? notFoundError,
    TResult Function(_ResourceForbidden value)? resourceForbidden,
    TResult Function(_UnsplashError value)? unsplashError,
    TResult Function(_StoreClosed value)? storeClosed,
    TResult Function(_LoginTimeOut value)? loginTimeOut,
    TResult Function(_ApiError value)? apiError,
    required TResult orElse(),
  }) {
    if (accessTokenError != null) {
      return accessTokenError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AccessTokenErrorImplToJson(
      this,
    );
  }
}

abstract class _AccessTokenError implements Error {
  factory _AccessTokenError() = _$AccessTokenErrorImpl;

  factory _AccessTokenError.fromJson(Map<String, dynamic> json) =
      _$AccessTokenErrorImpl.fromJson;
}

/// @nodoc
abstract class _$$UnauthorizedErrorImplCopyWith<$Res> {
  factory _$$UnauthorizedErrorImplCopyWith(_$UnauthorizedErrorImpl value,
          $Res Function(_$UnauthorizedErrorImpl) then) =
      __$$UnauthorizedErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthorizedErrorImplCopyWithImpl<$Res>
    extends _$ErrorCopyWithImpl<$Res, _$UnauthorizedErrorImpl>
    implements _$$UnauthorizedErrorImplCopyWith<$Res> {
  __$$UnauthorizedErrorImplCopyWithImpl(_$UnauthorizedErrorImpl _value,
      $Res Function(_$UnauthorizedErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$UnauthorizedErrorImpl implements _UnauthorizedError {
  _$UnauthorizedErrorImpl({final String? $type})
      : $type = $type ?? 'unauthorizedError';

  factory _$UnauthorizedErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnauthorizedErrorImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Error.unauthorizedError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthorizedErrorImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) networkError,
    required TResult Function() serverError,
    required TResult Function() accessTokenError,
    required TResult Function() unauthorizedError,
    required TResult Function() notFoundError,
    required TResult Function() resourceForbidden,
    required TResult Function() unsplashError,
    required TResult Function() storeClosed,
    required TResult Function() loginTimeOut,
    required TResult Function(String? message) apiError,
  }) {
    return unauthorizedError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? networkError,
    TResult? Function()? serverError,
    TResult? Function()? accessTokenError,
    TResult? Function()? unauthorizedError,
    TResult? Function()? notFoundError,
    TResult? Function()? resourceForbidden,
    TResult? Function()? unsplashError,
    TResult? Function()? storeClosed,
    TResult? Function()? loginTimeOut,
    TResult? Function(String? message)? apiError,
  }) {
    return unauthorizedError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? networkError,
    TResult Function()? serverError,
    TResult Function()? accessTokenError,
    TResult Function()? unauthorizedError,
    TResult Function()? notFoundError,
    TResult Function()? resourceForbidden,
    TResult Function()? unsplashError,
    TResult Function()? storeClosed,
    TResult Function()? loginTimeOut,
    TResult Function(String? message)? apiError,
    required TResult orElse(),
  }) {
    if (unauthorizedError != null) {
      return unauthorizedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_AccessTokenError value) accessTokenError,
    required TResult Function(_UnauthorizedError value) unauthorizedError,
    required TResult Function(_NotFoundError value) notFoundError,
    required TResult Function(_ResourceForbidden value) resourceForbidden,
    required TResult Function(_UnsplashError value) unsplashError,
    required TResult Function(_StoreClosed value) storeClosed,
    required TResult Function(_LoginTimeOut value) loginTimeOut,
    required TResult Function(_ApiError value) apiError,
  }) {
    return unauthorizedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_AccessTokenError value)? accessTokenError,
    TResult? Function(_UnauthorizedError value)? unauthorizedError,
    TResult? Function(_NotFoundError value)? notFoundError,
    TResult? Function(_ResourceForbidden value)? resourceForbidden,
    TResult? Function(_UnsplashError value)? unsplashError,
    TResult? Function(_StoreClosed value)? storeClosed,
    TResult? Function(_LoginTimeOut value)? loginTimeOut,
    TResult? Function(_ApiError value)? apiError,
  }) {
    return unauthorizedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_AccessTokenError value)? accessTokenError,
    TResult Function(_UnauthorizedError value)? unauthorizedError,
    TResult Function(_NotFoundError value)? notFoundError,
    TResult Function(_ResourceForbidden value)? resourceForbidden,
    TResult Function(_UnsplashError value)? unsplashError,
    TResult Function(_StoreClosed value)? storeClosed,
    TResult Function(_LoginTimeOut value)? loginTimeOut,
    TResult Function(_ApiError value)? apiError,
    required TResult orElse(),
  }) {
    if (unauthorizedError != null) {
      return unauthorizedError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnauthorizedErrorImplToJson(
      this,
    );
  }
}

abstract class _UnauthorizedError implements Error {
  factory _UnauthorizedError() = _$UnauthorizedErrorImpl;

  factory _UnauthorizedError.fromJson(Map<String, dynamic> json) =
      _$UnauthorizedErrorImpl.fromJson;
}

/// @nodoc
abstract class _$$NotFoundErrorImplCopyWith<$Res> {
  factory _$$NotFoundErrorImplCopyWith(
          _$NotFoundErrorImpl value, $Res Function(_$NotFoundErrorImpl) then) =
      __$$NotFoundErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotFoundErrorImplCopyWithImpl<$Res>
    extends _$ErrorCopyWithImpl<$Res, _$NotFoundErrorImpl>
    implements _$$NotFoundErrorImplCopyWith<$Res> {
  __$$NotFoundErrorImplCopyWithImpl(
      _$NotFoundErrorImpl _value, $Res Function(_$NotFoundErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$NotFoundErrorImpl implements _NotFoundError {
  _$NotFoundErrorImpl({final String? $type}) : $type = $type ?? 'notFoundError';

  factory _$NotFoundErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotFoundErrorImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Error.notFoundError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotFoundErrorImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) networkError,
    required TResult Function() serverError,
    required TResult Function() accessTokenError,
    required TResult Function() unauthorizedError,
    required TResult Function() notFoundError,
    required TResult Function() resourceForbidden,
    required TResult Function() unsplashError,
    required TResult Function() storeClosed,
    required TResult Function() loginTimeOut,
    required TResult Function(String? message) apiError,
  }) {
    return notFoundError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? networkError,
    TResult? Function()? serverError,
    TResult? Function()? accessTokenError,
    TResult? Function()? unauthorizedError,
    TResult? Function()? notFoundError,
    TResult? Function()? resourceForbidden,
    TResult? Function()? unsplashError,
    TResult? Function()? storeClosed,
    TResult? Function()? loginTimeOut,
    TResult? Function(String? message)? apiError,
  }) {
    return notFoundError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? networkError,
    TResult Function()? serverError,
    TResult Function()? accessTokenError,
    TResult Function()? unauthorizedError,
    TResult Function()? notFoundError,
    TResult Function()? resourceForbidden,
    TResult Function()? unsplashError,
    TResult Function()? storeClosed,
    TResult Function()? loginTimeOut,
    TResult Function(String? message)? apiError,
    required TResult orElse(),
  }) {
    if (notFoundError != null) {
      return notFoundError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_AccessTokenError value) accessTokenError,
    required TResult Function(_UnauthorizedError value) unauthorizedError,
    required TResult Function(_NotFoundError value) notFoundError,
    required TResult Function(_ResourceForbidden value) resourceForbidden,
    required TResult Function(_UnsplashError value) unsplashError,
    required TResult Function(_StoreClosed value) storeClosed,
    required TResult Function(_LoginTimeOut value) loginTimeOut,
    required TResult Function(_ApiError value) apiError,
  }) {
    return notFoundError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_AccessTokenError value)? accessTokenError,
    TResult? Function(_UnauthorizedError value)? unauthorizedError,
    TResult? Function(_NotFoundError value)? notFoundError,
    TResult? Function(_ResourceForbidden value)? resourceForbidden,
    TResult? Function(_UnsplashError value)? unsplashError,
    TResult? Function(_StoreClosed value)? storeClosed,
    TResult? Function(_LoginTimeOut value)? loginTimeOut,
    TResult? Function(_ApiError value)? apiError,
  }) {
    return notFoundError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_AccessTokenError value)? accessTokenError,
    TResult Function(_UnauthorizedError value)? unauthorizedError,
    TResult Function(_NotFoundError value)? notFoundError,
    TResult Function(_ResourceForbidden value)? resourceForbidden,
    TResult Function(_UnsplashError value)? unsplashError,
    TResult Function(_StoreClosed value)? storeClosed,
    TResult Function(_LoginTimeOut value)? loginTimeOut,
    TResult Function(_ApiError value)? apiError,
    required TResult orElse(),
  }) {
    if (notFoundError != null) {
      return notFoundError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NotFoundErrorImplToJson(
      this,
    );
  }
}

abstract class _NotFoundError implements Error {
  factory _NotFoundError() = _$NotFoundErrorImpl;

  factory _NotFoundError.fromJson(Map<String, dynamic> json) =
      _$NotFoundErrorImpl.fromJson;
}

/// @nodoc
abstract class _$$ResourceForbiddenImplCopyWith<$Res> {
  factory _$$ResourceForbiddenImplCopyWith(_$ResourceForbiddenImpl value,
          $Res Function(_$ResourceForbiddenImpl) then) =
      __$$ResourceForbiddenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResourceForbiddenImplCopyWithImpl<$Res>
    extends _$ErrorCopyWithImpl<$Res, _$ResourceForbiddenImpl>
    implements _$$ResourceForbiddenImplCopyWith<$Res> {
  __$$ResourceForbiddenImplCopyWithImpl(_$ResourceForbiddenImpl _value,
      $Res Function(_$ResourceForbiddenImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ResourceForbiddenImpl implements _ResourceForbidden {
  _$ResourceForbiddenImpl({final String? $type})
      : $type = $type ?? 'resourceForbidden';

  factory _$ResourceForbiddenImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResourceForbiddenImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Error.resourceForbidden()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResourceForbiddenImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) networkError,
    required TResult Function() serverError,
    required TResult Function() accessTokenError,
    required TResult Function() unauthorizedError,
    required TResult Function() notFoundError,
    required TResult Function() resourceForbidden,
    required TResult Function() unsplashError,
    required TResult Function() storeClosed,
    required TResult Function() loginTimeOut,
    required TResult Function(String? message) apiError,
  }) {
    return resourceForbidden();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? networkError,
    TResult? Function()? serverError,
    TResult? Function()? accessTokenError,
    TResult? Function()? unauthorizedError,
    TResult? Function()? notFoundError,
    TResult? Function()? resourceForbidden,
    TResult? Function()? unsplashError,
    TResult? Function()? storeClosed,
    TResult? Function()? loginTimeOut,
    TResult? Function(String? message)? apiError,
  }) {
    return resourceForbidden?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? networkError,
    TResult Function()? serverError,
    TResult Function()? accessTokenError,
    TResult Function()? unauthorizedError,
    TResult Function()? notFoundError,
    TResult Function()? resourceForbidden,
    TResult Function()? unsplashError,
    TResult Function()? storeClosed,
    TResult Function()? loginTimeOut,
    TResult Function(String? message)? apiError,
    required TResult orElse(),
  }) {
    if (resourceForbidden != null) {
      return resourceForbidden();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_AccessTokenError value) accessTokenError,
    required TResult Function(_UnauthorizedError value) unauthorizedError,
    required TResult Function(_NotFoundError value) notFoundError,
    required TResult Function(_ResourceForbidden value) resourceForbidden,
    required TResult Function(_UnsplashError value) unsplashError,
    required TResult Function(_StoreClosed value) storeClosed,
    required TResult Function(_LoginTimeOut value) loginTimeOut,
    required TResult Function(_ApiError value) apiError,
  }) {
    return resourceForbidden(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_AccessTokenError value)? accessTokenError,
    TResult? Function(_UnauthorizedError value)? unauthorizedError,
    TResult? Function(_NotFoundError value)? notFoundError,
    TResult? Function(_ResourceForbidden value)? resourceForbidden,
    TResult? Function(_UnsplashError value)? unsplashError,
    TResult? Function(_StoreClosed value)? storeClosed,
    TResult? Function(_LoginTimeOut value)? loginTimeOut,
    TResult? Function(_ApiError value)? apiError,
  }) {
    return resourceForbidden?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_AccessTokenError value)? accessTokenError,
    TResult Function(_UnauthorizedError value)? unauthorizedError,
    TResult Function(_NotFoundError value)? notFoundError,
    TResult Function(_ResourceForbidden value)? resourceForbidden,
    TResult Function(_UnsplashError value)? unsplashError,
    TResult Function(_StoreClosed value)? storeClosed,
    TResult Function(_LoginTimeOut value)? loginTimeOut,
    TResult Function(_ApiError value)? apiError,
    required TResult orElse(),
  }) {
    if (resourceForbidden != null) {
      return resourceForbidden(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ResourceForbiddenImplToJson(
      this,
    );
  }
}

abstract class _ResourceForbidden implements Error {
  factory _ResourceForbidden() = _$ResourceForbiddenImpl;

  factory _ResourceForbidden.fromJson(Map<String, dynamic> json) =
      _$ResourceForbiddenImpl.fromJson;
}

/// @nodoc
abstract class _$$UnsplashErrorImplCopyWith<$Res> {
  factory _$$UnsplashErrorImplCopyWith(
          _$UnsplashErrorImpl value, $Res Function(_$UnsplashErrorImpl) then) =
      __$$UnsplashErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnsplashErrorImplCopyWithImpl<$Res>
    extends _$ErrorCopyWithImpl<$Res, _$UnsplashErrorImpl>
    implements _$$UnsplashErrorImplCopyWith<$Res> {
  __$$UnsplashErrorImplCopyWithImpl(
      _$UnsplashErrorImpl _value, $Res Function(_$UnsplashErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$UnsplashErrorImpl implements _UnsplashError {
  _$UnsplashErrorImpl({final String? $type}) : $type = $type ?? 'unsplashError';

  factory _$UnsplashErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnsplashErrorImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Error.unsplashError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnsplashErrorImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) networkError,
    required TResult Function() serverError,
    required TResult Function() accessTokenError,
    required TResult Function() unauthorizedError,
    required TResult Function() notFoundError,
    required TResult Function() resourceForbidden,
    required TResult Function() unsplashError,
    required TResult Function() storeClosed,
    required TResult Function() loginTimeOut,
    required TResult Function(String? message) apiError,
  }) {
    return unsplashError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? networkError,
    TResult? Function()? serverError,
    TResult? Function()? accessTokenError,
    TResult? Function()? unauthorizedError,
    TResult? Function()? notFoundError,
    TResult? Function()? resourceForbidden,
    TResult? Function()? unsplashError,
    TResult? Function()? storeClosed,
    TResult? Function()? loginTimeOut,
    TResult? Function(String? message)? apiError,
  }) {
    return unsplashError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? networkError,
    TResult Function()? serverError,
    TResult Function()? accessTokenError,
    TResult Function()? unauthorizedError,
    TResult Function()? notFoundError,
    TResult Function()? resourceForbidden,
    TResult Function()? unsplashError,
    TResult Function()? storeClosed,
    TResult Function()? loginTimeOut,
    TResult Function(String? message)? apiError,
    required TResult orElse(),
  }) {
    if (unsplashError != null) {
      return unsplashError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_AccessTokenError value) accessTokenError,
    required TResult Function(_UnauthorizedError value) unauthorizedError,
    required TResult Function(_NotFoundError value) notFoundError,
    required TResult Function(_ResourceForbidden value) resourceForbidden,
    required TResult Function(_UnsplashError value) unsplashError,
    required TResult Function(_StoreClosed value) storeClosed,
    required TResult Function(_LoginTimeOut value) loginTimeOut,
    required TResult Function(_ApiError value) apiError,
  }) {
    return unsplashError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_AccessTokenError value)? accessTokenError,
    TResult? Function(_UnauthorizedError value)? unauthorizedError,
    TResult? Function(_NotFoundError value)? notFoundError,
    TResult? Function(_ResourceForbidden value)? resourceForbidden,
    TResult? Function(_UnsplashError value)? unsplashError,
    TResult? Function(_StoreClosed value)? storeClosed,
    TResult? Function(_LoginTimeOut value)? loginTimeOut,
    TResult? Function(_ApiError value)? apiError,
  }) {
    return unsplashError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_AccessTokenError value)? accessTokenError,
    TResult Function(_UnauthorizedError value)? unauthorizedError,
    TResult Function(_NotFoundError value)? notFoundError,
    TResult Function(_ResourceForbidden value)? resourceForbidden,
    TResult Function(_UnsplashError value)? unsplashError,
    TResult Function(_StoreClosed value)? storeClosed,
    TResult Function(_LoginTimeOut value)? loginTimeOut,
    TResult Function(_ApiError value)? apiError,
    required TResult orElse(),
  }) {
    if (unsplashError != null) {
      return unsplashError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnsplashErrorImplToJson(
      this,
    );
  }
}

abstract class _UnsplashError implements Error {
  factory _UnsplashError() = _$UnsplashErrorImpl;

  factory _UnsplashError.fromJson(Map<String, dynamic> json) =
      _$UnsplashErrorImpl.fromJson;
}

/// @nodoc
abstract class _$$StoreClosedImplCopyWith<$Res> {
  factory _$$StoreClosedImplCopyWith(
          _$StoreClosedImpl value, $Res Function(_$StoreClosedImpl) then) =
      __$$StoreClosedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StoreClosedImplCopyWithImpl<$Res>
    extends _$ErrorCopyWithImpl<$Res, _$StoreClosedImpl>
    implements _$$StoreClosedImplCopyWith<$Res> {
  __$$StoreClosedImplCopyWithImpl(
      _$StoreClosedImpl _value, $Res Function(_$StoreClosedImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$StoreClosedImpl implements _StoreClosed {
  _$StoreClosedImpl({final String? $type}) : $type = $type ?? 'storeClosed';

  factory _$StoreClosedImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreClosedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Error.storeClosed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StoreClosedImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) networkError,
    required TResult Function() serverError,
    required TResult Function() accessTokenError,
    required TResult Function() unauthorizedError,
    required TResult Function() notFoundError,
    required TResult Function() resourceForbidden,
    required TResult Function() unsplashError,
    required TResult Function() storeClosed,
    required TResult Function() loginTimeOut,
    required TResult Function(String? message) apiError,
  }) {
    return storeClosed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? networkError,
    TResult? Function()? serverError,
    TResult? Function()? accessTokenError,
    TResult? Function()? unauthorizedError,
    TResult? Function()? notFoundError,
    TResult? Function()? resourceForbidden,
    TResult? Function()? unsplashError,
    TResult? Function()? storeClosed,
    TResult? Function()? loginTimeOut,
    TResult? Function(String? message)? apiError,
  }) {
    return storeClosed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? networkError,
    TResult Function()? serverError,
    TResult Function()? accessTokenError,
    TResult Function()? unauthorizedError,
    TResult Function()? notFoundError,
    TResult Function()? resourceForbidden,
    TResult Function()? unsplashError,
    TResult Function()? storeClosed,
    TResult Function()? loginTimeOut,
    TResult Function(String? message)? apiError,
    required TResult orElse(),
  }) {
    if (storeClosed != null) {
      return storeClosed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_AccessTokenError value) accessTokenError,
    required TResult Function(_UnauthorizedError value) unauthorizedError,
    required TResult Function(_NotFoundError value) notFoundError,
    required TResult Function(_ResourceForbidden value) resourceForbidden,
    required TResult Function(_UnsplashError value) unsplashError,
    required TResult Function(_StoreClosed value) storeClosed,
    required TResult Function(_LoginTimeOut value) loginTimeOut,
    required TResult Function(_ApiError value) apiError,
  }) {
    return storeClosed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_AccessTokenError value)? accessTokenError,
    TResult? Function(_UnauthorizedError value)? unauthorizedError,
    TResult? Function(_NotFoundError value)? notFoundError,
    TResult? Function(_ResourceForbidden value)? resourceForbidden,
    TResult? Function(_UnsplashError value)? unsplashError,
    TResult? Function(_StoreClosed value)? storeClosed,
    TResult? Function(_LoginTimeOut value)? loginTimeOut,
    TResult? Function(_ApiError value)? apiError,
  }) {
    return storeClosed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_AccessTokenError value)? accessTokenError,
    TResult Function(_UnauthorizedError value)? unauthorizedError,
    TResult Function(_NotFoundError value)? notFoundError,
    TResult Function(_ResourceForbidden value)? resourceForbidden,
    TResult Function(_UnsplashError value)? unsplashError,
    TResult Function(_StoreClosed value)? storeClosed,
    TResult Function(_LoginTimeOut value)? loginTimeOut,
    TResult Function(_ApiError value)? apiError,
    required TResult orElse(),
  }) {
    if (storeClosed != null) {
      return storeClosed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreClosedImplToJson(
      this,
    );
  }
}

abstract class _StoreClosed implements Error {
  factory _StoreClosed() = _$StoreClosedImpl;

  factory _StoreClosed.fromJson(Map<String, dynamic> json) =
      _$StoreClosedImpl.fromJson;
}

/// @nodoc
abstract class _$$LoginTimeOutImplCopyWith<$Res> {
  factory _$$LoginTimeOutImplCopyWith(
          _$LoginTimeOutImpl value, $Res Function(_$LoginTimeOutImpl) then) =
      __$$LoginTimeOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginTimeOutImplCopyWithImpl<$Res>
    extends _$ErrorCopyWithImpl<$Res, _$LoginTimeOutImpl>
    implements _$$LoginTimeOutImplCopyWith<$Res> {
  __$$LoginTimeOutImplCopyWithImpl(
      _$LoginTimeOutImpl _value, $Res Function(_$LoginTimeOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$LoginTimeOutImpl implements _LoginTimeOut {
  _$LoginTimeOutImpl({final String? $type}) : $type = $type ?? 'loginTimeOut';

  factory _$LoginTimeOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginTimeOutImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Error.loginTimeOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginTimeOutImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) networkError,
    required TResult Function() serverError,
    required TResult Function() accessTokenError,
    required TResult Function() unauthorizedError,
    required TResult Function() notFoundError,
    required TResult Function() resourceForbidden,
    required TResult Function() unsplashError,
    required TResult Function() storeClosed,
    required TResult Function() loginTimeOut,
    required TResult Function(String? message) apiError,
  }) {
    return loginTimeOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? networkError,
    TResult? Function()? serverError,
    TResult? Function()? accessTokenError,
    TResult? Function()? unauthorizedError,
    TResult? Function()? notFoundError,
    TResult? Function()? resourceForbidden,
    TResult? Function()? unsplashError,
    TResult? Function()? storeClosed,
    TResult? Function()? loginTimeOut,
    TResult? Function(String? message)? apiError,
  }) {
    return loginTimeOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? networkError,
    TResult Function()? serverError,
    TResult Function()? accessTokenError,
    TResult Function()? unauthorizedError,
    TResult Function()? notFoundError,
    TResult Function()? resourceForbidden,
    TResult Function()? unsplashError,
    TResult Function()? storeClosed,
    TResult Function()? loginTimeOut,
    TResult Function(String? message)? apiError,
    required TResult orElse(),
  }) {
    if (loginTimeOut != null) {
      return loginTimeOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_AccessTokenError value) accessTokenError,
    required TResult Function(_UnauthorizedError value) unauthorizedError,
    required TResult Function(_NotFoundError value) notFoundError,
    required TResult Function(_ResourceForbidden value) resourceForbidden,
    required TResult Function(_UnsplashError value) unsplashError,
    required TResult Function(_StoreClosed value) storeClosed,
    required TResult Function(_LoginTimeOut value) loginTimeOut,
    required TResult Function(_ApiError value) apiError,
  }) {
    return loginTimeOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_AccessTokenError value)? accessTokenError,
    TResult? Function(_UnauthorizedError value)? unauthorizedError,
    TResult? Function(_NotFoundError value)? notFoundError,
    TResult? Function(_ResourceForbidden value)? resourceForbidden,
    TResult? Function(_UnsplashError value)? unsplashError,
    TResult? Function(_StoreClosed value)? storeClosed,
    TResult? Function(_LoginTimeOut value)? loginTimeOut,
    TResult? Function(_ApiError value)? apiError,
  }) {
    return loginTimeOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_AccessTokenError value)? accessTokenError,
    TResult Function(_UnauthorizedError value)? unauthorizedError,
    TResult Function(_NotFoundError value)? notFoundError,
    TResult Function(_ResourceForbidden value)? resourceForbidden,
    TResult Function(_UnsplashError value)? unsplashError,
    TResult Function(_StoreClosed value)? storeClosed,
    TResult Function(_LoginTimeOut value)? loginTimeOut,
    TResult Function(_ApiError value)? apiError,
    required TResult orElse(),
  }) {
    if (loginTimeOut != null) {
      return loginTimeOut(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginTimeOutImplToJson(
      this,
    );
  }
}

abstract class _LoginTimeOut implements Error {
  factory _LoginTimeOut() = _$LoginTimeOutImpl;

  factory _LoginTimeOut.fromJson(Map<String, dynamic> json) =
      _$LoginTimeOutImpl.fromJson;
}

/// @nodoc
abstract class _$$ApiErrorImplCopyWith<$Res> {
  factory _$$ApiErrorImplCopyWith(
          _$ApiErrorImpl value, $Res Function(_$ApiErrorImpl) then) =
      __$$ApiErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ApiErrorImplCopyWithImpl<$Res>
    extends _$ErrorCopyWithImpl<$Res, _$ApiErrorImpl>
    implements _$$ApiErrorImplCopyWith<$Res> {
  __$$ApiErrorImplCopyWithImpl(
      _$ApiErrorImpl _value, $Res Function(_$ApiErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ApiErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiErrorImpl implements _ApiError {
  _$ApiErrorImpl({this.message = '', final String? $type})
      : $type = $type ?? 'apiError';

  factory _$ApiErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiErrorImplFromJson(json);

  @override
  @JsonKey()
  final String? message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Error.apiError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiErrorImplCopyWith<_$ApiErrorImpl> get copyWith =>
      __$$ApiErrorImplCopyWithImpl<_$ApiErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) networkError,
    required TResult Function() serverError,
    required TResult Function() accessTokenError,
    required TResult Function() unauthorizedError,
    required TResult Function() notFoundError,
    required TResult Function() resourceForbidden,
    required TResult Function() unsplashError,
    required TResult Function() storeClosed,
    required TResult Function() loginTimeOut,
    required TResult Function(String? message) apiError,
  }) {
    return apiError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? networkError,
    TResult? Function()? serverError,
    TResult? Function()? accessTokenError,
    TResult? Function()? unauthorizedError,
    TResult? Function()? notFoundError,
    TResult? Function()? resourceForbidden,
    TResult? Function()? unsplashError,
    TResult? Function()? storeClosed,
    TResult? Function()? loginTimeOut,
    TResult? Function(String? message)? apiError,
  }) {
    return apiError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? networkError,
    TResult Function()? serverError,
    TResult Function()? accessTokenError,
    TResult Function()? unauthorizedError,
    TResult Function()? notFoundError,
    TResult Function()? resourceForbidden,
    TResult Function()? unsplashError,
    TResult Function()? storeClosed,
    TResult Function()? loginTimeOut,
    TResult Function(String? message)? apiError,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_AccessTokenError value) accessTokenError,
    required TResult Function(_UnauthorizedError value) unauthorizedError,
    required TResult Function(_NotFoundError value) notFoundError,
    required TResult Function(_ResourceForbidden value) resourceForbidden,
    required TResult Function(_UnsplashError value) unsplashError,
    required TResult Function(_StoreClosed value) storeClosed,
    required TResult Function(_LoginTimeOut value) loginTimeOut,
    required TResult Function(_ApiError value) apiError,
  }) {
    return apiError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_AccessTokenError value)? accessTokenError,
    TResult? Function(_UnauthorizedError value)? unauthorizedError,
    TResult? Function(_NotFoundError value)? notFoundError,
    TResult? Function(_ResourceForbidden value)? resourceForbidden,
    TResult? Function(_UnsplashError value)? unsplashError,
    TResult? Function(_StoreClosed value)? storeClosed,
    TResult? Function(_LoginTimeOut value)? loginTimeOut,
    TResult? Function(_ApiError value)? apiError,
  }) {
    return apiError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_AccessTokenError value)? accessTokenError,
    TResult Function(_UnauthorizedError value)? unauthorizedError,
    TResult Function(_NotFoundError value)? notFoundError,
    TResult Function(_ResourceForbidden value)? resourceForbidden,
    TResult Function(_UnsplashError value)? unsplashError,
    TResult Function(_StoreClosed value)? storeClosed,
    TResult Function(_LoginTimeOut value)? loginTimeOut,
    TResult Function(_ApiError value)? apiError,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiErrorImplToJson(
      this,
    );
  }
}

abstract class _ApiError implements Error {
  factory _ApiError({final String? message}) = _$ApiErrorImpl;

  factory _ApiError.fromJson(Map<String, dynamic> json) =
      _$ApiErrorImpl.fromJson;

  String? get message;
  @JsonKey(ignore: true)
  _$$ApiErrorImplCopyWith<_$ApiErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Result<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(Error error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(Error error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Error error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultSuccess<T> value) success,
    required TResult Function(_ResultError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResultSuccess<T> value)? success,
    TResult? Function(_ResultError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultSuccess<T> value)? success,
    TResult Function(_ResultError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, $Res> {
  factory $ResultCopyWith(Result<T> value, $Res Function(Result<T>) then) =
      _$ResultCopyWithImpl<T, $Res, Result<T>>;
}

/// @nodoc
class _$ResultCopyWithImpl<T, $Res, $Val extends Result<T>>
    implements $ResultCopyWith<T, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ResultSuccessImplCopyWith<T, $Res> {
  factory _$$ResultSuccessImplCopyWith(_$ResultSuccessImpl<T> value,
          $Res Function(_$ResultSuccessImpl<T>) then) =
      __$$ResultSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ResultSuccessImplCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$ResultSuccessImpl<T>>
    implements _$$ResultSuccessImplCopyWith<T, $Res> {
  __$$ResultSuccessImplCopyWithImpl(_$ResultSuccessImpl<T> _value,
      $Res Function(_$ResultSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ResultSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ResultSuccessImpl<T> implements _ResultSuccess<T> {
  _$ResultSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'Result<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultSuccessImplCopyWith<T, _$ResultSuccessImpl<T>> get copyWith =>
      __$$ResultSuccessImplCopyWithImpl<T, _$ResultSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(Error error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(Error error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Error error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultSuccess<T> value) success,
    required TResult Function(_ResultError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResultSuccess<T> value)? success,
    TResult? Function(_ResultError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultSuccess<T> value)? success,
    TResult Function(_ResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ResultSuccess<T> implements Result<T> {
  factory _ResultSuccess(final T data) = _$ResultSuccessImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$ResultSuccessImplCopyWith<T, _$ResultSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResultErrorImplCopyWith<T, $Res> {
  factory _$$ResultErrorImplCopyWith(_$ResultErrorImpl<T> value,
          $Res Function(_$ResultErrorImpl<T>) then) =
      __$$ResultErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Error error});

  $ErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$ResultErrorImplCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$ResultErrorImpl<T>>
    implements _$$ResultErrorImplCopyWith<T, $Res> {
  __$$ResultErrorImplCopyWithImpl(
      _$ResultErrorImpl<T> _value, $Res Function(_$ResultErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ResultErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorCopyWith<$Res> get error {
    return $ErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$ResultErrorImpl<T> implements _ResultError<T> {
  _$ResultErrorImpl(this.error);

  @override
  final Error error;

  @override
  String toString() {
    return 'Result<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultErrorImplCopyWith<T, _$ResultErrorImpl<T>> get copyWith =>
      __$$ResultErrorImplCopyWithImpl<T, _$ResultErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(Error error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(Error error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Error error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultSuccess<T> value) success,
    required TResult Function(_ResultError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResultSuccess<T> value)? success,
    TResult? Function(_ResultError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultSuccess<T> value)? success,
    TResult Function(_ResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ResultError<T> implements Result<T> {
  factory _ResultError(final Error error) = _$ResultErrorImpl<T>;

  Error get error;
  @JsonKey(ignore: true)
  _$$ResultErrorImplCopyWith<T, _$ResultErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
