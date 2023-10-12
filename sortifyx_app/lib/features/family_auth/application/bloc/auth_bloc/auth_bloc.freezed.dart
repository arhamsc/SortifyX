// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String username, String password) loginRequest,
    required TResult Function(User user, String password) signUpRequest,
    required TResult Function() logoutRequest,
    required TResult Function() tokenRefreshRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String username, String password)? loginRequest,
    TResult? Function(User user, String password)? signUpRequest,
    TResult? Function()? logoutRequest,
    TResult? Function()? tokenRefreshRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String username, String password)? loginRequest,
    TResult Function(User user, String password)? signUpRequest,
    TResult Function()? logoutRequest,
    TResult Function()? tokenRefreshRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthEventLoginRequest value) loginRequest,
    required TResult Function(AuthEventSignUpRequest value) signUpRequest,
    required TResult Function(AuthEventLogoutRequest value) logoutRequest,
    required TResult Function(AuthEventTokenRefreshRequest value)
        tokenRefreshRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthEventLoginRequest value)? loginRequest,
    TResult? Function(AuthEventSignUpRequest value)? signUpRequest,
    TResult? Function(AuthEventLogoutRequest value)? logoutRequest,
    TResult? Function(AuthEventTokenRefreshRequest value)? tokenRefreshRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthEventLoginRequest value)? loginRequest,
    TResult Function(AuthEventSignUpRequest value)? signUpRequest,
    TResult Function(AuthEventLogoutRequest value)? logoutRequest,
    TResult Function(AuthEventTokenRefreshRequest value)? tokenRefreshRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

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
    extends _$AuthEventCopyWithImpl<$Res, _$AuthInitialImpl>
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
    return 'AuthEvent.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.initial'));
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
    required TResult Function(String username, String password) loginRequest,
    required TResult Function(User user, String password) signUpRequest,
    required TResult Function() logoutRequest,
    required TResult Function() tokenRefreshRequest,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String username, String password)? loginRequest,
    TResult? Function(User user, String password)? signUpRequest,
    TResult? Function()? logoutRequest,
    TResult? Function()? tokenRefreshRequest,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String username, String password)? loginRequest,
    TResult Function(User user, String password)? signUpRequest,
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
    required TResult Function(AuthEventLoginRequest value) loginRequest,
    required TResult Function(AuthEventSignUpRequest value) signUpRequest,
    required TResult Function(AuthEventLogoutRequest value) logoutRequest,
    required TResult Function(AuthEventTokenRefreshRequest value)
        tokenRefreshRequest,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthEventLoginRequest value)? loginRequest,
    TResult? Function(AuthEventSignUpRequest value)? signUpRequest,
    TResult? Function(AuthEventLogoutRequest value)? logoutRequest,
    TResult? Function(AuthEventTokenRefreshRequest value)? tokenRefreshRequest,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthEventLoginRequest value)? loginRequest,
    TResult Function(AuthEventSignUpRequest value)? signUpRequest,
    TResult Function(AuthEventLogoutRequest value)? logoutRequest,
    TResult Function(AuthEventTokenRefreshRequest value)? tokenRefreshRequest,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthInitial implements AuthEvent {
  const factory AuthInitial() = _$AuthInitialImpl;
}

