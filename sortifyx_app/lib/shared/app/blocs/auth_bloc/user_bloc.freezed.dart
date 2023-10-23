// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginDto loginDto) loginRequest,
    required TResult Function(SignUpDto signUpDto) signUpRequest,
    required TResult Function() logoutRequest,
    required TResult Function() tokenRefreshRequest,
    required TResult Function() getMyProfile,
    required TResult Function() updateUserInfo,
    required TResult Function(String id, String fcmToken) updateFCMToken,
    required TResult Function(String id) deleteUser,
    required TResult Function() checkUserHasFamily,
    required TResult Function(String id) getUserById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginDto loginDto)? loginRequest,
    TResult? Function(SignUpDto signUpDto)? signUpRequest,
    TResult? Function()? logoutRequest,
    TResult? Function()? tokenRefreshRequest,
    TResult? Function()? getMyProfile,
    TResult? Function()? updateUserInfo,
    TResult? Function(String id, String fcmToken)? updateFCMToken,
    TResult? Function(String id)? deleteUser,
    TResult? Function()? checkUserHasFamily,
    TResult? Function(String id)? getUserById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginDto loginDto)? loginRequest,
    TResult Function(SignUpDto signUpDto)? signUpRequest,
    TResult Function()? logoutRequest,
    TResult Function()? tokenRefreshRequest,
    TResult Function()? getMyProfile,
    TResult Function()? updateUserInfo,
    TResult Function(String id, String fcmToken)? updateFCMToken,
    TResult Function(String id)? deleteUser,
    TResult Function()? checkUserHasFamily,
    TResult Function(String id)? getUserById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(UserEventLoginRequest value) loginRequest,
    required TResult Function(UserEventSignUpRequest value) signUpRequest,
    required TResult Function(UserEventLogoutRequest value) logoutRequest,
    required TResult Function(UserEventTokenRefreshRequest value)
        tokenRefreshRequest,
    required TResult Function(UserGetMyProfile value) getMyProfile,
    required TResult Function(UserUpdateUserInfo value) updateUserInfo,
    required TResult Function(UserUpdateFCMToken value) updateFCMToken,
    required TResult Function(UserDeleteUser value) deleteUser,
    required TResult Function(UserCheckUserHasFamily value) checkUserHasFamily,
    required TResult Function(UserGetUserById value) getUserById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(UserEventLoginRequest value)? loginRequest,
    TResult? Function(UserEventSignUpRequest value)? signUpRequest,
    TResult? Function(UserEventLogoutRequest value)? logoutRequest,
    TResult? Function(UserEventTokenRefreshRequest value)? tokenRefreshRequest,
    TResult? Function(UserGetMyProfile value)? getMyProfile,
    TResult? Function(UserUpdateUserInfo value)? updateUserInfo,
    TResult? Function(UserUpdateFCMToken value)? updateFCMToken,
    TResult? Function(UserDeleteUser value)? deleteUser,
    TResult? Function(UserCheckUserHasFamily value)? checkUserHasFamily,
    TResult? Function(UserGetUserById value)? getUserById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(UserEventLoginRequest value)? loginRequest,
    TResult Function(UserEventSignUpRequest value)? signUpRequest,
    TResult Function(UserEventLogoutRequest value)? logoutRequest,
    TResult Function(UserEventTokenRefreshRequest value)? tokenRefreshRequest,
    TResult Function(UserGetMyProfile value)? getMyProfile,
    TResult Function(UserUpdateUserInfo value)? updateUserInfo,
    TResult Function(UserUpdateFCMToken value)? updateFCMToken,
    TResult Function(UserDeleteUser value)? deleteUser,
    TResult Function(UserCheckUserHasFamily value)? checkUserHasFamily,
    TResult Function(UserGetUserById value)? getUserById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthInitialImplCopyWith<$Res> {
  factory _$$AuthInitialImplCopyWith(
          _$AuthInitialImpl value, $Res Function(_$AuthInitialImpl) then) =
      __$$AuthInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthInitialImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$AuthInitialImpl>
    implements _$$AuthInitialImplCopyWith<$Res> {
  __$$AuthInitialImplCopyWithImpl(
      _$AuthInitialImpl _value, $Res Function(_$AuthInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthInitialImpl with DiagnosticableTreeMixin implements AuthInitial {
  const _$AuthInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UserEvent.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginDto loginDto) loginRequest,
    required TResult Function(SignUpDto signUpDto) signUpRequest,
    required TResult Function() logoutRequest,
    required TResult Function() tokenRefreshRequest,
    required TResult Function() getMyProfile,
    required TResult Function() updateUserInfo,
    required TResult Function(String id, String fcmToken) updateFCMToken,
    required TResult Function(String id) deleteUser,
    required TResult Function() checkUserHasFamily,
    required TResult Function(String id) getUserById,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginDto loginDto)? loginRequest,
    TResult? Function(SignUpDto signUpDto)? signUpRequest,
    TResult? Function()? logoutRequest,
    TResult? Function()? tokenRefreshRequest,
    TResult? Function()? getMyProfile,
    TResult? Function()? updateUserInfo,
    TResult? Function(String id, String fcmToken)? updateFCMToken,
    TResult? Function(String id)? deleteUser,
    TResult? Function()? checkUserHasFamily,
    TResult? Function(String id)? getUserById,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginDto loginDto)? loginRequest,
    TResult Function(SignUpDto signUpDto)? signUpRequest,
    TResult Function()? logoutRequest,
    TResult Function()? tokenRefreshRequest,
    TResult Function()? getMyProfile,
    TResult Function()? updateUserInfo,
    TResult Function(String id, String fcmToken)? updateFCMToken,
    TResult Function(String id)? deleteUser,
    TResult Function()? checkUserHasFamily,
    TResult Function(String id)? getUserById,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(UserEventLoginRequest value) loginRequest,
    required TResult Function(UserEventSignUpRequest value) signUpRequest,
    required TResult Function(UserEventLogoutRequest value) logoutRequest,
    required TResult Function(UserEventTokenRefreshRequest value)
        tokenRefreshRequest,
    required TResult Function(UserGetMyProfile value) getMyProfile,
    required TResult Function(UserUpdateUserInfo value) updateUserInfo,
    required TResult Function(UserUpdateFCMToken value) updateFCMToken,
    required TResult Function(UserDeleteUser value) deleteUser,
    required TResult Function(UserCheckUserHasFamily value) checkUserHasFamily,
    required TResult Function(UserGetUserById value) getUserById,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(UserEventLoginRequest value)? loginRequest,
    TResult? Function(UserEventSignUpRequest value)? signUpRequest,
    TResult? Function(UserEventLogoutRequest value)? logoutRequest,
    TResult? Function(UserEventTokenRefreshRequest value)? tokenRefreshRequest,
    TResult? Function(UserGetMyProfile value)? getMyProfile,
    TResult? Function(UserUpdateUserInfo value)? updateUserInfo,
    TResult? Function(UserUpdateFCMToken value)? updateFCMToken,
    TResult? Function(UserDeleteUser value)? deleteUser,
    TResult? Function(UserCheckUserHasFamily value)? checkUserHasFamily,
    TResult? Function(UserGetUserById value)? getUserById,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(UserEventLoginRequest value)? loginRequest,
    TResult Function(UserEventSignUpRequest value)? signUpRequest,
    TResult Function(UserEventLogoutRequest value)? logoutRequest,
    TResult Function(UserEventTokenRefreshRequest value)? tokenRefreshRequest,
    TResult Function(UserGetMyProfile value)? getMyProfile,
    TResult Function(UserUpdateUserInfo value)? updateUserInfo,
    TResult Function(UserUpdateFCMToken value)? updateFCMToken,
    TResult Function(UserDeleteUser value)? deleteUser,
    TResult Function(UserCheckUserHasFamily value)? checkUserHasFamily,
    TResult Function(UserGetUserById value)? getUserById,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthInitial implements UserEvent {
  const factory AuthInitial() = _$AuthInitialImpl;
}

/// @nodoc
abstract class _$$UserEventLoginRequestImplCopyWith<$Res> {
  factory _$$UserEventLoginRequestImplCopyWith(
          _$UserEventLoginRequestImpl value,
          $Res Function(_$UserEventLoginRequestImpl) then) =
      __$$UserEventLoginRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginDto loginDto});
}

