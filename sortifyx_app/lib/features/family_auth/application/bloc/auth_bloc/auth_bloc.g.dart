// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthStateImpl _$$AuthStateImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$AuthStateImpl',
      json,
      ($checkedConvert) {
        final val = _$AuthStateImpl(
          errorMessage: $checkedConvert('errorMessage', (v) => v as String),
          family: $checkedConvert(
              'family', (v) => Family.fromJson(v as Map<String, dynamic>)),
          loadingMessage: $checkedConvert('loadingMessage', (v) => v as String),
          status: $checkedConvert(
              'status', (v) => $enumDecode(_$AuthStatusEnumMap, v)),
          successMessage: $checkedConvert('successMessage', (v) => v as String),
          user: $checkedConvert(
              'user', (v) => User.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AuthStateImplToJson(_$AuthStateImpl instance) =>
    <String, dynamic>{
      'errorMessage': instance.errorMessage,
      'family': instance.family.toJson(),
      'loadingMessage': instance.loadingMessage,
      'status': _$AuthStatusEnumMap[instance.status]!,
      'successMessage': instance.successMessage,
      'user': instance.user.toJson(),
    };

const _$AuthStatusEnumMap = {
  AuthStatus.initial: 'initial',
  AuthStatus.loading: 'loading',
  AuthStatus.success: 'success',
  AuthStatus.error: 'error',
  AuthStatus.loginRequested: 'loginRequested',
  AuthStatus.registerRequested: 'registerRequested',
  AuthStatus.loggedOut: 'loggedOut',
  AuthStatus.loggedIn: 'loggedIn',
  AuthStatus.joinFamilyRequested: 'joinFamilyRequested',
  AuthStatus.registerFamilyRequested: 'registerFamilyRequested',
  AuthStatus.authComplete: 'authComplete',
};
