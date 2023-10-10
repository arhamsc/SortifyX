// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthState _$AuthStateFromJson(Map<String, dynamic> json) => $checkedCreate(
      'AuthState',
      json,
      ($checkedConvert) {
        final val = AuthState(
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

Map<String, dynamic> _$AuthStateToJson(AuthState instance) => <String, dynamic>{
      'status': _$AuthStatusEnumMap[instance.status]!,
      'user': instance.user.toJson(),
      'family': instance.family.toJson(),
      'successMessage': instance.successMessage,
      'loadingMessage': instance.loadingMessage,
      'errorMessage': instance.errorMessage,
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
