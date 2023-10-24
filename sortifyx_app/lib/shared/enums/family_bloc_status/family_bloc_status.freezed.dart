// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'family_bloc_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FamilyBlocStatus _$FamilyBlocStatusFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return _FamilyBlocStatusInitial.fromJson(json);
    case 'loading':
      return _FamilyBlocStatusLoading.fromJson(json);
    case 'success':
      return _FamilyBlocStatusSuccess.fromJson(json);
    case 'error':
      return _FamilyBlocStatusError.fromJson(json);
    case 'registeredFamily':
      return _FamilyBlocStatusRegisteredFamily.fromJson(json);
    case 'joinedFamily':
      return _FamilyBlocStatusJoinedFamily.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'FamilyBlocStatus',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$FamilyBlocStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
    required TResult Function() registeredFamily,
    required TResult Function() joinedFamily,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? error,
    TResult? Function()? registeredFamily,
    TResult? Function()? joinedFamily,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
    TResult Function()? registeredFamily,
    TResult Function()? joinedFamily,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FamilyBlocStatusInitial value) initial,
    required TResult Function(_FamilyBlocStatusLoading value) loading,
    required TResult Function(_FamilyBlocStatusSuccess value) success,
    required TResult Function(_FamilyBlocStatusError value) error,
    required TResult Function(_FamilyBlocStatusRegisteredFamily value)
        registeredFamily,
    required TResult Function(_FamilyBlocStatusJoinedFamily value) joinedFamily,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FamilyBlocStatusInitial value)? initial,
    TResult? Function(_FamilyBlocStatusLoading value)? loading,
    TResult? Function(_FamilyBlocStatusSuccess value)? success,
    TResult? Function(_FamilyBlocStatusError value)? error,
    TResult? Function(_FamilyBlocStatusRegisteredFamily value)?
        registeredFamily,
    TResult? Function(_FamilyBlocStatusJoinedFamily value)? joinedFamily,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FamilyBlocStatusInitial value)? initial,
    TResult Function(_FamilyBlocStatusLoading value)? loading,
    TResult Function(_FamilyBlocStatusSuccess value)? success,
    TResult Function(_FamilyBlocStatusError value)? error,
    TResult Function(_FamilyBlocStatusRegisteredFamily value)? registeredFamily,
    TResult Function(_FamilyBlocStatusJoinedFamily value)? joinedFamily,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyBlocStatusCopyWith<$Res> {
  factory $FamilyBlocStatusCopyWith(
          FamilyBlocStatus value, $Res Function(FamilyBlocStatus) then) =
      _$FamilyBlocStatusCopyWithImpl<$Res, FamilyBlocStatus>;
}

