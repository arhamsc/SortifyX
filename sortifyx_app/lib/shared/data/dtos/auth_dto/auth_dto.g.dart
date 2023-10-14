// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'auth_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginDtoImpl _$$LoginDtoImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$LoginDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$LoginDtoImpl(
          username: $checkedConvert('username', (v) => v as String),
          email: $checkedConvert('email', (v) => v as String),
          password: $checkedConvert('password', (v) => v as String),
          firstName: $checkedConvert('firstName', (v) => v as String),
          lastName: $checkedConvert('lastName', (v) => v as String),
          phone: $checkedConvert('phone', (v) => v as String),
          fcmToken: $checkedConvert('fcmToken', (v) => v as String?),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$LoginDtoImplToJson(_$LoginDtoImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phone': instance.phone,
      'fcmToken': instance.fcmToken,
      'runtimeType': instance.$type,
    };

_$SignUpDtoImpl _$$SignUpDtoImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SignUpDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$SignUpDtoImpl(
          username: $checkedConvert('username', (v) => v as String),
          password: $checkedConvert('password', (v) => v as String),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$SignUpDtoImplToJson(_$SignUpDtoImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'runtimeType': instance.$type,
    };
