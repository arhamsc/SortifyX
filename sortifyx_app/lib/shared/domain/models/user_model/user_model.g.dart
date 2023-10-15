// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$UserImpl',
      json,
      ($checkedConvert) {
        final val = _$UserImpl(
          id: $checkedConvert('id', (v) => v as String),
          username: $checkedConvert('username', (v) => v as String),
          email: $checkedConvert('email', (v) => v as String),
          firstName: $checkedConvert('firstName', (v) => v as String),
          lastName: $checkedConvert('lastName', (v) => v as String),
          phone: $checkedConvert('phone', (v) => v as String),
          isAdmin: $checkedConvert('isAdmin', (v) => v as bool? ?? false),
          fcmToken: $checkedConvert('fcmToken', (v) => v as String?),
          accessToken: $checkedConvert('accessToken', (v) => v as String?),
          refreshToken: $checkedConvert('refreshToken', (v) => v as String?),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phone': instance.phone,
      'isAdmin': instance.isAdmin,
      'fcmToken': instance.fcmToken,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'runtimeType': instance.$type,
    };

_$UserEssentialFieldsImpl _$$UserEssentialFieldsImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$UserEssentialFieldsImpl',
      json,
      ($checkedConvert) {
        final val = _$UserEssentialFieldsImpl(
          id: $checkedConvert('id', (v) => v as String),
          username: $checkedConvert('username', (v) => v as String),
          email: $checkedConvert('email', (v) => v as String),
          firstName: $checkedConvert('firstName', (v) => v as String),
          lastName: $checkedConvert('lastName', (v) => v as String),
          phone: $checkedConvert('phone', (v) => v as String),
          isAdmin: $checkedConvert('isAdmin', (v) => v as bool? ?? false),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$UserEssentialFieldsImplToJson(
        _$UserEssentialFieldsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phone': instance.phone,
      'isAdmin': instance.isAdmin,
      'runtimeType': instance.$type,
    };
