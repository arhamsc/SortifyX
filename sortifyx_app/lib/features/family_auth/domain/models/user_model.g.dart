// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_User',
      json,
      ($checkedConvert) {
        final val = _$_User(
          id: $checkedConvert('id', (v) => v as String),
          username: $checkedConvert('username', (v) => v as String),
          email: $checkedConvert('email', (v) => v as String),
          firstName: $checkedConvert('firstName', (v) => v as String),
          lastName: $checkedConvert('lastName', (v) => v as String),
          phone: $checkedConvert('phone', (v) => v as String),
          fcmToken: $checkedConvert('fcmToken', (v) => v as String?),
          accessToken: $checkedConvert('accessToken', (v) => v as String?),
          refreshToken: $checkedConvert('refreshToken', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phone': instance.phone,
      'fcmToken': instance.fcmToken,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