/// @nodoc
abstract class _$$AuthEventLoginRequestImplCopyWith<$Res> {
  factory _$$AuthEventLoginRequestImplCopyWith(
          _$AuthEventLoginRequestImpl value,
          $Res Function(_$AuthEventLoginRequestImpl) then) =
      __$$AuthEventLoginRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$AuthEventLoginRequestImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventLoginRequestImpl>
    implements _$$AuthEventLoginRequestImplCopyWith<$Res> {
  __$$AuthEventLoginRequestImplCopyWithImpl(_$AuthEventLoginRequestImpl _value,
      $Res Function(_$AuthEventLoginRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$AuthEventLoginRequestImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthEventLoginRequestImpl
    with DiagnosticableTreeMixin
    implements AuthEventLoginRequest {
  const _$AuthEventLoginRequestImpl(
      {required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.loginRequest(username: $username, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.loginRequest'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventLoginRequestImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthEventLoginRequestImplCopyWith<_$AuthEventLoginRequestImpl>
      get copyWith => __$$AuthEventLoginRequestImplCopyWithImpl<
          _$AuthEventLoginRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String username, String password) loginRequest,
    required TResult Function(User user, String password) signUpRequest,
    required TResult Function() logoutRequest,
    required TResult Function() tokenRefreshRequest,
  }) {
    return loginRequest(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String username, String password)? loginRequest,
    TResult? Function(User user, String password)? signUpRequest,
    TResult? Function()? logoutRequest,
    TResult? Function()? tokenRefreshRequest,
  }) {
    return loginRequest?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String username, String password)? loginRequest,
    TResult Function(User user, String password)? signUpRequest,
    TResult Function()? logoutRequest,
    TResult Function()? tokenRefreshRequest,
    required TResult orElse(),
  }) {
    if (loginRequest != null) {
      return loginRequest(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthEventLoginRequest value) loginRequest,
    required TResult Function(AuthEventSignUpRequest value) signUpRequest,
    required TResult Function(AuthEventLogoutRequest value) logoutRequest,
    required TResult Function(AuthEventTokenRefreshRequest value)
        tokenRefreshRequest,
  }) {
    return loginRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthEventLoginRequest value)? loginRequest,
    TResult? Function(AuthEventSignUpRequest value)? signUpRequest,
    TResult? Function(AuthEventLogoutRequest value)? logoutRequest,
    TResult? Function(AuthEventTokenRefreshRequest value)? tokenRefreshRequest,
  }) {
    return loginRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthEventLoginRequest value)? loginRequest,
    TResult Function(AuthEventSignUpRequest value)? signUpRequest,
    TResult Function(AuthEventLogoutRequest value)? logoutRequest,
    TResult Function(AuthEventTokenRefreshRequest value)? tokenRefreshRequest,
    required TResult orElse(),
  }) {
    if (loginRequest != null) {
      return loginRequest(this);
    }
    return orElse();
  }
}

abstract class AuthEventLoginRequest implements AuthEvent {
  const factory AuthEventLoginRequest(
      {required final String username,
      required final String password}) = _$AuthEventLoginRequestImpl;

  String get username;
  String get password;
  @JsonKey(ignore: true)
  _$$AuthEventLoginRequestImplCopyWith<_$AuthEventLoginRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthEventSignUpRequestImplCopyWith<$Res> {
  factory _$$AuthEventSignUpRequestImplCopyWith(
          _$AuthEventSignUpRequestImpl value,
          $Res Function(_$AuthEventSignUpRequestImpl) then) =
      __$$AuthEventSignUpRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user, String password});
}

/// @nodoc
class __$$AuthEventSignUpRequestImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventSignUpRequestImpl>
    implements _$$AuthEventSignUpRequestImplCopyWith<$Res> {
  __$$AuthEventSignUpRequestImplCopyWithImpl(
      _$AuthEventSignUpRequestImpl _value,
      $Res Function(_$AuthEventSignUpRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? password = null,
  }) {
    return _then(_$AuthEventSignUpRequestImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthEventSignUpRequestImpl
    with DiagnosticableTreeMixin
    implements AuthEventSignUpRequest {
  const _$AuthEventSignUpRequestImpl(
      {required this.user, required this.password});

  @override
  final User user;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.signUpRequest(user: $user, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.signUpRequest'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventSignUpRequestImpl &&
            const DeepCollectionEquality().equals(other.user, user) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(user), password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthEventSignUpRequestImplCopyWith<_$AuthEventSignUpRequestImpl>
      get copyWith => __$$AuthEventSignUpRequestImplCopyWithImpl<
          _$AuthEventSignUpRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String username, String password) loginRequest,
    required TResult Function(User user, String password) signUpRequest,
    required TResult Function() logoutRequest,
    required TResult Function() tokenRefreshRequest,
  }) {
    return signUpRequest(user, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String username, String password)? loginRequest,
    TResult? Function(User user, String password)? signUpRequest,
    TResult? Function()? logoutRequest,
    TResult? Function()? tokenRefreshRequest,
  }) {
    return signUpRequest?.call(user, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String username, String password)? loginRequest,
    TResult Function(User user, String password)? signUpRequest,
    TResult Function()? logoutRequest,
    TResult Function()? tokenRefreshRequest,
    required TResult orElse(),
  }) {
    if (signUpRequest != null) {
      return signUpRequest(user, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthEventLoginRequest value) loginRequest,
    required TResult Function(AuthEventSignUpRequest value) signUpRequest,
    required TResult Function(AuthEventLogoutRequest value) logoutRequest,
    required TResult Function(AuthEventTokenRefreshRequest value)
        tokenRefreshRequest,
  }) {
    return signUpRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthEventLoginRequest value)? loginRequest,
    TResult? Function(AuthEventSignUpRequest value)? signUpRequest,
    TResult? Function(AuthEventLogoutRequest value)? logoutRequest,
    TResult? Function(AuthEventTokenRefreshRequest value)? tokenRefreshRequest,
  }) {
    return signUpRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthEventLoginRequest value)? loginRequest,
    TResult Function(AuthEventSignUpRequest value)? signUpRequest,
    TResult Function(AuthEventLogoutRequest value)? logoutRequest,
    TResult Function(AuthEventTokenRefreshRequest value)? tokenRefreshRequest,
    required TResult orElse(),
  }) {
    if (signUpRequest != null) {
      return signUpRequest(this);
    }
    return orElse();
  }
}

