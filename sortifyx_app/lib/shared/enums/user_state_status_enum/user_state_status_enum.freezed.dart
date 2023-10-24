// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_state_status_enum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserStateStatusEnum _$UserStateStatusEnumFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return _UserStatusInitial.fromJson(json);
    case 'loading':
      return _UserStatusLoading.fromJson(json);
    case 'success':
      return _UserStatusSuccess.fromJson(json);
    case 'error':
      return _UserStatusError.fromJson(json);
    case 'loggedOut':
      return _UserStatusLoggedOut.fromJson(json);
    case 'loggedIn':
      return _UserStatusLoggedIn.fromJson(json);
    case 'signedUp':
      return _UserStatusSignedUp.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'UserStateStatusEnum',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UserStateStatusEnum {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
    required TResult Function() loggedOut,
    required TResult Function() loggedIn,
    required TResult Function() signedUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? error,
    TResult? Function()? loggedOut,
    TResult? Function()? loggedIn,
    TResult? Function()? signedUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
    TResult Function()? loggedOut,
    TResult Function()? loggedIn,
    TResult Function()? signedUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateStatusEnumCopyWith<$Res> {
  factory $UserStateStatusEnumCopyWith(
          UserStateStatusEnum value, $Res Function(UserStateStatusEnum) then) =
      _$UserStateStatusEnumCopyWithImpl<$Res, UserStateStatusEnum>;
}

/// @nodoc
class _$UserStateStatusEnumCopyWithImpl<$Res, $Val extends UserStateStatusEnum>
    implements $UserStateStatusEnumCopyWith<$Res> {
  _$UserStateStatusEnumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserStatusInitialImplCopyWith<$Res> {
  factory _$$UserStatusInitialImplCopyWith(_$UserStatusInitialImpl value,
          $Res Function(_$UserStatusInitialImpl) then) =
      __$$UserStatusInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserStatusInitialImplCopyWithImpl<$Res>
    extends _$UserStateStatusEnumCopyWithImpl<$Res, _$UserStatusInitialImpl>
    implements _$$UserStatusInitialImplCopyWith<$Res> {
  __$$UserStatusInitialImplCopyWithImpl(_$UserStatusInitialImpl _value,
      $Res Function(_$UserStatusInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$UserStatusInitialImpl extends _UserStatusInitial {
  _$UserStatusInitialImpl({final String? $type})
      : $type = $type ?? 'initial',
        super._();

  factory _$UserStatusInitialImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserStatusInitialImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserStateStatusEnum.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserStatusInitialImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
    required TResult Function() loggedOut,
    required TResult Function() loggedIn,
    required TResult Function() signedUp,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? error,
    TResult? Function()? loggedOut,
    TResult? Function()? loggedIn,
    TResult? Function()? signedUp,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
    TResult Function()? loggedOut,
    TResult Function()? loggedIn,
    TResult Function()? signedUp,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserStatusInitialImplToJson(
      this,
    );
  }
}

abstract class _UserStatusInitial extends UserStateStatusEnum {
  factory _UserStatusInitial() = _$UserStatusInitialImpl;
  _UserStatusInitial._() : super._();

  factory _UserStatusInitial.fromJson(Map<String, dynamic> json) =
      _$UserStatusInitialImpl.fromJson;
}

/// @nodoc
abstract class _$$UserStatusLoadingImplCopyWith<$Res> {
  factory _$$UserStatusLoadingImplCopyWith(_$UserStatusLoadingImpl value,
          $Res Function(_$UserStatusLoadingImpl) then) =
      __$$UserStatusLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserStatusLoadingImplCopyWithImpl<$Res>
    extends _$UserStateStatusEnumCopyWithImpl<$Res, _$UserStatusLoadingImpl>
    implements _$$UserStatusLoadingImplCopyWith<$Res> {
  __$$UserStatusLoadingImplCopyWithImpl(_$UserStatusLoadingImpl _value,
      $Res Function(_$UserStatusLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$UserStatusLoadingImpl extends _UserStatusLoading {
  _$UserStatusLoadingImpl({final String? $type})
      : $type = $type ?? 'loading',
        super._();

  factory _$UserStatusLoadingImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserStatusLoadingImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserStateStatusEnum.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserStatusLoadingImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
    required TResult Function() loggedOut,
    required TResult Function() loggedIn,
    required TResult Function() signedUp,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? error,
    TResult? Function()? loggedOut,
    TResult? Function()? loggedIn,
    TResult? Function()? signedUp,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
    TResult Function()? loggedOut,
    TResult Function()? loggedIn,
    TResult Function()? signedUp,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserStatusLoadingImplToJson(
      this,
    );
  }
}

abstract class _UserStatusLoading extends UserStateStatusEnum {
  factory _UserStatusLoading() = _$UserStatusLoadingImpl;
  _UserStatusLoading._() : super._();

  factory _UserStatusLoading.fromJson(Map<String, dynamic> json) =
      _$UserStatusLoadingImpl.fromJson;
}

/// @nodoc
abstract class _$$UserStatusSuccessImplCopyWith<$Res> {
  factory _$$UserStatusSuccessImplCopyWith(_$UserStatusSuccessImpl value,
          $Res Function(_$UserStatusSuccessImpl) then) =
      __$$UserStatusSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserStatusSuccessImplCopyWithImpl<$Res>
    extends _$UserStateStatusEnumCopyWithImpl<$Res, _$UserStatusSuccessImpl>
    implements _$$UserStatusSuccessImplCopyWith<$Res> {
  __$$UserStatusSuccessImplCopyWithImpl(_$UserStatusSuccessImpl _value,
      $Res Function(_$UserStatusSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$UserStatusSuccessImpl extends _UserStatusSuccess {
  _$UserStatusSuccessImpl({final String? $type})
      : $type = $type ?? 'success',
        super._();

  factory _$UserStatusSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserStatusSuccessImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserStateStatusEnum.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserStatusSuccessImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
    required TResult Function() loggedOut,
    required TResult Function() loggedIn,
    required TResult Function() signedUp,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? error,
    TResult? Function()? loggedOut,
    TResult? Function()? loggedIn,
    TResult? Function()? signedUp,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
    TResult Function()? loggedOut,
    TResult Function()? loggedIn,
    TResult Function()? signedUp,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserStatusSuccessImplToJson(
      this,
    );
  }
}

abstract class _UserStatusSuccess extends UserStateStatusEnum {
  factory _UserStatusSuccess() = _$UserStatusSuccessImpl;
  _UserStatusSuccess._() : super._();

  factory _UserStatusSuccess.fromJson(Map<String, dynamic> json) =
      _$UserStatusSuccessImpl.fromJson;
}

/// @nodoc
abstract class _$$UserStatusErrorImplCopyWith<$Res> {
  factory _$$UserStatusErrorImplCopyWith(_$UserStatusErrorImpl value,
          $Res Function(_$UserStatusErrorImpl) then) =
      __$$UserStatusErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserStatusErrorImplCopyWithImpl<$Res>
    extends _$UserStateStatusEnumCopyWithImpl<$Res, _$UserStatusErrorImpl>
    implements _$$UserStatusErrorImplCopyWith<$Res> {
  __$$UserStatusErrorImplCopyWithImpl(
      _$UserStatusErrorImpl _value, $Res Function(_$UserStatusErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$UserStatusErrorImpl extends _UserStatusError {
  _$UserStatusErrorImpl({final String? $type})
      : $type = $type ?? 'error',
        super._();

  factory _$UserStatusErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserStatusErrorImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserStateStatusEnum.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserStatusErrorImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
    required TResult Function() loggedOut,
    required TResult Function() loggedIn,
    required TResult Function() signedUp,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? error,
    TResult? Function()? loggedOut,
    TResult? Function()? loggedIn,
    TResult? Function()? signedUp,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
    TResult Function()? loggedOut,
    TResult Function()? loggedIn,
    TResult Function()? signedUp,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserStatusErrorImplToJson(
      this,
    );
  }
}

abstract class _UserStatusError extends UserStateStatusEnum {
  factory _UserStatusError() = _$UserStatusErrorImpl;
  _UserStatusError._() : super._();

  factory _UserStatusError.fromJson(Map<String, dynamic> json) =
      _$UserStatusErrorImpl.fromJson;
}

/// @nodoc
abstract class _$$UserStatusLoggedOutImplCopyWith<$Res> {
  factory _$$UserStatusLoggedOutImplCopyWith(_$UserStatusLoggedOutImpl value,
          $Res Function(_$UserStatusLoggedOutImpl) then) =
      __$$UserStatusLoggedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserStatusLoggedOutImplCopyWithImpl<$Res>
    extends _$UserStateStatusEnumCopyWithImpl<$Res, _$UserStatusLoggedOutImpl>
    implements _$$UserStatusLoggedOutImplCopyWith<$Res> {
  __$$UserStatusLoggedOutImplCopyWithImpl(_$UserStatusLoggedOutImpl _value,
      $Res Function(_$UserStatusLoggedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$UserStatusLoggedOutImpl extends _UserStatusLoggedOut {
  _$UserStatusLoggedOutImpl({final String? $type})
      : $type = $type ?? 'loggedOut',
        super._();

  factory _$UserStatusLoggedOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserStatusLoggedOutImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserStateStatusEnum.loggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStatusLoggedOutImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
    required TResult Function() loggedOut,
    required TResult Function() loggedIn,
    required TResult Function() signedUp,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? error,
    TResult? Function()? loggedOut,
    TResult? Function()? loggedIn,
    TResult? Function()? signedUp,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
    TResult Function()? loggedOut,
    TResult Function()? loggedIn,
    TResult Function()? signedUp,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserStatusLoggedOutImplToJson(
      this,
    );
  }
}

abstract class _UserStatusLoggedOut extends UserStateStatusEnum {
  factory _UserStatusLoggedOut() = _$UserStatusLoggedOutImpl;
  _UserStatusLoggedOut._() : super._();

  factory _UserStatusLoggedOut.fromJson(Map<String, dynamic> json) =
      _$UserStatusLoggedOutImpl.fromJson;
}

/// @nodoc
abstract class _$$UserStatusLoggedInImplCopyWith<$Res> {
  factory _$$UserStatusLoggedInImplCopyWith(_$UserStatusLoggedInImpl value,
          $Res Function(_$UserStatusLoggedInImpl) then) =
      __$$UserStatusLoggedInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserStatusLoggedInImplCopyWithImpl<$Res>
    extends _$UserStateStatusEnumCopyWithImpl<$Res, _$UserStatusLoggedInImpl>
    implements _$$UserStatusLoggedInImplCopyWith<$Res> {
  __$$UserStatusLoggedInImplCopyWithImpl(_$UserStatusLoggedInImpl _value,
      $Res Function(_$UserStatusLoggedInImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$UserStatusLoggedInImpl extends _UserStatusLoggedIn {
  _$UserStatusLoggedInImpl({final String? $type})
      : $type = $type ?? 'loggedIn',
        super._();

  factory _$UserStatusLoggedInImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserStatusLoggedInImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserStateStatusEnum.loggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserStatusLoggedInImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
    required TResult Function() loggedOut,
    required TResult Function() loggedIn,
    required TResult Function() signedUp,
  }) {
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? error,
    TResult? Function()? loggedOut,
    TResult? Function()? loggedIn,
    TResult? Function()? signedUp,
  }) {
    return loggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
    TResult Function()? loggedOut,
    TResult Function()? loggedIn,
    TResult Function()? signedUp,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn();
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserStatusLoggedInImplToJson(
      this,
    );
  }
}

abstract class _UserStatusLoggedIn extends UserStateStatusEnum {
  factory _UserStatusLoggedIn() = _$UserStatusLoggedInImpl;
  _UserStatusLoggedIn._() : super._();

  factory _UserStatusLoggedIn.fromJson(Map<String, dynamic> json) =
      _$UserStatusLoggedInImpl.fromJson;
}

/// @nodoc
abstract class _$$UserStatusSignedUpImplCopyWith<$Res> {
  factory _$$UserStatusSignedUpImplCopyWith(_$UserStatusSignedUpImpl value,
          $Res Function(_$UserStatusSignedUpImpl) then) =
      __$$UserStatusSignedUpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserStatusSignedUpImplCopyWithImpl<$Res>
    extends _$UserStateStatusEnumCopyWithImpl<$Res, _$UserStatusSignedUpImpl>
    implements _$$UserStatusSignedUpImplCopyWith<$Res> {
  __$$UserStatusSignedUpImplCopyWithImpl(_$UserStatusSignedUpImpl _value,
      $Res Function(_$UserStatusSignedUpImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$UserStatusSignedUpImpl extends _UserStatusSignedUp {
  _$UserStatusSignedUpImpl({final String? $type})
      : $type = $type ?? 'signedUp',
        super._();

  factory _$UserStatusSignedUpImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserStatusSignedUpImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserStateStatusEnum.signedUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserStatusSignedUpImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
    required TResult Function() loggedOut,
    required TResult Function() loggedIn,
    required TResult Function() signedUp,
  }) {
    return signedUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? error,
    TResult? Function()? loggedOut,
    TResult? Function()? loggedIn,
    TResult? Function()? signedUp,
  }) {
    return signedUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
    TResult Function()? loggedOut,
    TResult Function()? loggedIn,
    TResult Function()? signedUp,
    required TResult orElse(),
  }) {
    if (signedUp != null) {
      return signedUp();
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserStatusSignedUpImplToJson(
      this,
    );
  }
}

abstract class _UserStatusSignedUp extends UserStateStatusEnum {
  factory _UserStatusSignedUp() = _$UserStatusSignedUpImpl;
  _UserStatusSignedUp._() : super._();

  factory _UserStatusSignedUp.fromJson(Map<String, dynamic> json) =
      _$UserStatusSignedUpImpl.fromJson;
}