/// @nodoc
class __$$UserEventLoginRequestImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserEventLoginRequestImpl>
    implements _$$UserEventLoginRequestImplCopyWith<$Res> {
  __$$UserEventLoginRequestImplCopyWithImpl(_$UserEventLoginRequestImpl _value,
      $Res Function(_$UserEventLoginRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginDto = freezed,
  }) {
    return _then(_$UserEventLoginRequestImpl(
      loginDto: freezed == loginDto
          ? _value.loginDto
          : loginDto // ignore: cast_nullable_to_non_nullable
              as LoginDto,
    ));
  }
}

/// @nodoc

class _$UserEventLoginRequestImpl
    with DiagnosticableTreeMixin
    implements UserEventLoginRequest {
  const _$UserEventLoginRequestImpl({required this.loginDto});

  @override
  final LoginDto loginDto;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.loginRequest(loginDto: $loginDto)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserEvent.loginRequest'))
      ..add(DiagnosticsProperty('loginDto', loginDto));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEventLoginRequestImpl &&
            const DeepCollectionEquality().equals(other.loginDto, loginDto));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(loginDto));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEventLoginRequestImplCopyWith<_$UserEventLoginRequestImpl>
      get copyWith => __$$UserEventLoginRequestImplCopyWithImpl<
          _$UserEventLoginRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginDto loginDto) loginRequest,
    required TResult Function(SignUpDto signUpDto) signUpRequest,
    required TResult Function() logoutRequest,
    required TResult Function() tokenRefreshRequest,
    required TResult Function() getMyProfile,
    required TResult Function() updateUserInfo,
    required TResult Function(String id, String fcmToken) updateFCMToken,
    required TResult Function(String id) deleteUser,
    required TResult Function() checkUserHasFamily,
    required TResult Function(String id) getUserById,
  }) {
    return loginRequest(loginDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginDto loginDto)? loginRequest,
    TResult? Function(SignUpDto signUpDto)? signUpRequest,
    TResult? Function()? logoutRequest,
    TResult? Function()? tokenRefreshRequest,
    TResult? Function()? getMyProfile,
    TResult? Function()? updateUserInfo,
    TResult? Function(String id, String fcmToken)? updateFCMToken,
    TResult? Function(String id)? deleteUser,
    TResult? Function()? checkUserHasFamily,
    TResult? Function(String id)? getUserById,
  }) {
    return loginRequest?.call(loginDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginDto loginDto)? loginRequest,
    TResult Function(SignUpDto signUpDto)? signUpRequest,
    TResult Function()? logoutRequest,
    TResult Function()? tokenRefreshRequest,
    TResult Function()? getMyProfile,
    TResult Function()? updateUserInfo,
    TResult Function(String id, String fcmToken)? updateFCMToken,
    TResult Function(String id)? deleteUser,
    TResult Function()? checkUserHasFamily,
    TResult Function(String id)? getUserById,
    required TResult orElse(),
  }) {
    if (loginRequest != null) {
      return loginRequest(loginDto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(UserEventLoginRequest value) loginRequest,
    required TResult Function(UserEventSignUpRequest value) signUpRequest,
    required TResult Function(UserEventLogoutRequest value) logoutRequest,
    required TResult Function(UserEventTokenRefreshRequest value)
        tokenRefreshRequest,
    required TResult Function(UserGetMyProfile value) getMyProfile,
    required TResult Function(UserUpdateUserInfo value) updateUserInfo,
    required TResult Function(UserUpdateFCMToken value) updateFCMToken,
    required TResult Function(UserDeleteUser value) deleteUser,
    required TResult Function(UserCheckUserHasFamily value) checkUserHasFamily,
    required TResult Function(UserGetUserById value) getUserById,
  }) {
    return loginRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(UserEventLoginRequest value)? loginRequest,
    TResult? Function(UserEventSignUpRequest value)? signUpRequest,
    TResult? Function(UserEventLogoutRequest value)? logoutRequest,
    TResult? Function(UserEventTokenRefreshRequest value)? tokenRefreshRequest,
    TResult? Function(UserGetMyProfile value)? getMyProfile,
    TResult? Function(UserUpdateUserInfo value)? updateUserInfo,
    TResult? Function(UserUpdateFCMToken value)? updateFCMToken,
    TResult? Function(UserDeleteUser value)? deleteUser,
    TResult? Function(UserCheckUserHasFamily value)? checkUserHasFamily,
    TResult? Function(UserGetUserById value)? getUserById,
  }) {
    return loginRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(UserEventLoginRequest value)? loginRequest,
    TResult Function(UserEventSignUpRequest value)? signUpRequest,
    TResult Function(UserEventLogoutRequest value)? logoutRequest,
    TResult Function(UserEventTokenRefreshRequest value)? tokenRefreshRequest,
    TResult Function(UserGetMyProfile value)? getMyProfile,
    TResult Function(UserUpdateUserInfo value)? updateUserInfo,
    TResult Function(UserUpdateFCMToken value)? updateFCMToken,
    TResult Function(UserDeleteUser value)? deleteUser,
    TResult Function(UserCheckUserHasFamily value)? checkUserHasFamily,
    TResult Function(UserGetUserById value)? getUserById,
    required TResult orElse(),
  }) {
    if (loginRequest != null) {
      return loginRequest(this);
    }
    return orElse();
  }
}

abstract class UserEventLoginRequest implements UserEvent {
  const factory UserEventLoginRequest({required final LoginDto loginDto}) =
      _$UserEventLoginRequestImpl;

  LoginDto get loginDto;
  @JsonKey(ignore: true)
  _$$UserEventLoginRequestImplCopyWith<_$UserEventLoginRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserEventSignUpRequestImplCopyWith<$Res> {
  factory _$$UserEventSignUpRequestImplCopyWith(
          _$UserEventSignUpRequestImpl value,
          $Res Function(_$UserEventSignUpRequestImpl) then) =
      __$$UserEventSignUpRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignUpDto signUpDto});
}

/// @nodoc
class __$$UserEventSignUpRequestImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserEventSignUpRequestImpl>
    implements _$$UserEventSignUpRequestImplCopyWith<$Res> {
  __$$UserEventSignUpRequestImplCopyWithImpl(
      _$UserEventSignUpRequestImpl _value,
      $Res Function(_$UserEventSignUpRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signUpDto = freezed,
  }) {
    return _then(_$UserEventSignUpRequestImpl(
      signUpDto: freezed == signUpDto
          ? _value.signUpDto
          : signUpDto // ignore: cast_nullable_to_non_nullable
              as SignUpDto,
    ));
  }
}

/// @nodoc