/// @nodoc
class _$FamilyBlocStatusCopyWithImpl<$Res, $Val extends FamilyBlocStatus>
    implements $FamilyBlocStatusCopyWith<$Res> {
  _$FamilyBlocStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FamilyBlocStatusInitialImplCopyWith<$Res> {
  factory _$$FamilyBlocStatusInitialImplCopyWith(
          _$FamilyBlocStatusInitialImpl value,
          $Res Function(_$FamilyBlocStatusInitialImpl) then) =
      __$$FamilyBlocStatusInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FamilyBlocStatusInitialImplCopyWithImpl<$Res>
    extends _$FamilyBlocStatusCopyWithImpl<$Res, _$FamilyBlocStatusInitialImpl>
    implements _$$FamilyBlocStatusInitialImplCopyWith<$Res> {
  __$$FamilyBlocStatusInitialImplCopyWithImpl(
      _$FamilyBlocStatusInitialImpl _value,
      $Res Function(_$FamilyBlocStatusInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$FamilyBlocStatusInitialImpl extends _FamilyBlocStatusInitial {
  _$FamilyBlocStatusInitialImpl({final String? $type})
      : $type = $type ?? 'initial',
        super._();

  factory _$FamilyBlocStatusInitialImpl.fromJson(Map<String, dynamic> json) =>
      _$$FamilyBlocStatusInitialImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FamilyBlocStatus.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyBlocStatusInitialImpl);
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
    required TResult Function() registeredFamily,
    required TResult Function() joinedFamily,
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
    TResult? Function()? registeredFamily,
    TResult? Function()? joinedFamily,
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
    TResult Function()? registeredFamily,
    TResult Function()? joinedFamily,
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
    required TResult Function(_FamilyBlocStatusInitial value) initial,
    required TResult Function(_FamilyBlocStatusLoading value) loading,
    required TResult Function(_FamilyBlocStatusSuccess value) success,
    required TResult Function(_FamilyBlocStatusError value) error,
    required TResult Function(_FamilyBlocStatusRegisteredFamily value)
        registeredFamily,
    required TResult Function(_FamilyBlocStatusJoinedFamily value) joinedFamily,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FamilyBlocStatusInitial value)? initial,
    TResult? Function(_FamilyBlocStatusLoading value)? loading,
    TResult? Function(_FamilyBlocStatusSuccess value)? success,
    TResult? Function(_FamilyBlocStatusError value)? error,
    TResult? Function(_FamilyBlocStatusRegisteredFamily value)?
        registeredFamily,
    TResult? Function(_FamilyBlocStatusJoinedFamily value)? joinedFamily,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FamilyBlocStatusInitial value)? initial,
    TResult Function(_FamilyBlocStatusLoading value)? loading,
    TResult Function(_FamilyBlocStatusSuccess value)? success,
    TResult Function(_FamilyBlocStatusError value)? error,
    TResult Function(_FamilyBlocStatusRegisteredFamily value)? registeredFamily,
    TResult Function(_FamilyBlocStatusJoinedFamily value)? joinedFamily,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FamilyBlocStatusInitialImplToJson(
      this,
    );
  }
}

abstract class _FamilyBlocStatusInitial extends FamilyBlocStatus {
  factory _FamilyBlocStatusInitial() = _$FamilyBlocStatusInitialImpl;
  _FamilyBlocStatusInitial._() : super._();

  factory _FamilyBlocStatusInitial.fromJson(Map<String, dynamic> json) =
      _$FamilyBlocStatusInitialImpl.fromJson;
}

/// @nodoc
abstract class _$$FamilyBlocStatusLoadingImplCopyWith<$Res> {
  factory _$$FamilyBlocStatusLoadingImplCopyWith(
          _$FamilyBlocStatusLoadingImpl value,
          $Res Function(_$FamilyBlocStatusLoadingImpl) then) =
      __$$FamilyBlocStatusLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FamilyBlocStatusLoadingImplCopyWithImpl<$Res>
    extends _$FamilyBlocStatusCopyWithImpl<$Res, _$FamilyBlocStatusLoadingImpl>
    implements _$$FamilyBlocStatusLoadingImplCopyWith<$Res> {
  __$$FamilyBlocStatusLoadingImplCopyWithImpl(
      _$FamilyBlocStatusLoadingImpl _value,
      $Res Function(_$FamilyBlocStatusLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$FamilyBlocStatusLoadingImpl extends _FamilyBlocStatusLoading {
  _$FamilyBlocStatusLoadingImpl({final String? $type})
      : $type = $type ?? 'loading',
        super._();

  factory _$FamilyBlocStatusLoadingImpl.fromJson(Map<String, dynamic> json) =>
      _$$FamilyBlocStatusLoadingImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FamilyBlocStatus.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyBlocStatusLoadingImpl);
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
    required TResult Function() registeredFamily,
    required TResult Function() joinedFamily,
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
    TResult? Function()? registeredFamily,
    TResult? Function()? joinedFamily,
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
    TResult Function()? registeredFamily,
    TResult Function()? joinedFamily,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FamilyBlocStatusInitial value) initial,
    required TResult Function(_FamilyBlocStatusLoading value) loading,
    required TResult Function(_FamilyBlocStatusSuccess value) success,
    required TResult Function(_FamilyBlocStatusError value) error,
    required TResult Function(_FamilyBlocStatusRegisteredFamily value)
        registeredFamily,
    required TResult Function(_FamilyBlocStatusJoinedFamily value) joinedFamily,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FamilyBlocStatusInitial value)? initial,
    TResult? Function(_FamilyBlocStatusLoading value)? loading,
    TResult? Function(_FamilyBlocStatusSuccess value)? success,
    TResult? Function(_FamilyBlocStatusError value)? error,
    TResult? Function(_FamilyBlocStatusRegisteredFamily value)?
        registeredFamily,
    TResult? Function(_FamilyBlocStatusJoinedFamily value)? joinedFamily,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FamilyBlocStatusInitial value)? initial,
    TResult Function(_FamilyBlocStatusLoading value)? loading,
    TResult Function(_FamilyBlocStatusSuccess value)? success,
    TResult Function(_FamilyBlocStatusError value)? error,
    TResult Function(_FamilyBlocStatusRegisteredFamily value)? registeredFamily,
    TResult Function(_FamilyBlocStatusJoinedFamily value)? joinedFamily,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FamilyBlocStatusLoadingImplToJson(
      this,
    );
  }
}