abstract class AuthEventSignUpRequest implements AuthEvent {
  const factory AuthEventSignUpRequest(
      {required final User user,
      required final String password}) = _$AuthEventSignUpRequestImpl;

  User get user;
  String get password;
  @JsonKey(ignore: true)
  _$$AuthEventSignUpRequestImplCopyWith<_$AuthEventSignUpRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthEventLogoutRequestImplCopyWith<$Res> {
  factory _$$AuthEventLogoutRequestImplCopyWith(
          _$AuthEventLogoutRequestImpl value,
          $Res Function(_$AuthEventLogoutRequestImpl) then) =
      __$$AuthEventLogoutRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthEventLogoutRequestImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventLogoutRequestImpl>
    implements _$$AuthEventLogoutRequestImplCopyWith<$Res> {
  __$$AuthEventLogoutRequestImplCopyWithImpl(
      _$AuthEventLogoutRequestImpl _value,
      $Res Function(_$AuthEventLogoutRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthEventLogoutRequestImpl
    with DiagnosticableTreeMixin
    implements AuthEventLogoutRequest {
  const _$AuthEventLogoutRequestImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.logoutRequest()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.logoutRequest'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventLogoutRequestImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String username, String password) loginRequest,
    required TResult Function(User user, String password) signUpRequest,
    required TResult Function() logoutRequest,
    required TResult Function() tokenRefreshRequest,
  }) {
    return logoutRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String username, String password)? loginRequest,
    TResult? Function(User user, String password)? signUpRequest,
    TResult? Function()? logoutRequest,
    TResult? Function()? tokenRefreshRequest,
  }) {
    return logoutRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String username, String password)? loginRequest,
    TResult Function(User user, String password)? signUpRequest,
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
    required TResult Function(AuthEventLoginRequest value) loginRequest,
    required TResult Function(AuthEventSignUpRequest value) signUpRequest,
    required TResult Function(AuthEventLogoutRequest value) logoutRequest,
    required TResult Function(AuthEventTokenRefreshRequest value)
        tokenRefreshRequest,
  }) {
    return logoutRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthEventLoginRequest value)? loginRequest,
    TResult? Function(AuthEventSignUpRequest value)? signUpRequest,
    TResult? Function(AuthEventLogoutRequest value)? logoutRequest,
    TResult? Function(AuthEventTokenRefreshRequest value)? tokenRefreshRequest,
  }) {
    return logoutRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthEventLoginRequest value)? loginRequest,
    TResult Function(AuthEventSignUpRequest value)? signUpRequest,
    TResult Function(AuthEventLogoutRequest value)? logoutRequest,
    TResult Function(AuthEventTokenRefreshRequest value)? tokenRefreshRequest,
    required TResult orElse(),
  }) {
    if (logoutRequest != null) {
      return logoutRequest(this);
    }
    return orElse();
  }
}

abstract class AuthEventLogoutRequest implements AuthEvent {
  const factory AuthEventLogoutRequest() = _$AuthEventLogoutRequestImpl;
}