class _$UserEventSignUpRequestImpl
    with DiagnosticableTreeMixin
    implements UserEventSignUpRequest {
  const _$UserEventSignUpRequestImpl({required this.signUpDto});

  @override
  final SignUpDto signUpDto;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.signUpRequest(signUpDto: $signUpDto)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserEvent.signUpRequest'))
      ..add(DiagnosticsProperty('signUpDto', signUpDto));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEventSignUpRequestImpl &&
            const DeepCollectionEquality().equals(other.signUpDto, signUpDto));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(signUpDto));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEventSignUpRequestImplCopyWith<_$UserEventSignUpRequestImpl>
      get copyWith => __$$UserEventSignUpRequestImplCopyWithImpl<
          _$UserEventSignUpRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginDto loginDto) loginRequest,
    required TResult Function(SignUpDto signUpDto) signUpRequest,
    required TResult Function() logoutRequest,
    required TResult Function() tokenRefreshRequest,
    required TResult Function() getMyProfile,
    required TResult Function() updateUserInfo,
    required TResult Function(String id, String fcmToken) updateFCMToken,
    required TResult Function(String id) deleteUser,
    required TResult Function() checkUserHasFamily,
    required TResult Function(String id) getUserById,
  }) {
    return signUpRequest(signUpDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginDto loginDto)? loginRequest,
    TResult? Function(SignUpDto signUpDto)? signUpRequest,
    TResult? Function()? logoutRequest,
    TResult? Function()? tokenRefreshRequest,
    TResult? Function()? getMyProfile,
    TResult? Function()? updateUserInfo,
    TResult? Function(String id, String fcmToken)? updateFCMToken,
    TResult? Function(String id)? deleteUser,
    TResult? Function()? checkUserHasFamily,
    TResult? Function(String id)? getUserById,
  }) {
    return signUpRequest?.call(signUpDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginDto loginDto)? loginRequest,
    TResult Function(SignUpDto signUpDto)? signUpRequest,
    TResult Function()? logoutRequest,
    TResult Function()? tokenRefreshRequest,
    TResult Function()? getMyProfile,
    TResult Function()? updateUserInfo,
    TResult Function(String id, String fcmToken)? updateFCMToken,
    TResult Function(String id)? deleteUser,
    TResult Function()? checkUserHasFamily,
    TResult Function(String id)? getUserById,
    required TResult orElse(),
  }) {
    if (signUpRequest != null) {
      return signUpRequest(signUpDto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(UserEventLoginRequest value) loginRequest,
    required TResult Function(UserEventSignUpRequest value) signUpRequest,
    required TResult Function(UserEventLogoutRequest value) logoutRequest,
    required TResult Function(UserEventTokenRefreshRequest value)
        tokenRefreshRequest,
    required TResult Function(UserGetMyProfile value) getMyProfile,
    required TResult Function(UserUpdateUserInfo value) updateUserInfo,
    required TResult Function(UserUpdateFCMToken value) updateFCMToken,
    required TResult Function(UserDeleteUser value) deleteUser,
    required TResult Function(UserCheckUserHasFamily value) checkUserHasFamily,
    required TResult Function(UserGetUserById value) getUserById,
  }) {
    return signUpRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(UserEventLoginRequest value)? loginRequest,
    TResult? Function(UserEventSignUpRequest value)? signUpRequest,
    TResult? Function(UserEventLogoutRequest value)? logoutRequest,
    TResult? Function(UserEventTokenRefreshRequest value)? tokenRefreshRequest,
    TResult? Function(UserGetMyProfile value)? getMyProfile,
    TResult? Function(UserUpdateUserInfo value)? updateUserInfo,
    TResult? Function(UserUpdateFCMToken value)? updateFCMToken,
    TResult? Function(UserDeleteUser value)? deleteUser,
    TResult? Function(UserCheckUserHasFamily value)? checkUserHasFamily,
    TResult? Function(UserGetUserById value)? getUserById,
  }) {
    return signUpRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(UserEventLoginRequest value)? loginRequest,
    TResult Function(UserEventSignUpRequest value)? signUpRequest,
    TResult Function(UserEventLogoutRequest value)? logoutRequest,
    TResult Function(UserEventTokenRefreshRequest value)? tokenRefreshRequest,
    TResult Function(UserGetMyProfile value)? getMyProfile,
    TResult Function(UserUpdateUserInfo value)? updateUserInfo,
    TResult Function(UserUpdateFCMToken value)? updateFCMToken,
    TResult Function(UserDeleteUser value)? deleteUser,
    TResult Function(UserCheckUserHasFamily value)? checkUserHasFamily,
    TResult Function(UserGetUserById value)? getUserById,
    required TResult orElse(),
  }) {
    if (signUpRequest != null) {
      return signUpRequest(this);
    }
    return orElse();
  }
}

abstract class UserEventSignUpRequest implements UserEvent {
  const factory UserEventSignUpRequest({required final SignUpDto signUpDto}) =
      _$UserEventSignUpRequestImpl;

  SignUpDto get signUpDto;
  @JsonKey(ignore: true)
  _$$UserEventSignUpRequestImplCopyWith<_$UserEventSignUpRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserEventLogoutRequestImplCopyWith<$Res> {
  factory _$$UserEventLogoutRequestImplCopyWith(
          _$UserEventLogoutRequestImpl value,
          $Res Function(_$UserEventLogoutRequestImpl) then) =
      __$$UserEventLogoutRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserEventLogoutRequestImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserEventLogoutRequestImpl>
    implements _$$UserEventLogoutRequestImplCopyWith<$Res> {
  __$$UserEventLogoutRequestImplCopyWithImpl(
      _$UserEventLogoutRequestImpl _value,
      $Res Function(_$UserEventLogoutRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserEventLogoutRequestImpl
    with DiagnosticableTreeMixin
    implements UserEventLogoutRequest {
  const _$UserEventLogoutRequestImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.logoutRequest()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UserEvent.logoutRequest'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEventLogoutRequestImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginDto loginDto) loginRequest,
    required TResult Function(SignUpDto signUpDto) signUpRequest,
    required TResult Function() logoutRequest,
    required TResult Function() tokenRefreshRequest,
    required TResult Function() getMyProfile,
    required TResult Function() updateUserInfo,
    required TResult Function(String id, String fcmToken) updateFCMToken,
    required TResult Function(String id) deleteUser,
    required TResult Function() checkUserHasFamily,
    required TResult Function(String id) getUserById,
  }) {
    return logoutRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginDto loginDto)? loginRequest,
    TResult? Function(SignUpDto signUpDto)? signUpRequest,
    TResult? Function()? logoutRequest,
    TResult? Function()? tokenRefreshRequest,
    TResult? Function()? getMyProfile,
    TResult? Function()? updateUserInfo,
    TResult? Function(String id, String fcmToken)? updateFCMToken,
    TResult? Function(String id)? deleteUser,
    TResult? Function()? checkUserHasFamily,
    TResult? Function(String id)? getUserById,
  }) {
    return logoutRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginDto loginDto)? loginRequest,
    TResult Function(SignUpDto signUpDto)? signUpRequest,
    TResult Function()? logoutRequest,
    TResult Function()? tokenRefreshRequest,
    TResult Function()? getMyProfile,
    TResult Function()? updateUserInfo,
    TResult Function(String id, String fcmToken)? updateFCMToken,
    TResult Function(String id)? deleteUser,
    TResult Function()? checkUserHasFamily,
    TResult Function(String id)? getUserById,
    required TResult orElse(),
  }) {
    if (logoutRequest != null) {
      return logoutRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(UserEventLoginRequest value) loginRequest,
    required TResult Function(UserEventSignUpRequest value) signUpRequest,
    required TResult Function(UserEventLogoutRequest value) logoutRequest,
    required TResult Function(UserEventTokenRefreshRequest value)
        tokenRefreshRequest,
    required TResult Function(UserGetMyProfile value) getMyProfile,
    required TResult Function(UserUpdateUserInfo value) updateUserInfo,
    required TResult Function(UserUpdateFCMToken value) updateFCMToken,
    required TResult Function(UserDeleteUser value) deleteUser,
    required TResult Function(UserCheckUserHasFamily value) checkUserHasFamily,
    required TResult Function(UserGetUserById value) getUserById,
  }) {
    return logoutRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(UserEventLoginRequest value)? loginRequest,
    TResult? Function(UserEventSignUpRequest value)? signUpRequest,
    TResult? Function(UserEventLogoutRequest value)? logoutRequest,
    TResult? Function(UserEventTokenRefreshRequest value)? tokenRefreshRequest,
    TResult? Function(UserGetMyProfile value)? getMyProfile,
    TResult? Function(UserUpdateUserInfo value)? updateUserInfo,
    TResult? Function(UserUpdateFCMToken value)? updateFCMToken,
    TResult? Function(UserDeleteUser value)? deleteUser,
    TResult? Function(UserCheckUserHasFamily value)? checkUserHasFamily,
    TResult? Function(UserGetUserById value)? getUserById,
  }) {
    return logoutRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(UserEventLoginRequest value)? loginRequest,
    TResult Function(UserEventSignUpRequest value)? signUpRequest,
    TResult Function(UserEventLogoutRequest value)? logoutRequest,
    TResult Function(UserEventTokenRefreshRequest value)? tokenRefreshRequest,
    TResult Function(UserGetMyProfile value)? getMyProfile,
    TResult Function(UserUpdateUserInfo value)? updateUserInfo,
    TResult Function(UserUpdateFCMToken value)? updateFCMToken,
    TResult Function(UserDeleteUser value)? deleteUser,
    TResult Function(UserCheckUserHasFamily value)? checkUserHasFamily,
    TResult Function(UserGetUserById value)? getUserById,
    required TResult orElse(),
  }) {
    if (logoutRequest != null) {
      return logoutRequest(this);
    }
    return orElse();
  }
}