abstract class _FamilyBlocStatusLoading extends FamilyBlocStatus {
  factory _FamilyBlocStatusLoading() = _$FamilyBlocStatusLoadingImpl;
  _FamilyBlocStatusLoading._() : super._();

  factory _FamilyBlocStatusLoading.fromJson(Map<String, dynamic> json) =
      _$FamilyBlocStatusLoadingImpl.fromJson;
}

/// @nodoc
abstract class _$$FamilyBlocStatusSuccessImplCopyWith<$Res> {
  factory _$$FamilyBlocStatusSuccessImplCopyWith(
          _$FamilyBlocStatusSuccessImpl value,
          $Res Function(_$FamilyBlocStatusSuccessImpl) then) =
      __$$FamilyBlocStatusSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FamilyBlocStatusSuccessImplCopyWithImpl<$Res>
    extends _$FamilyBlocStatusCopyWithImpl<$Res, _$FamilyBlocStatusSuccessImpl>
    implements _$$FamilyBlocStatusSuccessImplCopyWith<$Res> {
  __$$FamilyBlocStatusSuccessImplCopyWithImpl(
      _$FamilyBlocStatusSuccessImpl _value,
      $Res Function(_$FamilyBlocStatusSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$FamilyBlocStatusSuccessImpl extends _FamilyBlocStatusSuccess {
  _$FamilyBlocStatusSuccessImpl({final String? $type})
      : $type = $type ?? 'success',
        super._();

  factory _$FamilyBlocStatusSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$FamilyBlocStatusSuccessImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FamilyBlocStatus.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyBlocStatusSuccessImpl);
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
    required TResult Function() registeredFamily,
    required TResult Function() joinedFamily,
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
    TResult? Function()? registeredFamily,
    TResult? Function()? joinedFamily,
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
    TResult Function()? registeredFamily,
    TResult Function()? joinedFamily,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FamilyBlocStatusInitial value) initial,
    required TResult Function(_FamilyBlocStatusLoading value) loading,
    required TResult Function(_FamilyBlocStatusSuccess value) success,
    required TResult Function(_FamilyBlocStatusError value) error,
    required TResult Function(_FamilyBlocStatusRegisteredFamily value)
        registeredFamily,
    required TResult Function(_FamilyBlocStatusJoinedFamily value) joinedFamily,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FamilyBlocStatusInitial value)? initial,
    TResult? Function(_FamilyBlocStatusLoading value)? loading,
    TResult? Function(_FamilyBlocStatusSuccess value)? success,
    TResult? Function(_FamilyBlocStatusError value)? error,
    TResult? Function(_FamilyBlocStatusRegisteredFamily value)?
        registeredFamily,
    TResult? Function(_FamilyBlocStatusJoinedFamily value)? joinedFamily,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FamilyBlocStatusInitial value)? initial,
    TResult Function(_FamilyBlocStatusLoading value)? loading,
    TResult Function(_FamilyBlocStatusSuccess value)? success,
    TResult Function(_FamilyBlocStatusError value)? error,
    TResult Function(_FamilyBlocStatusRegisteredFamily value)? registeredFamily,
    TResult Function(_FamilyBlocStatusJoinedFamily value)? joinedFamily,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FamilyBlocStatusSuccessImplToJson(
      this,
    );
  }
}

