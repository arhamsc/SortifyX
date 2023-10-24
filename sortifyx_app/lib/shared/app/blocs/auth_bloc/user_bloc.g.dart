// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'user_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserStateImpl _$$UserStateImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$UserStateImpl',
      json,
      ($checkedConvert) {
        final val = _$UserStateImpl(
          status: $checkedConvert('status',
              (v) => UserStateStatusEnum.fromJson(v as Map<String, dynamic>)),
          user: $checkedConvert(
              'user', (v) => User.fromJson(v as Map<String, dynamic>)),
          isAuthenticated: $checkedConvert('isAuthenticated', (v) => v as bool),
          userHasFamily: $checkedConvert('userHasFamily', (v) => v as bool),
          errorMessage: $checkedConvert('errorMessage', (v) => v as String),
          loadingMessage: $checkedConvert('loadingMessage', (v) => v as String),
          successMessage: $checkedConvert('successMessage', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$UserStateImplToJson(_$UserStateImpl instance) =>
    <String, dynamic>{
      'status': instance.status.toJson(),
      'user': instance.user.toJson(),
      'isAuthenticated': instance.isAuthenticated,
      'userHasFamily': instance.userHasFamily,
      'errorMessage': instance.errorMessage,
      'loadingMessage': instance.loadingMessage,
      'successMessage': instance.successMessage,
    };