abstract class UserEventLogoutRequest implements UserEvent {
  const factory UserEventLogoutRequest() = _$UserEventLogoutRequestImpl;
}

/// @nodoc
abstract class _$$UserEventTokenRefreshRequestImplCopyWith<$Res> {
  factory _$$UserEventTokenRefreshRequestImplCopyWith(
          _$UserEventTokenRefreshRequestImpl value,
          $Res Function(_$UserEventTokenRefreshRequestImpl) then) =
      __$$UserEventTokenRefreshRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserEventTokenRefreshRequestImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserEventTokenRefreshRequestImpl>
    implements _$$UserEventTokenRefreshRequestImplCopyWith<$Res> {
  __$$UserEventTokenRefreshRequestImplCopyWithImpl(
      _$UserEventTokenRefreshRequestImpl _value,
      $Res Function(_$UserEventTokenRefreshRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserEventTokenRefreshRequestImpl
    with DiagnosticableTreeMixin
    implements UserEventTokenRefreshRequest {
  const _$UserEventTokenRefreshRequestImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.tokenRefreshRequest()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'UserEvent.tokenRefreshRequest'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEventTokenRefreshRequestImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginDto loginDto) loginRequest,
    required TResult Function(SignUpDto signUpDto) signUpRequest,
    required TResult Function() logoutRequest,
    required TResult Function() tokenRefreshRequest,
    required TResult Function() getMyProfile,
    required TResult Function() updateUserInfo,
    required TResult Function(String id, String fcmToken) updateFCMToken,
    required TResult Function(String id) deleteUser,
    required TResult Function() checkUserHasFamily,
    required TResult Function(String id) getUserById,
  }) {
    return tokenRefreshRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginDto loginDto)? loginRequest,
    TResult? Function(SignUpDto signUpDto)? signUpRequest,
    TResult? Function()? logoutRequest,
    TResult? Function()? tokenRefreshRequest,
    TResult? Function()? getMyProfile,
    TResult? Function()? updateUserInfo,
    TResult? Function(String id, String fcmToken)? updateFCMToken,
    TResult? Function(String id)? deleteUser,
    TResult? Function()? checkUserHasFamily,
    TResult? Function(String id)? getUserById,
  }) {
    return tokenRefreshRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginDto loginDto)? loginRequest,
    TResult Function(SignUpDto signUpDto)? signUpRequest,
    TResult Function()? logoutRequest,
    TResult Function()? tokenRefreshRequest,
    TResult Function()? getMyProfile,
    TResult Function()? updateUserInfo,
    TResult Function(String id, String fcmToken)? updateFCMToken,
    TResult Function(String id)? deleteUser,
    TResult Function()? checkUserHasFamily,
    TResult Function(String id)? getUserById,
    required TResult orElse(),
  }) {
    if (tokenRefreshRequest != null) {
      return tokenRefreshRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(UserEventLoginRequest value) loginRequest,
    required TResult Function(UserEventSignUpRequest value) signUpRequest,
    required TResult Function(UserEventLogoutRequest value) logoutRequest,
    required TResult Function(UserEventTokenRefreshRequest value)
        tokenRefreshRequest,
    required TResult Function(UserGetMyProfile value) getMyProfile,
    required TResult Function(UserUpdateUserInfo value) updateUserInfo,
    required TResult Function(UserUpdateFCMToken value) updateFCMToken,
    required TResult Function(UserDeleteUser value) deleteUser,
    required TResult Function(UserCheckUserHasFamily value) checkUserHasFamily,
    required TResult Function(UserGetUserById value) getUserById,
  }) {
    return tokenRefreshRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(UserEventLoginRequest value)? loginRequest,
    TResult? Function(UserEventSignUpRequest value)? signUpRequest,
    TResult? Function(UserEventLogoutRequest value)? logoutRequest,
    TResult? Function(UserEventTokenRefreshRequest value)? tokenRefreshRequest,
    TResult? Function(UserGetMyProfile value)? getMyProfile,
    TResult? Function(UserUpdateUserInfo value)? updateUserInfo,
    TResult? Function(UserUpdateFCMToken value)? updateFCMToken,
    TResult? Function(UserDeleteUser value)? deleteUser,
    TResult? Function(UserCheckUserHasFamily value)? checkUserHasFamily,
    TResult? Function(UserGetUserById value)? getUserById,
  }) {
    return tokenRefreshRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(UserEventLoginRequest value)? loginRequest,
    TResult Function(UserEventSignUpRequest value)? signUpRequest,
    TResult Function(UserEventLogoutRequest value)? logoutRequest,
    TResult Function(UserEventTokenRefreshRequest value)? tokenRefreshRequest,
    TResult Function(UserGetMyProfile value)? getMyProfile,
    TResult Function(UserUpdateUserInfo value)? updateUserInfo,
    TResult Function(UserUpdateFCMToken value)? updateFCMToken,
    TResult Function(UserDeleteUser value)? deleteUser,
    TResult Function(UserCheckUserHasFamily value)? checkUserHasFamily,
    TResult Function(UserGetUserById value)? getUserById,
    required TResult orElse(),
  }) {
    if (tokenRefreshRequest != null) {
      return tokenRefreshRequest(this);
    }
    return orElse();
  }
}

abstract class UserEventTokenRefreshRequest implements UserEvent {
  const factory UserEventTokenRefreshRequest() =
      _$UserEventTokenRefreshRequestImpl;
}

/// @nodoc
abstract class _$$UserGetMyProfileImplCopyWith<$Res> {
  factory _$$UserGetMyProfileImplCopyWith(_$UserGetMyProfileImpl value,
          $Res Function(_$UserGetMyProfileImpl) then) =
      __$$UserGetMyProfileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserGetMyProfileImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserGetMyProfileImpl>
    implements _$$UserGetMyProfileImplCopyWith<$Res> {
  __$$UserGetMyProfileImplCopyWithImpl(_$UserGetMyProfileImpl _value,
      $Res Function(_$UserGetMyProfileImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserGetMyProfileImpl
    with DiagnosticableTreeMixin
    implements UserGetMyProfile {
  const _$UserGetMyProfileImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.getMyProfile()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UserEvent.getMyProfile'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserGetMyProfileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginDto loginDto) loginRequest,
    required TResult Function(SignUpDto signUpDto) signUpRequest,
    required TResult Function() logoutRequest,
    required TResult Function() tokenRefreshRequest,
    required TResult Function() getMyProfile,
    required TResult Function() updateUserInfo,
    required TResult Function(String id, String fcmToken) updateFCMToken,
    required TResult Function(String id) deleteUser,
    required TResult Function() checkUserHasFamily,
    required TResult Function(String id) getUserById,
  }) {
    return getMyProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginDto loginDto)? loginRequest,
    TResult? Function(SignUpDto signUpDto)? signUpRequest,
    TResult? Function()? logoutRequest,
    TResult? Function()? tokenRefreshRequest,
    TResult? Function()? getMyProfile,
    TResult? Function()? updateUserInfo,
    TResult? Function(String id, String fcmToken)? updateFCMToken,
    TResult? Function(String id)? deleteUser,
    TResult? Function()? checkUserHasFamily,
    TResult? Function(String id)? getUserById,
  }) {
    return getMyProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginDto loginDto)? loginRequest,
    TResult Function(SignUpDto signUpDto)? signUpRequest,
    TResult Function()? logoutRequest,
    TResult Function()? tokenRefreshRequest,
    TResult Function()? getMyProfile,
    TResult Function()? updateUserInfo,
    TResult Function(String id, String fcmToken)? updateFCMToken,
    TResult Function(String id)? deleteUser,
    TResult Function()? checkUserHasFamily,
    TResult Function(String id)? getUserById,
    required TResult orElse(),
  }) {
    if (getMyProfile != null) {
      return getMyProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(UserEventLoginRequest value) loginRequest,
    required TResult Function(UserEventSignUpRequest value) signUpRequest,
    required TResult Function(UserEventLogoutRequest value) logoutRequest,
    required TResult Function(UserEventTokenRefreshRequest value)
        tokenRefreshRequest,
    required TResult Function(UserGetMyProfile value) getMyProfile,
    required TResult Function(UserUpdateUserInfo value) updateUserInfo,
    required TResult Function(UserUpdateFCMToken value) updateFCMToken,
    required TResult Function(UserDeleteUser value) deleteUser,
    required TResult Function(UserCheckUserHasFamily value) checkUserHasFamily,
    required TResult Function(UserGetUserById value) getUserById,
  }) {
    return getMyProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(UserEventLoginRequest value)? loginRequest,
    TResult? Function(UserEventSignUpRequest value)? signUpRequest,
    TResult? Function(UserEventLogoutRequest value)? logoutRequest,
    TResult? Function(UserEventTokenRefreshRequest value)? tokenRefreshRequest,
    TResult? Function(UserGetMyProfile value)? getMyProfile,
    TResult? Function(UserUpdateUserInfo value)? updateUserInfo,
    TResult? Function(UserUpdateFCMToken value)? updateFCMToken,
    TResult? Function(UserDeleteUser value)? deleteUser,
    TResult? Function(UserCheckUserHasFamily value)? checkUserHasFamily,
    TResult? Function(UserGetUserById value)? getUserById,
  }) {
    return getMyProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(UserEventLoginRequest value)? loginRequest,
    TResult Function(UserEventSignUpRequest value)? signUpRequest,
    TResult Function(UserEventLogoutRequest value)? logoutRequest,
    TResult Function(UserEventTokenRefreshRequest value)? tokenRefreshRequest,
    TResult Function(UserGetMyProfile value)? getMyProfile,
    TResult Function(UserUpdateUserInfo value)? updateUserInfo,
    TResult Function(UserUpdateFCMToken value)? updateFCMToken,
    TResult Function(UserDeleteUser value)? deleteUser,
    TResult Function(UserCheckUserHasFamily value)? checkUserHasFamily,
    TResult Function(UserGetUserById value)? getUserById,
    required TResult orElse(),
  }) {
    if (getMyProfile != null) {
      return getMyProfile(this);
    }
    return orElse();
  }
}