abstract class _FamilyBlocStatusSuccess extends FamilyBlocStatus {
  factory _FamilyBlocStatusSuccess() = _$FamilyBlocStatusSuccessImpl;
  _FamilyBlocStatusSuccess._() : super._();

  factory _FamilyBlocStatusSuccess.fromJson(Map<String, dynamic> json) =
      _$FamilyBlocStatusSuccessImpl.fromJson;
}

/// @nodoc
abstract class _$$FamilyBlocStatusErrorImplCopyWith<$Res> {
  factory _$$FamilyBlocStatusErrorImplCopyWith(
          _$FamilyBlocStatusErrorImpl value,
          $Res Function(_$FamilyBlocStatusErrorImpl) then) =
      __$$FamilyBlocStatusErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FamilyBlocStatusErrorImplCopyWithImpl<$Res>
    extends _$FamilyBlocStatusCopyWithImpl<$Res, _$FamilyBlocStatusErrorImpl>
    implements _$$FamilyBlocStatusErrorImplCopyWith<$Res> {
  __$$FamilyBlocStatusErrorImplCopyWithImpl(_$FamilyBlocStatusErrorImpl _value,
      $Res Function(_$FamilyBlocStatusErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$FamilyBlocStatusErrorImpl extends _FamilyBlocStatusError {
  _$FamilyBlocStatusErrorImpl({final String? $type})
      : $type = $type ?? 'error',
        super._();

  factory _$FamilyBlocStatusErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$FamilyBlocStatusErrorImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FamilyBlocStatus.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyBlocStatusErrorImpl);
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
    required TResult Function() registeredFamily,
    required TResult Function() joinedFamily,
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
    TResult? Function()? registeredFamily,
    TResult? Function()? joinedFamily,
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
    TResult Function()? registeredFamily,
    TResult Function()? joinedFamily,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FamilyBlocStatusInitial value) initial,
    required TResult Function(_FamilyBlocStatusLoading value) loading,
    required TResult Function(_FamilyBlocStatusSuccess value) success,
    required TResult Function(_FamilyBlocStatusError value) error,
    required TResult Function(_FamilyBlocStatusRegisteredFamily value)
        registeredFamily,
    required TResult Function(_FamilyBlocStatusJoinedFamily value) joinedFamily,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FamilyBlocStatusInitial value)? initial,
    TResult? Function(_FamilyBlocStatusLoading value)? loading,
    TResult? Function(_FamilyBlocStatusSuccess value)? success,
    TResult? Function(_FamilyBlocStatusError value)? error,
    TResult? Function(_FamilyBlocStatusRegisteredFamily value)?
        registeredFamily,
    TResult? Function(_FamilyBlocStatusJoinedFamily value)? joinedFamily,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FamilyBlocStatusInitial value)? initial,
    TResult Function(_FamilyBlocStatusLoading value)? loading,
    TResult Function(_FamilyBlocStatusSuccess value)? success,
    TResult Function(_FamilyBlocStatusError value)? error,
    TResult Function(_FamilyBlocStatusRegisteredFamily value)? registeredFamily,
    TResult Function(_FamilyBlocStatusJoinedFamily value)? joinedFamily,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FamilyBlocStatusErrorImplToJson(
      this,
    );
  }
}

abstract class _FamilyBlocStatusError extends FamilyBlocStatus {
  factory _FamilyBlocStatusError() = _$FamilyBlocStatusErrorImpl;
  _FamilyBlocStatusError._() : super._();

  factory _FamilyBlocStatusError.fromJson(Map<String, dynamic> json) =
      _$FamilyBlocStatusErrorImpl.fromJson;
}