/// @nodoc
abstract class _$$AuthEventTokenRefreshRequestImplCopyWith<$Res> {
  factory _$$AuthEventTokenRefreshRequestImplCopyWith(
          _$AuthEventTokenRefreshRequestImpl value,
          $Res Function(_$AuthEventTokenRefreshRequestImpl) then) =
      __$$AuthEventTokenRefreshRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthEventTokenRefreshRequestImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventTokenRefreshRequestImpl>
    implements _$$AuthEventTokenRefreshRequestImplCopyWith<$Res> {
  __$$AuthEventTokenRefreshRequestImplCopyWithImpl(
      _$AuthEventTokenRefreshRequestImpl _value,
      $Res Function(_$AuthEventTokenRefreshRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthEventTokenRefreshRequestImpl
    with DiagnosticableTreeMixin
    implements AuthEventTokenRefreshRequest {
  const _$AuthEventTokenRefreshRequestImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.tokenRefreshRequest()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AuthEvent.tokenRefreshRequest'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventTokenRefreshRequestImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String username, String password) loginRequest,
    required TResult Function(User user, String password) signUpRequest,
    required TResult Function() logoutRequest,
    required TResult Function() tokenRefreshRequest,
  }) {
    return tokenRefreshRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String username, String password)? loginRequest,
    TResult? Function(User user, String password)? signUpRequest,
    TResult? Function()? logoutRequest,
    TResult? Function()? tokenRefreshRequest,
  }) {
    return tokenRefreshRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String username, String password)? loginRequest,
    TResult Function(User user, String password)? signUpRequest,
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
    required TResult Function(AuthEventLoginRequest value) loginRequest,
    required TResult Function(AuthEventSignUpRequest value) signUpRequest,
    required TResult Function(AuthEventLogoutRequest value) logoutRequest,
    required TResult Function(AuthEventTokenRefreshRequest value)
        tokenRefreshRequest,
  }) {
    return tokenRefreshRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthEventLoginRequest value)? loginRequest,
    TResult? Function(AuthEventSignUpRequest value)? signUpRequest,
    TResult? Function(AuthEventLogoutRequest value)? logoutRequest,
    TResult? Function(AuthEventTokenRefreshRequest value)? tokenRefreshRequest,
  }) {
    return tokenRefreshRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthEventLoginRequest value)? loginRequest,
    TResult Function(AuthEventSignUpRequest value)? signUpRequest,
    TResult Function(AuthEventLogoutRequest value)? logoutRequest,
    TResult Function(AuthEventTokenRefreshRequest value)? tokenRefreshRequest,
    required TResult orElse(),
  }) {
    if (tokenRefreshRequest != null) {
      return tokenRefreshRequest(this);
    }
    return orElse();
  }
}

abstract class AuthEventTokenRefreshRequest implements AuthEvent {
  const factory AuthEventTokenRefreshRequest() =
      _$AuthEventTokenRefreshRequestImpl;
}

AuthState _$AuthStateFromJson(Map<String, dynamic> json) {
  return _AuthState.fromJson(json);
}

/// @nodoc
mixin _$AuthState {
  String get errorMessage => throw _privateConstructorUsedError;
  Family get family => throw _privateConstructorUsedError;
  String get loadingMessage => throw _privateConstructorUsedError;
  AuthStatus get status => throw _privateConstructorUsedError;
  String get successMessage => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {String errorMessage,
      Family family,
      String loadingMessage,
      AuthStatus status,
      String successMessage,
      User user});

  $FamilyCopyWith<$Res> get family;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? family = null,
    Object? loadingMessage = null,
    Object? status = null,
    Object? successMessage = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Family,
      loadingMessage: null == loadingMessage
          ? _value.loadingMessage
          : loadingMessage // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      successMessage: null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FamilyCopyWith<$Res> get family {
    return $FamilyCopyWith<$Res>(_value.family, (value) {
      return _then(_value.copyWith(family: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String errorMessage,
      Family family,
      String loadingMessage,
      AuthStatus status,
      String successMessage,
      User user});

  @override
  $FamilyCopyWith<$Res> get family;
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? family = null,
    Object? loadingMessage = null,
    Object? status = null,
    Object? successMessage = null,
    Object? user = freezed,
  }) {
    return _then(_$AuthStateImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Family,
      loadingMessage: null == loadingMessage
          ? _value.loadingMessage
          : loadingMessage // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      successMessage: null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthStateImpl with DiagnosticableTreeMixin implements _AuthState {
  const _$AuthStateImpl(
      {required this.errorMessage,
      required this.family,
      required this.loadingMessage,
      required this.status,
      required this.successMessage,
      required this.user});

  factory _$AuthStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthStateImplFromJson(json);

  @override
  final String errorMessage;
  @override
  final Family family;
  @override
  final String loadingMessage;
  @override
  final AuthStatus status;
  @override
  final String successMessage;
  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState(errorMessage: $errorMessage, family: $family, loadingMessage: $loadingMessage, status: $status, successMessage: $successMessage, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('family', family))
      ..add(DiagnosticsProperty('loadingMessage', loadingMessage))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('successMessage', successMessage))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.loadingMessage, loadingMessage) ||
                other.loadingMessage == loadingMessage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      errorMessage,
      family,
      loadingMessage,
      status,
      successMessage,
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStateImplToJson(
      this,
    );
  }
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final String errorMessage,
      required final Family family,
      required final String loadingMessage,
      required final AuthStatus status,
      required final String successMessage,
      required final User user}) = _$AuthStateImpl;

  factory _AuthState.fromJson(Map<String, dynamic> json) =
      _$AuthStateImpl.fromJson;

  @override
  String get errorMessage;
  @override
  Family get family;
  @override
  String get loadingMessage;
  @override
  AuthStatus get status;
  @override
  String get successMessage;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