abstract class UserGetMyProfile implements UserEvent {
  const factory UserGetMyProfile() = _$UserGetMyProfileImpl;
}

/// @nodoc
abstract class _$$UserUpdateUserInfoImplCopyWith<$Res> {
  factory _$$UserUpdateUserInfoImplCopyWith(_$UserUpdateUserInfoImpl value,
          $Res Function(_$UserUpdateUserInfoImpl) then) =
      __$$UserUpdateUserInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserUpdateUserInfoImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserUpdateUserInfoImpl>
    implements _$$UserUpdateUserInfoImplCopyWith<$Res> {
  __$$UserUpdateUserInfoImplCopyWithImpl(_$UserUpdateUserInfoImpl _value,
      $Res Function(_$UserUpdateUserInfoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserUpdateUserInfoImpl
    with DiagnosticableTreeMixin
    implements UserUpdateUserInfo {
  const _$UserUpdateUserInfoImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.updateUserInfo()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UserEvent.updateUserInfo'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserUpdateUserInfoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginDto loginDto) loginRequest,
    required TResult Function(SignUpDto signUpDto) signUpRequest,
    required TResult Function() logoutRequest,
    required TResult Function() tokenRefreshRequest,
    required TResult Function() getMyProfile,
    required TResult Function() updateUserInfo,
    required TResult Function(String id, String fcmToken) updateFCMToken,
    required TResult Function(String id) deleteUser,
    required TResult Function() checkUserHasFamily,
    required TResult Function(String id) getUserById,
  }) {
    return updateUserInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginDto loginDto)? loginRequest,
    TResult? Function(SignUpDto signUpDto)? signUpRequest,
    TResult? Function()? logoutRequest,
    TResult? Function()? tokenRefreshRequest,
    TResult? Function()? getMyProfile,
    TResult? Function()? updateUserInfo,
    TResult? Function(String id, String fcmToken)? updateFCMToken,
    TResult? Function(String id)? deleteUser,
    TResult? Function()? checkUserHasFamily,
    TResult? Function(String id)? getUserById,
  }) {
    return updateUserInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginDto loginDto)? loginRequest,
    TResult Function(SignUpDto signUpDto)? signUpRequest,
    TResult Function()? logoutRequest,
    TResult Function()? tokenRefreshRequest,
    TResult Function()? getMyProfile,
    TResult Function()? updateUserInfo,
    TResult Function(String id, String fcmToken)? updateFCMToken,
    TResult Function(String id)? deleteUser,
    TResult Function()? checkUserHasFamily,
    TResult Function(String id)? getUserById,
    required TResult orElse(),
  }) {
    if (updateUserInfo != null) {
      return updateUserInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(UserEventLoginRequest value) loginRequest,
    required TResult Function(UserEventSignUpRequest value) signUpRequest,
    required TResult Function(UserEventLogoutRequest value) logoutRequest,
    required TResult Function(UserEventTokenRefreshRequest value)
        tokenRefreshRequest,
    required TResult Function(UserGetMyProfile value) getMyProfile,
    required TResult Function(UserUpdateUserInfo value) updateUserInfo,
    required TResult Function(UserUpdateFCMToken value) updateFCMToken,
    required TResult Function(UserDeleteUser value) deleteUser,
    required TResult Function(UserCheckUserHasFamily value) checkUserHasFamily,
    required TResult Function(UserGetUserById value) getUserById,
  }) {
    return updateUserInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(UserEventLoginRequest value)? loginRequest,
    TResult? Function(UserEventSignUpRequest value)? signUpRequest,
    TResult? Function(UserEventLogoutRequest value)? logoutRequest,
    TResult? Function(UserEventTokenRefreshRequest value)? tokenRefreshRequest,
    TResult? Function(UserGetMyProfile value)? getMyProfile,
    TResult? Function(UserUpdateUserInfo value)? updateUserInfo,
    TResult? Function(UserUpdateFCMToken value)? updateFCMToken,
    TResult? Function(UserDeleteUser value)? deleteUser,
    TResult? Function(UserCheckUserHasFamily value)? checkUserHasFamily,
    TResult? Function(UserGetUserById value)? getUserById,
  }) {
    return updateUserInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(UserEventLoginRequest value)? loginRequest,
    TResult Function(UserEventSignUpRequest value)? signUpRequest,
    TResult Function(UserEventLogoutRequest value)? logoutRequest,
    TResult Function(UserEventTokenRefreshRequest value)? tokenRefreshRequest,
    TResult Function(UserGetMyProfile value)? getMyProfile,
    TResult Function(UserUpdateUserInfo value)? updateUserInfo,
    TResult Function(UserUpdateFCMToken value)? updateFCMToken,
    TResult Function(UserDeleteUser value)? deleteUser,
    TResult Function(UserCheckUserHasFamily value)? checkUserHasFamily,
    TResult Function(UserGetUserById value)? getUserById,
    required TResult orElse(),
  }) {
    if (updateUserInfo != null) {
      return updateUserInfo(this);
    }
    return orElse();
  }
}

abstract class UserUpdateUserInfo implements UserEvent {
  const factory UserUpdateUserInfo() = _$UserUpdateUserInfoImpl;
}

/// @nodoc
abstract class _$$UserUpdateFCMTokenImplCopyWith<$Res> {
  factory _$$UserUpdateFCMTokenImplCopyWith(_$UserUpdateFCMTokenImpl value,
          $Res Function(_$UserUpdateFCMTokenImpl) then) =
      __$$UserUpdateFCMTokenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String fcmToken});
}

