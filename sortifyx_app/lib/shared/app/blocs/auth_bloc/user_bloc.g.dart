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
          status: $checkedConvert(
              'status', (v) => $enumDecode(_$UserStatusEnumMap, v)),
          user: $checkedConvert(
              'user', (v) => User.fromJson(v as Map<String, dynamic>)),
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
      'status': _$UserStatusEnumMap[instance.status]!,
      'user': instance.user.toJson(),
      'userHasFamily': instance.userHasFamily,
      'errorMessage': instance.errorMessage,
      'loadingMessage': instance.loadingMessage,
      'successMessage': instance.successMessage,
    };

const _$UserStatusEnumMap = {
  UserStatus.initial: 'initial',
  UserStatus.loading: 'loading',
  UserStatus.success: 'success',
  UserStatus.error: 'error',
  UserStatus.loggedOut: 'loggedOut',
  UserStatus.loggedIn: 'loggedIn',
};