/// @nodoc
abstract class _$$FamilyBlocStatusRegisteredFamilyImplCopyWith<$Res> {
  factory _$$FamilyBlocStatusRegisteredFamilyImplCopyWith(
          _$FamilyBlocStatusRegisteredFamilyImpl value,
          $Res Function(_$FamilyBlocStatusRegisteredFamilyImpl) then) =
      __$$FamilyBlocStatusRegisteredFamilyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FamilyBlocStatusRegisteredFamilyImplCopyWithImpl<$Res>
    extends _$FamilyBlocStatusCopyWithImpl<$Res,
        _$FamilyBlocStatusRegisteredFamilyImpl>
    implements _$$FamilyBlocStatusRegisteredFamilyImplCopyWith<$Res> {
  __$$FamilyBlocStatusRegisteredFamilyImplCopyWithImpl(
      _$FamilyBlocStatusRegisteredFamilyImpl _value,
      $Res Function(_$FamilyBlocStatusRegisteredFamilyImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$FamilyBlocStatusRegisteredFamilyImpl
    extends _FamilyBlocStatusRegisteredFamily {
  _$FamilyBlocStatusRegisteredFamilyImpl({final String? $type})
      : $type = $type ?? 'registeredFamily',
        super._();

  factory _$FamilyBlocStatusRegisteredFamilyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FamilyBlocStatusRegisteredFamilyImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FamilyBlocStatus.registeredFamily()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyBlocStatusRegisteredFamilyImpl);
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
    required TResult Function() registeredFamily,
    required TResult Function() joinedFamily,
  }) {
    return registeredFamily();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? error,
    TResult? Function()? registeredFamily,
    TResult? Function()? joinedFamily,
  }) {
    return registeredFamily?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
    TResult Function()? registeredFamily,
    TResult Function()? joinedFamily,
    required TResult orElse(),
  }) {
    if (registeredFamily != null) {
      return registeredFamily();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FamilyBlocStatusInitial value) initial,
    required TResult Function(_FamilyBlocStatusLoading value) loading,
    required TResult Function(_FamilyBlocStatusSuccess value) success,
    required TResult Function(_FamilyBlocStatusError value) error,
    required TResult Function(_FamilyBlocStatusRegisteredFamily value)
        registeredFamily,
    required TResult Function(_FamilyBlocStatusJoinedFamily value) joinedFamily,
  }) {
    return registeredFamily(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FamilyBlocStatusInitial value)? initial,
    TResult? Function(_FamilyBlocStatusLoading value)? loading,
    TResult? Function(_FamilyBlocStatusSuccess value)? success,
    TResult? Function(_FamilyBlocStatusError value)? error,
    TResult? Function(_FamilyBlocStatusRegisteredFamily value)?
        registeredFamily,
    TResult? Function(_FamilyBlocStatusJoinedFamily value)? joinedFamily,
  }) {
    return registeredFamily?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FamilyBlocStatusInitial value)? initial,
    TResult Function(_FamilyBlocStatusLoading value)? loading,
    TResult Function(_FamilyBlocStatusSuccess value)? success,
    TResult Function(_FamilyBlocStatusError value)? error,
    TResult Function(_FamilyBlocStatusRegisteredFamily value)? registeredFamily,
    TResult Function(_FamilyBlocStatusJoinedFamily value)? joinedFamily,
    required TResult orElse(),
  }) {
    if (registeredFamily != null) {
      return registeredFamily(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FamilyBlocStatusRegisteredFamilyImplToJson(
      this,
    );
  }
}

abstract class _FamilyBlocStatusRegisteredFamily extends FamilyBlocStatus {
  factory _FamilyBlocStatusRegisteredFamily() =
      _$FamilyBlocStatusRegisteredFamilyImpl;
  _FamilyBlocStatusRegisteredFamily._() : super._();

  factory _FamilyBlocStatusRegisteredFamily.fromJson(
          Map<String, dynamic> json) =
      _$FamilyBlocStatusRegisteredFamilyImpl.fromJson;
}

/// @nodoc
abstract class _$$FamilyBlocStatusJoinedFamilyImplCopyWith<$Res> {
  factory _$$FamilyBlocStatusJoinedFamilyImplCopyWith(
          _$FamilyBlocStatusJoinedFamilyImpl value,
          $Res Function(_$FamilyBlocStatusJoinedFamilyImpl) then) =
      __$$FamilyBlocStatusJoinedFamilyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FamilyBlocStatusJoinedFamilyImplCopyWithImpl<$Res>
    extends _$FamilyBlocStatusCopyWithImpl<$Res,
        _$FamilyBlocStatusJoinedFamilyImpl>
    implements _$$FamilyBlocStatusJoinedFamilyImplCopyWith<$Res> {
  __$$FamilyBlocStatusJoinedFamilyImplCopyWithImpl(
      _$FamilyBlocStatusJoinedFamilyImpl _value,
      $Res Function(_$FamilyBlocStatusJoinedFamilyImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$FamilyBlocStatusJoinedFamilyImpl extends _FamilyBlocStatusJoinedFamily {
  _$FamilyBlocStatusJoinedFamilyImpl({final String? $type})
      : $type = $type ?? 'joinedFamily',
        super._();

  factory _$FamilyBlocStatusJoinedFamilyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FamilyBlocStatusJoinedFamilyImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FamilyBlocStatus.joinedFamily()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyBlocStatusJoinedFamilyImpl);
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
    required TResult Function() registeredFamily,
    required TResult Function() joinedFamily,
  }) {
    return joinedFamily();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? error,
    TResult? Function()? registeredFamily,
    TResult? Function()? joinedFamily,
  }) {
    return joinedFamily?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
    TResult Function()? registeredFamily,
    TResult Function()? joinedFamily,
    required TResult orElse(),
  }) {
    if (joinedFamily != null) {
      return joinedFamily();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FamilyBlocStatusInitial value) initial,
    required TResult Function(_FamilyBlocStatusLoading value) loading,
    required TResult Function(_FamilyBlocStatusSuccess value) success,
    required TResult Function(_FamilyBlocStatusError value) error,
    required TResult Function(_FamilyBlocStatusRegisteredFamily value)
        registeredFamily,
    required TResult Function(_FamilyBlocStatusJoinedFamily value) joinedFamily,
  }) {
    return joinedFamily(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FamilyBlocStatusInitial value)? initial,
    TResult? Function(_FamilyBlocStatusLoading value)? loading,
    TResult? Function(_FamilyBlocStatusSuccess value)? success,
    TResult? Function(_FamilyBlocStatusError value)? error,
    TResult? Function(_FamilyBlocStatusRegisteredFamily value)?
        registeredFamily,
    TResult? Function(_FamilyBlocStatusJoinedFamily value)? joinedFamily,
  }) {
    return joinedFamily?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FamilyBlocStatusInitial value)? initial,
    TResult Function(_FamilyBlocStatusLoading value)? loading,
    TResult Function(_FamilyBlocStatusSuccess value)? success,
    TResult Function(_FamilyBlocStatusError value)? error,
    TResult Function(_FamilyBlocStatusRegisteredFamily value)? registeredFamily,
    TResult Function(_FamilyBlocStatusJoinedFamily value)? joinedFamily,
    required TResult orElse(),
  }) {
    if (joinedFamily != null) {
      return joinedFamily(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FamilyBlocStatusJoinedFamilyImplToJson(
      this,
    );
  }
}

abstract class _FamilyBlocStatusJoinedFamily extends FamilyBlocStatus {
  factory _FamilyBlocStatusJoinedFamily() = _$FamilyBlocStatusJoinedFamilyImpl;
  _FamilyBlocStatusJoinedFamily._() : super._();

  factory _FamilyBlocStatusJoinedFamily.fromJson(Map<String, dynamic> json) =
      _$FamilyBlocStatusJoinedFamilyImpl.fromJson;
}
