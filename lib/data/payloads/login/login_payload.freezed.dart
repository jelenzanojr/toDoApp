// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginPayload _$LoginPayloadFromJson(Map<String, dynamic> json) {
  return _LoginPayload.fromJson(json);
}

/// @nodoc
mixin _$LoginPayload {
  String get db => throw _privateConstructorUsedError;
  String get login => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginPayloadCopyWith<LoginPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPayloadCopyWith<$Res> {
  factory $LoginPayloadCopyWith(
          LoginPayload value, $Res Function(LoginPayload) then) =
      _$LoginPayloadCopyWithImpl<$Res, LoginPayload>;
  @useResult
  $Res call({String db, String login, String password});
}

/// @nodoc
class _$LoginPayloadCopyWithImpl<$Res, $Val extends LoginPayload>
    implements $LoginPayloadCopyWith<$Res> {
  _$LoginPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? db = null,
    Object? login = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      db: null == db
          ? _value.db
          : db // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginPayloadImplCopyWith<$Res>
    implements $LoginPayloadCopyWith<$Res> {
  factory _$$LoginPayloadImplCopyWith(
          _$LoginPayloadImpl value, $Res Function(_$LoginPayloadImpl) then) =
      __$$LoginPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String db, String login, String password});
}

/// @nodoc
class __$$LoginPayloadImplCopyWithImpl<$Res>
    extends _$LoginPayloadCopyWithImpl<$Res, _$LoginPayloadImpl>
    implements _$$LoginPayloadImplCopyWith<$Res> {
  __$$LoginPayloadImplCopyWithImpl(
      _$LoginPayloadImpl _value, $Res Function(_$LoginPayloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? db = null,
    Object? login = null,
    Object? password = null,
  }) {
    return _then(_$LoginPayloadImpl(
      db: null == db
          ? _value.db
          : db // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginPayloadImpl implements _LoginPayload {
  _$LoginPayloadImpl(
      {required this.db, required this.login, required this.password});

  factory _$LoginPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginPayloadImplFromJson(json);

  @override
  final String db;
  @override
  final String login;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginPayload(db: $db, login: $login, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginPayloadImpl &&
            (identical(other.db, db) || other.db == db) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, db, login, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginPayloadImplCopyWith<_$LoginPayloadImpl> get copyWith =>
      __$$LoginPayloadImplCopyWithImpl<_$LoginPayloadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginPayloadImplToJson(
      this,
    );
  }
}

abstract class _LoginPayload implements LoginPayload {
  factory _LoginPayload(
      {required final String db,
      required final String login,
      required final String password}) = _$LoginPayloadImpl;

  factory _LoginPayload.fromJson(Map<String, dynamic> json) =
      _$LoginPayloadImpl.fromJson;

  @override
  String get db;
  @override
  String get login;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$LoginPayloadImplCopyWith<_$LoginPayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