/// @nodoc
class __$$UserUpdateFCMTokenImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserUpdateFCMTokenImpl>
    implements _$$UserUpdateFCMTokenImplCopyWith<$Res> {
  __$$UserUpdateFCMTokenImplCopyWithImpl(_$UserUpdateFCMTokenImpl _value,
      $Res Function(_$UserUpdateFCMTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fcmToken = null,
  }) {
    return _then(_$UserUpdateFCMTokenImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserUpdateFCMTokenImpl
    with DiagnosticableTreeMixin
    implements UserUpdateFCMToken {
  const _$UserUpdateFCMTokenImpl({required this.id, required this.fcmToken});

  @override
  final String id;
  @override
  final String fcmToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.updateFCMToken(id: $id, fcmToken: $fcmToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserEvent.updateFCMToken'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('fcmToken', fcmToken));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUpdateFCMTokenImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, fcmToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdateFCMTokenImplCopyWith<_$UserUpdateFCMTokenImpl> get copyWith =>
      __$$UserUpdateFCMTokenImplCopyWithImpl<_$UserUpdateFCMTokenImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginDto loginDto) loginRequest,
    required TResult Function(SignUpDto signUpDto) signUpRequest,
    required TResult Function() logoutRequest,
    required TResult Function() tokenRefreshRequest,
    required TResult Function() getMyProfile,
    required TResult Function() updateUserInfo,
    required TResult Function(String id, String fcmToken) updateFCMToken,
    required TResult Function(String id) deleteUser,
    required TResult Function() checkUserHasFamily,
    required TResult Function(String id) getUserById,
  }) {
    return updateFCMToken(id, fcmToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginDto loginDto)? loginRequest,
    TResult? Function(SignUpDto signUpDto)? signUpRequest,
    TResult? Function()? logoutRequest,
    TResult? Function()? tokenRefreshRequest,
    TResult? Function()? getMyProfile,
    TResult? Function()? updateUserInfo,
    TResult? Function(String id, String fcmToken)? updateFCMToken,
    TResult? Function(String id)? deleteUser,
    TResult? Function()? checkUserHasFamily,
    TResult? Function(String id)? getUserById,
  }) {
    return updateFCMToken?.call(id, fcmToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginDto loginDto)? loginRequest,
    TResult Function(SignUpDto signUpDto)? signUpRequest,
    TResult Function()? logoutRequest,
    TResult Function()? tokenRefreshRequest,
    TResult Function()? getMyProfile,
    TResult Function()? updateUserInfo,
    TResult Function(String id, String fcmToken)? updateFCMToken,
    TResult Function(String id)? deleteUser,
    TResult Function()? checkUserHasFamily,
    TResult Function(String id)? getUserById,
    required TResult orElse(),
  }) {
    if (updateFCMToken != null) {
      return updateFCMToken(id, fcmToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(UserEventLoginRequest value) loginRequest,
    required TResult Function(UserEventSignUpRequest value) signUpRequest,
    required TResult Function(UserEventLogoutRequest value) logoutRequest,
    required TResult Function(UserEventTokenRefreshRequest value)
        tokenRefreshRequest,
    required TResult Function(UserGetMyProfile value) getMyProfile,
    required TResult Function(UserUpdateUserInfo value) updateUserInfo,
    required TResult Function(UserUpdateFCMToken value) updateFCMToken,
    required TResult Function(UserDeleteUser value) deleteUser,
    required TResult Function(UserCheckUserHasFamily value) checkUserHasFamily,
    required TResult Function(UserGetUserById value) getUserById,
  }) {
    return updateFCMToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(UserEventLoginRequest value)? loginRequest,
    TResult? Function(UserEventSignUpRequest value)? signUpRequest,
    TResult? Function(UserEventLogoutRequest value)? logoutRequest,
    TResult? Function(UserEventTokenRefreshRequest value)? tokenRefreshRequest,
    TResult? Function(UserGetMyProfile value)? getMyProfile,
    TResult? Function(UserUpdateUserInfo value)? updateUserInfo,
    TResult? Function(UserUpdateFCMToken value)? updateFCMToken,
    TResult? Function(UserDeleteUser value)? deleteUser,
    TResult? Function(UserCheckUserHasFamily value)? checkUserHasFamily,
    TResult? Function(UserGetUserById value)? getUserById,
  }) {
    return updateFCMToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(UserEventLoginRequest value)? loginRequest,
    TResult Function(UserEventSignUpRequest value)? signUpRequest,
    TResult Function(UserEventLogoutRequest value)? logoutRequest,
    TResult Function(UserEventTokenRefreshRequest value)? tokenRefreshRequest,
    TResult Function(UserGetMyProfile value)? getMyProfile,
    TResult Function(UserUpdateUserInfo value)? updateUserInfo,
    TResult Function(UserUpdateFCMToken value)? updateFCMToken,
    TResult Function(UserDeleteUser value)? deleteUser,
    TResult Function(UserCheckUserHasFamily value)? checkUserHasFamily,
    TResult Function(UserGetUserById value)? getUserById,
    required TResult orElse(),
  }) {
    if (updateFCMToken != null) {
      return updateFCMToken(this);
    }
    return orElse();
  }
}

abstract class UserUpdateFCMToken implements UserEvent {
  const factory UserUpdateFCMToken(
      {required final String id,
      required final String fcmToken}) = _$UserUpdateFCMTokenImpl;

  String get id;
  String get fcmToken;
  @JsonKey(ignore: true)
  _$$UserUpdateFCMTokenImplCopyWith<_$UserUpdateFCMTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserDeleteUserImplCopyWith<$Res> {
  factory _$$UserDeleteUserImplCopyWith(_$UserDeleteUserImpl value,
          $Res Function(_$UserDeleteUserImpl) then) =
      __$$UserDeleteUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$UserDeleteUserImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserDeleteUserImpl>
    implements _$$UserDeleteUserImplCopyWith<$Res> {
  __$$UserDeleteUserImplCopyWithImpl(
      _$UserDeleteUserImpl _value, $Res Function(_$UserDeleteUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$UserDeleteUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserDeleteUserImpl
    with DiagnosticableTreeMixin
    implements UserDeleteUser {
  const _$UserDeleteUserImpl({required this.id});

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.deleteUser(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserEvent.deleteUser'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDeleteUserImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDeleteUserImplCopyWith<_$UserDeleteUserImpl> get copyWith =>
      __$$UserDeleteUserImplCopyWithImpl<_$UserDeleteUserImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginDto loginDto) loginRequest,
    required TResult Function(SignUpDto signUpDto) signUpRequest,
    required TResult Function() logoutRequest,
    required TResult Function() tokenRefreshRequest,
    required TResult Function() getMyProfile,
    required TResult Function() updateUserInfo,
    required TResult Function(String id, String fcmToken) updateFCMToken,
    required TResult Function(String id) deleteUser,
    required TResult Function() checkUserHasFamily,
    required TResult Function(String id) getUserById,
  }) {
    return deleteUser(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginDto loginDto)? loginRequest,
    TResult? Function(SignUpDto signUpDto)? signUpRequest,
    TResult? Function()? logoutRequest,
    TResult? Function()? tokenRefreshRequest,
    TResult? Function()? getMyProfile,
    TResult? Function()? updateUserInfo,
    TResult? Function(String id, String fcmToken)? updateFCMToken,
    TResult? Function(String id)? deleteUser,
    TResult? Function()? checkUserHasFamily,
    TResult? Function(String id)? getUserById,
  }) {
    return deleteUser?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginDto loginDto)? loginRequest,
    TResult Function(SignUpDto signUpDto)? signUpRequest,
    TResult Function()? logoutRequest,
    TResult Function()? tokenRefreshRequest,
    TResult Function()? getMyProfile,
    TResult Function()? updateUserInfo,
    TResult Function(String id, String fcmToken)? updateFCMToken,
    TResult Function(String id)? deleteUser,
    TResult Function()? checkUserHasFamily,
    TResult Function(String id)? getUserById,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(UserEventLoginRequest value) loginRequest,
    required TResult Function(UserEventSignUpRequest value) signUpRequest,
    required TResult Function(UserEventLogoutRequest value) logoutRequest,
    required TResult Function(UserEventTokenRefreshRequest value)
        tokenRefreshRequest,
    required TResult Function(UserGetMyProfile value) getMyProfile,
    required TResult Function(UserUpdateUserInfo value) updateUserInfo,
    required TResult Function(UserUpdateFCMToken value) updateFCMToken,
    required TResult Function(UserDeleteUser value) deleteUser,
    required TResult Function(UserCheckUserHasFamily value) checkUserHasFamily,
    required TResult Function(UserGetUserById value) getUserById,
  }) {
    return deleteUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(UserEventLoginRequest value)? loginRequest,
    TResult? Function(UserEventSignUpRequest value)? signUpRequest,
    TResult? Function(UserEventLogoutRequest value)? logoutRequest,
    TResult? Function(UserEventTokenRefreshRequest value)? tokenRefreshRequest,
    TResult? Function(UserGetMyProfile value)? getMyProfile,
    TResult? Function(UserUpdateUserInfo value)? updateUserInfo,
    TResult? Function(UserUpdateFCMToken value)? updateFCMToken,
    TResult? Function(UserDeleteUser value)? deleteUser,
    TResult? Function(UserCheckUserHasFamily value)? checkUserHasFamily,
    TResult? Function(UserGetUserById value)? getUserById,
  }) {
    return deleteUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(UserEventLoginRequest value)? loginRequest,
    TResult Function(UserEventSignUpRequest value)? signUpRequest,
    TResult Function(UserEventLogoutRequest value)? logoutRequest,
    TResult Function(UserEventTokenRefreshRequest value)? tokenRefreshRequest,
    TResult Function(UserGetMyProfile value)? getMyProfile,
    TResult Function(UserUpdateUserInfo value)? updateUserInfo,
    TResult Function(UserUpdateFCMToken value)? updateFCMToken,
    TResult Function(UserDeleteUser value)? deleteUser,
    TResult Function(UserCheckUserHasFamily value)? checkUserHasFamily,
    TResult Function(UserGetUserById value)? getUserById,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(this);
    }
    return orElse();
  }
}

