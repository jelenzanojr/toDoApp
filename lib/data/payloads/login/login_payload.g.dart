// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginPayloadImpl _$$LoginPayloadImplFromJson(Map<String, dynamic> json) =>
    _$LoginPayloadImpl(
      db: json['db'] as String,
      login: json['login'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$LoginPayloadImplToJson(_$LoginPayloadImpl instance) =>
    <String, dynamic>{
      'db': instance.db,
      'login': instance.login,
      'password': instance.password,
    };
