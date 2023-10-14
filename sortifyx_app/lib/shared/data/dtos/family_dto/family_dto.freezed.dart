// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'family_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FamilyDto _$FamilyDtoFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'createFamily':
      return CreateFamilyDto.fromJson(json);
    case 'updateFamily':
      return UpdateFamilyDto.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'FamilyDto',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$FamilyDto {
  String get familyName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String familyName) createFamily,
    required TResult Function(String familyName) updateFamily,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String familyName)? createFamily,
    TResult? Function(String familyName)? updateFamily,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String familyName)? createFamily,
    TResult Function(String familyName)? updateFamily,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateFamilyDto value) createFamily,
    required TResult Function(UpdateFamilyDto value) updateFamily,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateFamilyDto value)? createFamily,
    TResult? Function(UpdateFamilyDto value)? updateFamily,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateFamilyDto value)? createFamily,
    TResult Function(UpdateFamilyDto value)? updateFamily,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FamilyDtoCopyWith<FamilyDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyDtoCopyWith<$Res> {
  factory $FamilyDtoCopyWith(FamilyDto value, $Res Function(FamilyDto) then) =
      _$FamilyDtoCopyWithImpl<$Res, FamilyDto>;
  @useResult
  $Res call({String familyName});
}

/// @nodoc
class _$FamilyDtoCopyWithImpl<$Res, $Val extends FamilyDto>
    implements $FamilyDtoCopyWith<$Res> {
  _$FamilyDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? familyName = null,
  }) {
    return _then(_value.copyWith(
      familyName: null == familyName
          ? _value.familyName
          : familyName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateFamilyDtoImplCopyWith<$Res>
    implements $FamilyDtoCopyWith<$Res> {
  factory _$$CreateFamilyDtoImplCopyWith(_$CreateFamilyDtoImpl value,
          $Res Function(_$CreateFamilyDtoImpl) then) =
      __$$CreateFamilyDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String familyName});
}

/// @nodoc
class __$$CreateFamilyDtoImplCopyWithImpl<$Res>
    extends _$FamilyDtoCopyWithImpl<$Res, _$CreateFamilyDtoImpl>
    implements _$$CreateFamilyDtoImplCopyWith<$Res> {
  __$$CreateFamilyDtoImplCopyWithImpl(
      _$CreateFamilyDtoImpl _value, $Res Function(_$CreateFamilyDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? familyName = null,
  }) {
    return _then(_$CreateFamilyDtoImpl(
      familyName: null == familyName
          ? _value.familyName
          : familyName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateFamilyDtoImpl implements CreateFamilyDto {
  _$CreateFamilyDtoImpl({required this.familyName, final String? $type})
      : $type = $type ?? 'createFamily';

  factory _$CreateFamilyDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateFamilyDtoImplFromJson(json);

  @override
  final String familyName;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FamilyDto.createFamily(familyName: $familyName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFamilyDtoImpl &&
            (identical(other.familyName, familyName) ||
                other.familyName == familyName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, familyName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFamilyDtoImplCopyWith<_$CreateFamilyDtoImpl> get copyWith =>
      __$$CreateFamilyDtoImplCopyWithImpl<_$CreateFamilyDtoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String familyName) createFamily,
    required TResult Function(String familyName) updateFamily,
  }) {
    return createFamily(familyName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String familyName)? createFamily,
    TResult? Function(String familyName)? updateFamily,
  }) {
    return createFamily?.call(familyName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String familyName)? createFamily,
    TResult Function(String familyName)? updateFamily,
    required TResult orElse(),
  }) {
    if (createFamily != null) {
      return createFamily(familyName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateFamilyDto value) createFamily,
    required TResult Function(UpdateFamilyDto value) updateFamily,
  }) {
    return createFamily(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateFamilyDto value)? createFamily,
    TResult? Function(UpdateFamilyDto value)? updateFamily,
  }) {
    return createFamily?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateFamilyDto value)? createFamily,
    TResult Function(UpdateFamilyDto value)? updateFamily,
    required TResult orElse(),
  }) {
    if (createFamily != null) {
      return createFamily(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateFamilyDtoImplToJson(
      this,
    );
  }
}

abstract class CreateFamilyDto implements FamilyDto {
  factory CreateFamilyDto({required final String familyName}) =
      _$CreateFamilyDtoImpl;

  factory CreateFamilyDto.fromJson(Map<String, dynamic> json) =
      _$CreateFamilyDtoImpl.fromJson;

  @override
  String get familyName;
  @override
  @JsonKey(ignore: true)
  _$$CreateFamilyDtoImplCopyWith<_$CreateFamilyDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateFamilyDtoImplCopyWith<$Res>
    implements $FamilyDtoCopyWith<$Res> {
  factory _$$UpdateFamilyDtoImplCopyWith(_$UpdateFamilyDtoImpl value,
          $Res Function(_$UpdateFamilyDtoImpl) then) =
      __$$UpdateFamilyDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String familyName});
}

/// @nodoc
class __$$UpdateFamilyDtoImplCopyWithImpl<$Res>
    extends _$FamilyDtoCopyWithImpl<$Res, _$UpdateFamilyDtoImpl>
    implements _$$UpdateFamilyDtoImplCopyWith<$Res> {
  __$$UpdateFamilyDtoImplCopyWithImpl(
      _$UpdateFamilyDtoImpl _value, $Res Function(_$UpdateFamilyDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? familyName = null,
  }) {
    return _then(_$UpdateFamilyDtoImpl(
      familyName: null == familyName
          ? _value.familyName
          : familyName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateFamilyDtoImpl implements UpdateFamilyDto {
  _$UpdateFamilyDtoImpl({required this.familyName, final String? $type})
      : $type = $type ?? 'updateFamily';

  factory _$UpdateFamilyDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateFamilyDtoImplFromJson(json);

  @override
  final String familyName;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FamilyDto.updateFamily(familyName: $familyName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFamilyDtoImpl &&
            (identical(other.familyName, familyName) ||
                other.familyName == familyName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, familyName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFamilyDtoImplCopyWith<_$UpdateFamilyDtoImpl> get copyWith =>
      __$$UpdateFamilyDtoImplCopyWithImpl<_$UpdateFamilyDtoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String familyName) createFamily,
    required TResult Function(String familyName) updateFamily,
  }) {
    return updateFamily(familyName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String familyName)? createFamily,
    TResult? Function(String familyName)? updateFamily,
  }) {
    return updateFamily?.call(familyName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String familyName)? createFamily,
    TResult Function(String familyName)? updateFamily,
    required TResult orElse(),
  }) {
    if (updateFamily != null) {
      return updateFamily(familyName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateFamilyDto value) createFamily,
    required TResult Function(UpdateFamilyDto value) updateFamily,
  }) {
    return updateFamily(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateFamilyDto value)? createFamily,
    TResult? Function(UpdateFamilyDto value)? updateFamily,
  }) {
    return updateFamily?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateFamilyDto value)? createFamily,
    TResult Function(UpdateFamilyDto value)? updateFamily,
    required TResult orElse(),
  }) {
    if (updateFamily != null) {
      return updateFamily(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateFamilyDtoImplToJson(
      this,
    );
  }
}

abstract class UpdateFamilyDto implements FamilyDto {
  factory UpdateFamilyDto({required final String familyName}) =
      _$UpdateFamilyDtoImpl;

  factory UpdateFamilyDto.fromJson(Map<String, dynamic> json) =
      _$UpdateFamilyDtoImpl.fromJson;

  @override
  String get familyName;
  @override
  @JsonKey(ignore: true)
  _$$UpdateFamilyDtoImplCopyWith<_$UpdateFamilyDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