abstract class UserDeleteUser implements UserEvent {
  const factory UserDeleteUser({required final String id}) =
      _$UserDeleteUserImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$UserDeleteUserImplCopyWith<_$UserDeleteUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserCheckUserHasFamilyImplCopyWith<$Res> {
  factory _$$UserCheckUserHasFamilyImplCopyWith(
          _$UserCheckUserHasFamilyImpl value,
          $Res Function(_$UserCheckUserHasFamilyImpl) then) =
      __$$UserCheckUserHasFamilyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserCheckUserHasFamilyImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserCheckUserHasFamilyImpl>
    implements _$$UserCheckUserHasFamilyImplCopyWith<$Res> {
  __$$UserCheckUserHasFamilyImplCopyWithImpl(
      _$UserCheckUserHasFamilyImpl _value,
      $Res Function(_$UserCheckUserHasFamilyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserCheckUserHasFamilyImpl
    with DiagnosticableTreeMixin
    implements UserCheckUserHasFamily {
  const _$UserCheckUserHasFamilyImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.checkUserHasFamily()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UserEvent.checkUserHasFamily'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCheckUserHasFamilyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginDto loginDto) loginRequest,
    required TResult Function(SignUpDto signUpDto) signUpRequest,
    required TResult Function() logoutRequest,
    required TResult Function() tokenRefreshRequest,
    required TResult Function() getMyProfile,
    required TResult Function() updateUserInfo,
    required TResult Function(String id, String fcmToken) updateFCMToken,
    required TResult Function(String id) deleteUser,
    required TResult Function() checkUserHasFamily,
    required TResult Function(String id) getUserById,
  }) {
    return checkUserHasFamily();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginDto loginDto)? loginRequest,
    TResult? Function(SignUpDto signUpDto)? signUpRequest,
    TResult? Function()? logoutRequest,
    TResult? Function()? tokenRefreshRequest,
    TResult? Function()? getMyProfile,
    TResult? Function()? updateUserInfo,
    TResult? Function(String id, String fcmToken)? updateFCMToken,
    TResult? Function(String id)? deleteUser,
    TResult? Function()? checkUserHasFamily,
    TResult? Function(String id)? getUserById,
  }) {
    return checkUserHasFamily?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginDto loginDto)? loginRequest,
    TResult Function(SignUpDto signUpDto)? signUpRequest,
    TResult Function()? logoutRequest,
    TResult Function()? tokenRefreshRequest,
    TResult Function()? getMyProfile,
    TResult Function()? updateUserInfo,
    TResult Function(String id, String fcmToken)? updateFCMToken,
    TResult Function(String id)? deleteUser,
    TResult Function()? checkUserHasFamily,
    TResult Function(String id)? getUserById,
    required TResult orElse(),
  }) {
    if (checkUserHasFamily != null) {
      return checkUserHasFamily();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(UserEventLoginRequest value) loginRequest,
    required TResult Function(UserEventSignUpRequest value) signUpRequest,
    required TResult Function(UserEventLogoutRequest value) logoutRequest,
    required TResult Function(UserEventTokenRefreshRequest value)
        tokenRefreshRequest,
    required TResult Function(UserGetMyProfile value) getMyProfile,
    required TResult Function(UserUpdateUserInfo value) updateUserInfo,
    required TResult Function(UserUpdateFCMToken value) updateFCMToken,
    required TResult Function(UserDeleteUser value) deleteUser,
    required TResult Function(UserCheckUserHasFamily value) checkUserHasFamily,
    required TResult Function(UserGetUserById value) getUserById,
  }) {
    return checkUserHasFamily(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(UserEventLoginRequest value)? loginRequest,
    TResult? Function(UserEventSignUpRequest value)? signUpRequest,
    TResult? Function(UserEventLogoutRequest value)? logoutRequest,
    TResult? Function(UserEventTokenRefreshRequest value)? tokenRefreshRequest,
    TResult? Function(UserGetMyProfile value)? getMyProfile,
    TResult? Function(UserUpdateUserInfo value)? updateUserInfo,
    TResult? Function(UserUpdateFCMToken value)? updateFCMToken,
    TResult? Function(UserDeleteUser value)? deleteUser,
    TResult? Function(UserCheckUserHasFamily value)? checkUserHasFamily,
    TResult? Function(UserGetUserById value)? getUserById,
  }) {
    return checkUserHasFamily?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(UserEventLoginRequest value)? loginRequest,
    TResult Function(UserEventSignUpRequest value)? signUpRequest,
    TResult Function(UserEventLogoutRequest value)? logoutRequest,
    TResult Function(UserEventTokenRefreshRequest value)? tokenRefreshRequest,
    TResult Function(UserGetMyProfile value)? getMyProfile,
    TResult Function(UserUpdateUserInfo value)? updateUserInfo,
    TResult Function(UserUpdateFCMToken value)? updateFCMToken,
    TResult Function(UserDeleteUser value)? deleteUser,
    TResult Function(UserCheckUserHasFamily value)? checkUserHasFamily,
    TResult Function(UserGetUserById value)? getUserById,
    required TResult orElse(),
  }) {
    if (checkUserHasFamily != null) {
      return checkUserHasFamily(this);
    }
    return orElse();
  }
}

abstract class UserCheckUserHasFamily implements UserEvent {
  const factory UserCheckUserHasFamily() = _$UserCheckUserHasFamilyImpl;
}

