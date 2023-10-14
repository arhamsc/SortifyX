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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginDto loginDto)? loginRequest,
    TResult? Function(SignUpDto signUpDto)? signUpRequest,
    TResult? Function()? logoutRequest,
    TResult? Function()? tokenRefreshRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginDto loginDto)? loginRequest,
    TResult Function(SignUpDto signUpDto)? signUpRequest,
    TResult Function()? logoutRequest,
    TResult Function()? tokenRefreshRequest,
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(UserEventLoginRequest value)? loginRequest,
    TResult? Function(UserEventSignUpRequest value)? signUpRequest,
    TResult? Function(UserEventLogoutRequest value)? logoutRequest,
    TResult? Function(UserEventTokenRefreshRequest value)? tokenRefreshRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(UserEventLoginRequest value)? loginRequest,
    TResult Function(UserEventSignUpRequest value)? signUpRequest,
    TResult Function(UserEventLogoutRequest value)? logoutRequest,
    TResult Function(UserEventTokenRefreshRequest value)? tokenRefreshRequest,
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

UserState _$UserStateFromJson(Map<String, dynamic> json) {
  return _UserState.fromJson(json);
}

/// @nodoc
mixin _$UserState {
  AuthStatus get status => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
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
      {AuthStatus status,
      User user,
      String errorMessage,
      String loadingMessage,
      String successMessage});
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
    Object? errorMessage = null,
    Object? loadingMessage = null,
    Object? successMessage = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
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
      {AuthStatus status,
      User user,
      String errorMessage,
      String loadingMessage,
      String successMessage});
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
    Object? errorMessage = null,
    Object? loadingMessage = null,
    Object? successMessage = null,
  }) {
    return _then(_$UserStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
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
      required this.errorMessage,
      required this.loadingMessage,
      required this.successMessage});

  factory _$UserStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserStateImplFromJson(json);

  @override
  final AuthStatus status;
  @override
  final User user;
  @override
  final String errorMessage;
  @override
  final String loadingMessage;
  @override
  final String successMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState(status: $status, user: $user, errorMessage: $errorMessage, loadingMessage: $loadingMessage, successMessage: $successMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('user', user))
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
      {required final AuthStatus status,
      required final User user,
      required final String errorMessage,
      required final String loadingMessage,
      required final String successMessage}) = _$UserStateImpl;

  factory _UserState.fromJson(Map<String, dynamic> json) =
      _$UserStateImpl.fromJson;

  @override
  AuthStatus get status;
  @override
  User get user;
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