/// @nodoc
abstract class _$$UserGetUserByIdImplCopyWith<$Res> {
  factory _$$UserGetUserByIdImplCopyWith(_$UserGetUserByIdImpl value,
          $Res Function(_$UserGetUserByIdImpl) then) =
      __$$UserGetUserByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$UserGetUserByIdImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserGetUserByIdImpl>
    implements _$$UserGetUserByIdImplCopyWith<$Res> {
  __$$UserGetUserByIdImplCopyWithImpl(
      _$UserGetUserByIdImpl _value, $Res Function(_$UserGetUserByIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$UserGetUserByIdImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserGetUserByIdImpl
    with DiagnosticableTreeMixin
    implements UserGetUserById {
  const _$UserGetUserByIdImpl({required this.id});

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.getUserById(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserEvent.getUserById'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserGetUserByIdImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserGetUserByIdImplCopyWith<_$UserGetUserByIdImpl> get copyWith =>
      __$$UserGetUserByIdImplCopyWithImpl<_$UserGetUserByIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginDto loginDto) loginRequest,
    required TResult Function(SignUpDto signUpDto) signUpRequest,
    required TResult Function() logoutRequest,
    required TResult Function() tokenRefreshRequest,
    required TResult Function() getMyProfile,
    required TResult Function() updateUserInfo,
    required TResult Function(String id, String fcmToken) updateFCMToken,
    required TResult Function(String id) deleteUser,
    required TResult Function() checkUserHasFamily,
    required TResult Function(String id) getUserById,
  }) {
    return getUserById(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginDto loginDto)? loginRequest,
    TResult? Function(SignUpDto signUpDto)? signUpRequest,
    TResult? Function()? logoutRequest,
    TResult? Function()? tokenRefreshRequest,
    TResult? Function()? getMyProfile,
    TResult? Function()? updateUserInfo,
    TResult? Function(String id, String fcmToken)? updateFCMToken,
    TResult? Function(String id)? deleteUser,
    TResult? Function()? checkUserHasFamily,
    TResult? Function(String id)? getUserById,
  }) {
    return getUserById?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginDto loginDto)? loginRequest,
    TResult Function(SignUpDto signUpDto)? signUpRequest,
    TResult Function()? logoutRequest,
    TResult Function()? tokenRefreshRequest,
    TResult Function()? getMyProfile,
    TResult Function()? updateUserInfo,
    TResult Function(String id, String fcmToken)? updateFCMToken,
    TResult Function(String id)? deleteUser,
    TResult Function()? checkUserHasFamily,
    TResult Function(String id)? getUserById,
    required TResult orElse(),
  }) {
    if (getUserById != null) {
      return getUserById(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(UserEventLoginRequest value) loginRequest,
    required TResult Function(UserEventSignUpRequest value) signUpRequest,
    required TResult Function(UserEventLogoutRequest value) logoutRequest,
    required TResult Function(UserEventTokenRefreshRequest value)
        tokenRefreshRequest,
    required TResult Function(UserGetMyProfile value) getMyProfile,
    required TResult Function(UserUpdateUserInfo value) updateUserInfo,
    required TResult Function(UserUpdateFCMToken value) updateFCMToken,
    required TResult Function(UserDeleteUser value) deleteUser,
    required TResult Function(UserCheckUserHasFamily value) checkUserHasFamily,
    required TResult Function(UserGetUserById value) getUserById,
  }) {
    return getUserById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(UserEventLoginRequest value)? loginRequest,
    TResult? Function(UserEventSignUpRequest value)? signUpRequest,
    TResult? Function(UserEventLogoutRequest value)? logoutRequest,
    TResult? Function(UserEventTokenRefreshRequest value)? tokenRefreshRequest,
    TResult? Function(UserGetMyProfile value)? getMyProfile,
    TResult? Function(UserUpdateUserInfo value)? updateUserInfo,
    TResult? Function(UserUpdateFCMToken value)? updateFCMToken,
    TResult? Function(UserDeleteUser value)? deleteUser,
    TResult? Function(UserCheckUserHasFamily value)? checkUserHasFamily,
    TResult? Function(UserGetUserById value)? getUserById,
  }) {
    return getUserById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(UserEventLoginRequest value)? loginRequest,
    TResult Function(UserEventSignUpRequest value)? signUpRequest,
    TResult Function(UserEventLogoutRequest value)? logoutRequest,
    TResult Function(UserEventTokenRefreshRequest value)? tokenRefreshRequest,
    TResult Function(UserGetMyProfile value)? getMyProfile,
    TResult Function(UserUpdateUserInfo value)? updateUserInfo,
    TResult Function(UserUpdateFCMToken value)? updateFCMToken,
    TResult Function(UserDeleteUser value)? deleteUser,
    TResult Function(UserCheckUserHasFamily value)? checkUserHasFamily,
    TResult Function(UserGetUserById value)? getUserById,
    required TResult orElse(),
  }) {
    if (getUserById != null) {
      return getUserById(this);
    }
    return orElse();
  }
}

abstract class UserGetUserById implements UserEvent {
  const factory UserGetUserById({required final String id}) =
      _$UserGetUserByIdImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$UserGetUserByIdImplCopyWith<_$UserGetUserByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserState _$UserStateFromJson(Map<String, dynamic> json) {
  return _UserState.fromJson(json);
}

/// @nodoc
mixin _$UserState {
  UserStateStatusEnum get status => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  bool get userHasFamily => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get loadingMessage => throw _privateConstructorUsedError;
  String get successMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call(
      {UserStateStatusEnum status,
      User user,
      bool userHasFamily,
      String errorMessage,
      String loadingMessage,
      String successMessage});

  $UserStateStatusEnumCopyWith<$Res> get status;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = freezed,
    Object? userHasFamily = null,
    Object? errorMessage = null,
    Object? loadingMessage = null,
    Object? successMessage = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStateStatusEnum,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      userHasFamily: null == userHasFamily
          ? _value.userHasFamily
          : userHasFamily // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      loadingMessage: null == loadingMessage
          ? _value.loadingMessage
          : loadingMessage // ignore: cast_nullable_to_non_nullable
              as String,
      successMessage: null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserStateStatusEnumCopyWith<$Res> get status {
    return $UserStateStatusEnumCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserStateImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserStateImplCopyWith(
          _$UserStateImpl value, $Res Function(_$UserStateImpl) then) =
      __$$UserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserStateStatusEnum status,
      User user,
      bool userHasFamily,
      String errorMessage,
      String loadingMessage,
      String successMessage});

  @override
  $UserStateStatusEnumCopyWith<$Res> get status;
}

/// @nodoc
class __$$UserStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateImpl>
    implements _$$UserStateImplCopyWith<$Res> {
  __$$UserStateImplCopyWithImpl(
      _$UserStateImpl _value, $Res Function(_$UserStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = freezed,
    Object? userHasFamily = null,
    Object? errorMessage = null,
    Object? loadingMessage = null,
    Object? successMessage = null,
  }) {
    return _then(_$UserStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStateStatusEnum,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      userHasFamily: null == userHasFamily
          ? _value.userHasFamily
          : userHasFamily // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      loadingMessage: null == loadingMessage
          ? _value.loadingMessage
          : loadingMessage // ignore: cast_nullable_to_non_nullable
              as String,
      successMessage: null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserStateImpl with DiagnosticableTreeMixin implements _UserState {
  const _$UserStateImpl(
      {required this.status,
      required this.user,
      required this.userHasFamily,
      required this.errorMessage,
      required this.loadingMessage,
      required this.successMessage});

  factory _$UserStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserStateImplFromJson(json);

  @override
  final UserStateStatusEnum status;
  @override
  final User user;
  @override
  final bool userHasFamily;
  @override
  final String errorMessage;
  @override
  final String loadingMessage;
  @override
  final String successMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState(status: $status, user: $user, userHasFamily: $userHasFamily, errorMessage: $errorMessage, loadingMessage: $loadingMessage, successMessage: $successMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('userHasFamily', userHasFamily))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('loadingMessage', loadingMessage))
      ..add(DiagnosticsProperty('successMessage', successMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            (identical(other.userHasFamily, userHasFamily) ||
                other.userHasFamily == userHasFamily) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.loadingMessage, loadingMessage) ||
                other.loadingMessage == loadingMessage) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(user),
      userHasFamily,
      errorMessage,
      loadingMessage,
      successMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      __$$UserStateImplCopyWithImpl<_$UserStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserStateImplToJson(
      this,
    );
  }
}

abstract class _UserState implements UserState {
  const factory _UserState(
      {required final UserStateStatusEnum status,
      required final User user,
      required final bool userHasFamily,
      required final String errorMessage,
      required final String loadingMessage,
      required final String successMessage}) = _$UserStateImpl;

  factory _UserState.fromJson(Map<String, dynamic> json) =
      _$UserStateImpl.fromJson;

  @override
  UserStateStatusEnum get status;
  @override
  User get user;
  @override
  bool get userHasFamily;
  @override
  String get errorMessage;
  @override
  String get loadingMessage;
  @override
  String get successMessage;
  @override
  @JsonKey(ignore: true)
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
