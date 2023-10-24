// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'family_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FamilyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateFamilyDto dto) createFamily,
    required TResult Function() getMyFamilies,
    required TResult Function(String familyId) getFamilyById,
    required TResult Function(String familyCode) joinFamily,
    required TResult Function(UpdateFamilyDto dto) updateFamily,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CreateFamilyDto dto)? createFamily,
    TResult? Function()? getMyFamilies,
    TResult? Function(String familyId)? getFamilyById,
    TResult? Function(String familyCode)? joinFamily,
    TResult? Function(UpdateFamilyDto dto)? updateFamily,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateFamilyDto dto)? createFamily,
    TResult Function()? getMyFamilies,
    TResult Function(String familyId)? getFamilyById,
    TResult Function(String familyCode)? joinFamily,
    TResult Function(UpdateFamilyDto dto)? updateFamily,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FamilyCreateFamily value) createFamily,
    required TResult Function(_FamilyGetMyFamilies value) getMyFamilies,
    required TResult Function(_FamilyGetFamilyById value) getFamilyById,
    required TResult Function(_FamilyJoinFamily value) joinFamily,
    required TResult Function(_FamilyUpdateFamily value) updateFamily,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FamilyCreateFamily value)? createFamily,
    TResult? Function(_FamilyGetMyFamilies value)? getMyFamilies,
    TResult? Function(_FamilyGetFamilyById value)? getFamilyById,
    TResult? Function(_FamilyJoinFamily value)? joinFamily,
    TResult? Function(_FamilyUpdateFamily value)? updateFamily,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FamilyCreateFamily value)? createFamily,
    TResult Function(_FamilyGetMyFamilies value)? getMyFamilies,
    TResult Function(_FamilyGetFamilyById value)? getFamilyById,
    TResult Function(_FamilyJoinFamily value)? joinFamily,
    TResult Function(_FamilyUpdateFamily value)? updateFamily,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyEventCopyWith<$Res> {
  factory $FamilyEventCopyWith(
          FamilyEvent value, $Res Function(FamilyEvent) then) =
      _$FamilyEventCopyWithImpl<$Res, FamilyEvent>;
}

/// @nodoc
class _$FamilyEventCopyWithImpl<$Res, $Val extends FamilyEvent>
    implements $FamilyEventCopyWith<$Res> {
  _$FamilyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$FamilyEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FamilyEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'FamilyEvent.started'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateFamilyDto dto) createFamily,
    required TResult Function() getMyFamilies,
    required TResult Function(String familyId) getFamilyById,
    required TResult Function(String familyCode) joinFamily,
    required TResult Function(UpdateFamilyDto dto) updateFamily,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CreateFamilyDto dto)? createFamily,
    TResult? Function()? getMyFamilies,
    TResult? Function(String familyId)? getFamilyById,
    TResult? Function(String familyCode)? joinFamily,
    TResult? Function(UpdateFamilyDto dto)? updateFamily,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateFamilyDto dto)? createFamily,
    TResult Function()? getMyFamilies,
    TResult Function(String familyId)? getFamilyById,
    TResult Function(String familyCode)? joinFamily,
    TResult Function(UpdateFamilyDto dto)? updateFamily,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FamilyCreateFamily value) createFamily,
    required TResult Function(_FamilyGetMyFamilies value) getMyFamilies,
    required TResult Function(_FamilyGetFamilyById value) getFamilyById,
    required TResult Function(_FamilyJoinFamily value) joinFamily,
    required TResult Function(_FamilyUpdateFamily value) updateFamily,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FamilyCreateFamily value)? createFamily,
    TResult? Function(_FamilyGetMyFamilies value)? getMyFamilies,
    TResult? Function(_FamilyGetFamilyById value)? getFamilyById,
    TResult? Function(_FamilyJoinFamily value)? joinFamily,
    TResult? Function(_FamilyUpdateFamily value)? updateFamily,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FamilyCreateFamily value)? createFamily,
    TResult Function(_FamilyGetMyFamilies value)? getMyFamilies,
    TResult Function(_FamilyGetFamilyById value)? getFamilyById,
    TResult Function(_FamilyJoinFamily value)? joinFamily,
    TResult Function(_FamilyUpdateFamily value)? updateFamily,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FamilyEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FamilyCreateFamilyImplCopyWith<$Res> {
  factory _$$FamilyCreateFamilyImplCopyWith(_$FamilyCreateFamilyImpl value,
          $Res Function(_$FamilyCreateFamilyImpl) then) =
      __$$FamilyCreateFamilyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateFamilyDto dto});
}

/// @nodoc
class __$$FamilyCreateFamilyImplCopyWithImpl<$Res>
    extends _$FamilyEventCopyWithImpl<$Res, _$FamilyCreateFamilyImpl>
    implements _$$FamilyCreateFamilyImplCopyWith<$Res> {
  __$$FamilyCreateFamilyImplCopyWithImpl(_$FamilyCreateFamilyImpl _value,
      $Res Function(_$FamilyCreateFamilyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = freezed,
  }) {
    return _then(_$FamilyCreateFamilyImpl(
      dto: freezed == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as CreateFamilyDto,
    ));
  }
}

/// @nodoc

class _$FamilyCreateFamilyImpl
    with DiagnosticableTreeMixin
    implements _FamilyCreateFamily {
  const _$FamilyCreateFamilyImpl({required this.dto});

  @override
  final CreateFamilyDto dto;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FamilyEvent.createFamily(dto: $dto)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FamilyEvent.createFamily'))
      ..add(DiagnosticsProperty('dto', dto));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyCreateFamilyImpl &&
            const DeepCollectionEquality().equals(other.dto, dto));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(dto));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FamilyCreateFamilyImplCopyWith<_$FamilyCreateFamilyImpl> get copyWith =>
      __$$FamilyCreateFamilyImplCopyWithImpl<_$FamilyCreateFamilyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateFamilyDto dto) createFamily,
    required TResult Function() getMyFamilies,
    required TResult Function(String familyId) getFamilyById,
    required TResult Function(String familyCode) joinFamily,
    required TResult Function(UpdateFamilyDto dto) updateFamily,
  }) {
    return createFamily(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CreateFamilyDto dto)? createFamily,
    TResult? Function()? getMyFamilies,
    TResult? Function(String familyId)? getFamilyById,
    TResult? Function(String familyCode)? joinFamily,
    TResult? Function(UpdateFamilyDto dto)? updateFamily,
  }) {
    return createFamily?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateFamilyDto dto)? createFamily,
    TResult Function()? getMyFamilies,
    TResult Function(String familyId)? getFamilyById,
    TResult Function(String familyCode)? joinFamily,
    TResult Function(UpdateFamilyDto dto)? updateFamily,
    required TResult orElse(),
  }) {
    if (createFamily != null) {
      return createFamily(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FamilyCreateFamily value) createFamily,
    required TResult Function(_FamilyGetMyFamilies value) getMyFamilies,
    required TResult Function(_FamilyGetFamilyById value) getFamilyById,
    required TResult Function(_FamilyJoinFamily value) joinFamily,
    required TResult Function(_FamilyUpdateFamily value) updateFamily,
  }) {
    return createFamily(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FamilyCreateFamily value)? createFamily,
    TResult? Function(_FamilyGetMyFamilies value)? getMyFamilies,
    TResult? Function(_FamilyGetFamilyById value)? getFamilyById,
    TResult? Function(_FamilyJoinFamily value)? joinFamily,
    TResult? Function(_FamilyUpdateFamily value)? updateFamily,
  }) {
    return createFamily?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FamilyCreateFamily value)? createFamily,
    TResult Function(_FamilyGetMyFamilies value)? getMyFamilies,
    TResult Function(_FamilyGetFamilyById value)? getFamilyById,
    TResult Function(_FamilyJoinFamily value)? joinFamily,
    TResult Function(_FamilyUpdateFamily value)? updateFamily,
    required TResult orElse(),
  }) {
    if (createFamily != null) {
      return createFamily(this);
    }
    return orElse();
  }
}

abstract class _FamilyCreateFamily implements FamilyEvent {
  const factory _FamilyCreateFamily({required final CreateFamilyDto dto}) =
      _$FamilyCreateFamilyImpl;

  CreateFamilyDto get dto;
  @JsonKey(ignore: true)
  _$$FamilyCreateFamilyImplCopyWith<_$FamilyCreateFamilyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FamilyGetMyFamiliesImplCopyWith<$Res> {
  factory _$$FamilyGetMyFamiliesImplCopyWith(_$FamilyGetMyFamiliesImpl value,
          $Res Function(_$FamilyGetMyFamiliesImpl) then) =
      __$$FamilyGetMyFamiliesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FamilyGetMyFamiliesImplCopyWithImpl<$Res>
    extends _$FamilyEventCopyWithImpl<$Res, _$FamilyGetMyFamiliesImpl>
    implements _$$FamilyGetMyFamiliesImplCopyWith<$Res> {
  __$$FamilyGetMyFamiliesImplCopyWithImpl(_$FamilyGetMyFamiliesImpl _value,
      $Res Function(_$FamilyGetMyFamiliesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FamilyGetMyFamiliesImpl
    with DiagnosticableTreeMixin
    implements _FamilyGetMyFamilies {
  const _$FamilyGetMyFamiliesImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FamilyEvent.getMyFamilies()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'FamilyEvent.getMyFamilies'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyGetMyFamiliesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateFamilyDto dto) createFamily,
    required TResult Function() getMyFamilies,
    required TResult Function(String familyId) getFamilyById,
    required TResult Function(String familyCode) joinFamily,
    required TResult Function(UpdateFamilyDto dto) updateFamily,
  }) {
    return getMyFamilies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CreateFamilyDto dto)? createFamily,
    TResult? Function()? getMyFamilies,
    TResult? Function(String familyId)? getFamilyById,
    TResult? Function(String familyCode)? joinFamily,
    TResult? Function(UpdateFamilyDto dto)? updateFamily,
  }) {
    return getMyFamilies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateFamilyDto dto)? createFamily,
    TResult Function()? getMyFamilies,
    TResult Function(String familyId)? getFamilyById,
    TResult Function(String familyCode)? joinFamily,
    TResult Function(UpdateFamilyDto dto)? updateFamily,
    required TResult orElse(),
  }) {
    if (getMyFamilies != null) {
      return getMyFamilies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FamilyCreateFamily value) createFamily,
    required TResult Function(_FamilyGetMyFamilies value) getMyFamilies,
    required TResult Function(_FamilyGetFamilyById value) getFamilyById,
    required TResult Function(_FamilyJoinFamily value) joinFamily,
    required TResult Function(_FamilyUpdateFamily value) updateFamily,
  }) {
    return getMyFamilies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FamilyCreateFamily value)? createFamily,
    TResult? Function(_FamilyGetMyFamilies value)? getMyFamilies,
    TResult? Function(_FamilyGetFamilyById value)? getFamilyById,
    TResult? Function(_FamilyJoinFamily value)? joinFamily,
    TResult? Function(_FamilyUpdateFamily value)? updateFamily,
  }) {
    return getMyFamilies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FamilyCreateFamily value)? createFamily,
    TResult Function(_FamilyGetMyFamilies value)? getMyFamilies,
    TResult Function(_FamilyGetFamilyById value)? getFamilyById,
    TResult Function(_FamilyJoinFamily value)? joinFamily,
    TResult Function(_FamilyUpdateFamily value)? updateFamily,
    required TResult orElse(),
  }) {
    if (getMyFamilies != null) {
      return getMyFamilies(this);
    }
    return orElse();
  }
}

abstract class _FamilyGetMyFamilies implements FamilyEvent {
  const factory _FamilyGetMyFamilies() = _$FamilyGetMyFamiliesImpl;
}

/// @nodoc
abstract class _$$FamilyGetFamilyByIdImplCopyWith<$Res> {
  factory _$$FamilyGetFamilyByIdImplCopyWith(_$FamilyGetFamilyByIdImpl value,
          $Res Function(_$FamilyGetFamilyByIdImpl) then) =
      __$$FamilyGetFamilyByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String familyId});
}

/// @nodoc
class __$$FamilyGetFamilyByIdImplCopyWithImpl<$Res>
    extends _$FamilyEventCopyWithImpl<$Res, _$FamilyGetFamilyByIdImpl>
    implements _$$FamilyGetFamilyByIdImplCopyWith<$Res> {
  __$$FamilyGetFamilyByIdImplCopyWithImpl(_$FamilyGetFamilyByIdImpl _value,
      $Res Function(_$FamilyGetFamilyByIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? familyId = null,
  }) {
    return _then(_$FamilyGetFamilyByIdImpl(
      familyId: null == familyId
          ? _value.familyId
          : familyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FamilyGetFamilyByIdImpl
    with DiagnosticableTreeMixin
    implements _FamilyGetFamilyById {
  const _$FamilyGetFamilyByIdImpl({required this.familyId});

  @override
  final String familyId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FamilyEvent.getFamilyById(familyId: $familyId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FamilyEvent.getFamilyById'))
      ..add(DiagnosticsProperty('familyId', familyId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyGetFamilyByIdImpl &&
            (identical(other.familyId, familyId) ||
                other.familyId == familyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, familyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FamilyGetFamilyByIdImplCopyWith<_$FamilyGetFamilyByIdImpl> get copyWith =>
      __$$FamilyGetFamilyByIdImplCopyWithImpl<_$FamilyGetFamilyByIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateFamilyDto dto) createFamily,
    required TResult Function() getMyFamilies,
    required TResult Function(String familyId) getFamilyById,
    required TResult Function(String familyCode) joinFamily,
    required TResult Function(UpdateFamilyDto dto) updateFamily,
  }) {
    return getFamilyById(familyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CreateFamilyDto dto)? createFamily,
    TResult? Function()? getMyFamilies,
    TResult? Function(String familyId)? getFamilyById,
    TResult? Function(String familyCode)? joinFamily,
    TResult? Function(UpdateFamilyDto dto)? updateFamily,
  }) {
    return getFamilyById?.call(familyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateFamilyDto dto)? createFamily,
    TResult Function()? getMyFamilies,
    TResult Function(String familyId)? getFamilyById,
    TResult Function(String familyCode)? joinFamily,
    TResult Function(UpdateFamilyDto dto)? updateFamily,
    required TResult orElse(),
  }) {
    if (getFamilyById != null) {
      return getFamilyById(familyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FamilyCreateFamily value) createFamily,
    required TResult Function(_FamilyGetMyFamilies value) getMyFamilies,
    required TResult Function(_FamilyGetFamilyById value) getFamilyById,
    required TResult Function(_FamilyJoinFamily value) joinFamily,
    required TResult Function(_FamilyUpdateFamily value) updateFamily,
  }) {
    return getFamilyById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FamilyCreateFamily value)? createFamily,
    TResult? Function(_FamilyGetMyFamilies value)? getMyFamilies,
    TResult? Function(_FamilyGetFamilyById value)? getFamilyById,
    TResult? Function(_FamilyJoinFamily value)? joinFamily,
    TResult? Function(_FamilyUpdateFamily value)? updateFamily,
  }) {
    return getFamilyById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FamilyCreateFamily value)? createFamily,
    TResult Function(_FamilyGetMyFamilies value)? getMyFamilies,
    TResult Function(_FamilyGetFamilyById value)? getFamilyById,
    TResult Function(_FamilyJoinFamily value)? joinFamily,
    TResult Function(_FamilyUpdateFamily value)? updateFamily,
    required TResult orElse(),
  }) {
    if (getFamilyById != null) {
      return getFamilyById(this);
    }
    return orElse();
  }
}

abstract class _FamilyGetFamilyById implements FamilyEvent {
  const factory _FamilyGetFamilyById({required final String familyId}) =
      _$FamilyGetFamilyByIdImpl;

  String get familyId;
  @JsonKey(ignore: true)
  _$$FamilyGetFamilyByIdImplCopyWith<_$FamilyGetFamilyByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FamilyJoinFamilyImplCopyWith<$Res> {
  factory _$$FamilyJoinFamilyImplCopyWith(_$FamilyJoinFamilyImpl value,
          $Res Function(_$FamilyJoinFamilyImpl) then) =
      __$$FamilyJoinFamilyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String familyCode});
}

/// @nodoc
class __$$FamilyJoinFamilyImplCopyWithImpl<$Res>
    extends _$FamilyEventCopyWithImpl<$Res, _$FamilyJoinFamilyImpl>
    implements _$$FamilyJoinFamilyImplCopyWith<$Res> {
  __$$FamilyJoinFamilyImplCopyWithImpl(_$FamilyJoinFamilyImpl _value,
      $Res Function(_$FamilyJoinFamilyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? familyCode = null,
  }) {
    return _then(_$FamilyJoinFamilyImpl(
      familyCode: null == familyCode
          ? _value.familyCode
          : familyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FamilyJoinFamilyImpl
    with DiagnosticableTreeMixin
    implements _FamilyJoinFamily {
  const _$FamilyJoinFamilyImpl({required this.familyCode});

  @override
  final String familyCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FamilyEvent.joinFamily(familyCode: $familyCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FamilyEvent.joinFamily'))
      ..add(DiagnosticsProperty('familyCode', familyCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyJoinFamilyImpl &&
            (identical(other.familyCode, familyCode) ||
                other.familyCode == familyCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, familyCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FamilyJoinFamilyImplCopyWith<_$FamilyJoinFamilyImpl> get copyWith =>
      __$$FamilyJoinFamilyImplCopyWithImpl<_$FamilyJoinFamilyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateFamilyDto dto) createFamily,
    required TResult Function() getMyFamilies,
    required TResult Function(String familyId) getFamilyById,
    required TResult Function(String familyCode) joinFamily,
    required TResult Function(UpdateFamilyDto dto) updateFamily,
  }) {
    return joinFamily(familyCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CreateFamilyDto dto)? createFamily,
    TResult? Function()? getMyFamilies,
    TResult? Function(String familyId)? getFamilyById,
    TResult? Function(String familyCode)? joinFamily,
    TResult? Function(UpdateFamilyDto dto)? updateFamily,
  }) {
    return joinFamily?.call(familyCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateFamilyDto dto)? createFamily,
    TResult Function()? getMyFamilies,
    TResult Function(String familyId)? getFamilyById,
    TResult Function(String familyCode)? joinFamily,
    TResult Function(UpdateFamilyDto dto)? updateFamily,
    required TResult orElse(),
  }) {
    if (joinFamily != null) {
      return joinFamily(familyCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FamilyCreateFamily value) createFamily,
    required TResult Function(_FamilyGetMyFamilies value) getMyFamilies,
    required TResult Function(_FamilyGetFamilyById value) getFamilyById,
    required TResult Function(_FamilyJoinFamily value) joinFamily,
    required TResult Function(_FamilyUpdateFamily value) updateFamily,
  }) {
    return joinFamily(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FamilyCreateFamily value)? createFamily,
    TResult? Function(_FamilyGetMyFamilies value)? getMyFamilies,
    TResult? Function(_FamilyGetFamilyById value)? getFamilyById,
    TResult? Function(_FamilyJoinFamily value)? joinFamily,
    TResult? Function(_FamilyUpdateFamily value)? updateFamily,
  }) {
    return joinFamily?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FamilyCreateFamily value)? createFamily,
    TResult Function(_FamilyGetMyFamilies value)? getMyFamilies,
    TResult Function(_FamilyGetFamilyById value)? getFamilyById,
    TResult Function(_FamilyJoinFamily value)? joinFamily,
    TResult Function(_FamilyUpdateFamily value)? updateFamily,
    required TResult orElse(),
  }) {
    if (joinFamily != null) {
      return joinFamily(this);
    }
    return orElse();
  }
}

abstract class _FamilyJoinFamily implements FamilyEvent {
  const factory _FamilyJoinFamily({required final String familyCode}) =
      _$FamilyJoinFamilyImpl;

  String get familyCode;
  @JsonKey(ignore: true)
  _$$FamilyJoinFamilyImplCopyWith<_$FamilyJoinFamilyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FamilyUpdateFamilyImplCopyWith<$Res> {
  factory _$$FamilyUpdateFamilyImplCopyWith(_$FamilyUpdateFamilyImpl value,
          $Res Function(_$FamilyUpdateFamilyImpl) then) =
      __$$FamilyUpdateFamilyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateFamilyDto dto});
}

/// @nodoc
class __$$FamilyUpdateFamilyImplCopyWithImpl<$Res>
    extends _$FamilyEventCopyWithImpl<$Res, _$FamilyUpdateFamilyImpl>
    implements _$$FamilyUpdateFamilyImplCopyWith<$Res> {
  __$$FamilyUpdateFamilyImplCopyWithImpl(_$FamilyUpdateFamilyImpl _value,
      $Res Function(_$FamilyUpdateFamilyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = freezed,
  }) {
    return _then(_$FamilyUpdateFamilyImpl(
      dto: freezed == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as UpdateFamilyDto,
    ));
  }
}

/// @nodoc

class _$FamilyUpdateFamilyImpl
    with DiagnosticableTreeMixin
    implements _FamilyUpdateFamily {
  const _$FamilyUpdateFamilyImpl({required this.dto});

  @override
  final UpdateFamilyDto dto;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FamilyEvent.updateFamily(dto: $dto)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FamilyEvent.updateFamily'))
      ..add(DiagnosticsProperty('dto', dto));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyUpdateFamilyImpl &&
            const DeepCollectionEquality().equals(other.dto, dto));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(dto));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FamilyUpdateFamilyImplCopyWith<_$FamilyUpdateFamilyImpl> get copyWith =>
      __$$FamilyUpdateFamilyImplCopyWithImpl<_$FamilyUpdateFamilyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateFamilyDto dto) createFamily,
    required TResult Function() getMyFamilies,
    required TResult Function(String familyId) getFamilyById,
    required TResult Function(String familyCode) joinFamily,
    required TResult Function(UpdateFamilyDto dto) updateFamily,
  }) {
    return updateFamily(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CreateFamilyDto dto)? createFamily,
    TResult? Function()? getMyFamilies,
    TResult? Function(String familyId)? getFamilyById,
    TResult? Function(String familyCode)? joinFamily,
    TResult? Function(UpdateFamilyDto dto)? updateFamily,
  }) {
    return updateFamily?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateFamilyDto dto)? createFamily,
    TResult Function()? getMyFamilies,
    TResult Function(String familyId)? getFamilyById,
    TResult Function(String familyCode)? joinFamily,
    TResult Function(UpdateFamilyDto dto)? updateFamily,
    required TResult orElse(),
  }) {
    if (updateFamily != null) {
      return updateFamily(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FamilyCreateFamily value) createFamily,
    required TResult Function(_FamilyGetMyFamilies value) getMyFamilies,
    required TResult Function(_FamilyGetFamilyById value) getFamilyById,
    required TResult Function(_FamilyJoinFamily value) joinFamily,
    required TResult Function(_FamilyUpdateFamily value) updateFamily,
  }) {
    return updateFamily(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FamilyCreateFamily value)? createFamily,
    TResult? Function(_FamilyGetMyFamilies value)? getMyFamilies,
    TResult? Function(_FamilyGetFamilyById value)? getFamilyById,
    TResult? Function(_FamilyJoinFamily value)? joinFamily,
    TResult? Function(_FamilyUpdateFamily value)? updateFamily,
  }) {
    return updateFamily?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FamilyCreateFamily value)? createFamily,
    TResult Function(_FamilyGetMyFamilies value)? getMyFamilies,
    TResult Function(_FamilyGetFamilyById value)? getFamilyById,
    TResult Function(_FamilyJoinFamily value)? joinFamily,
    TResult Function(_FamilyUpdateFamily value)? updateFamily,
    required TResult orElse(),
  }) {
    if (updateFamily != null) {
      return updateFamily(this);
    }
    return orElse();
  }
}

abstract class _FamilyUpdateFamily implements FamilyEvent {
  const factory _FamilyUpdateFamily({required final UpdateFamilyDto dto}) =
      _$FamilyUpdateFamilyImpl;

  UpdateFamilyDto get dto;
  @JsonKey(ignore: true)
  _$$FamilyUpdateFamilyImplCopyWith<_$FamilyUpdateFamilyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FamilyState _$FamilyStateFromJson(Map<String, dynamic> json) {
  return _FamilyState.fromJson(json);
}

/// @nodoc
mixin _$FamilyState {
  FamilyBlocStatus get status => throw _privateConstructorUsedError;
  FamilyModel get myFamily => throw _privateConstructorUsedError;
  List<FamilyModel> get myFamilies => throw _privateConstructorUsedError;
  bool get joinedFamily => throw _privateConstructorUsedError;
  String get successMessage => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get loadingMessage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            FamilyBlocStatus status,
            FamilyModel myFamily,
            List<FamilyModel> myFamilies,
            bool joinedFamily,
            String successMessage,
            String errorMessage,
            String loadingMessage)
        family,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            FamilyBlocStatus status,
            FamilyModel myFamily,
            List<FamilyModel> myFamilies,
            bool joinedFamily,
            String successMessage,
            String errorMessage,
            String loadingMessage)?
        family,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            FamilyBlocStatus status,
            FamilyModel myFamily,
            List<FamilyModel> myFamilies,
            bool joinedFamily,
            String successMessage,
            String errorMessage,
            String loadingMessage)?
        family,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FamilyState value) family,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FamilyState value)? family,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FamilyState value)? family,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FamilyStateCopyWith<FamilyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyStateCopyWith<$Res> {
  factory $FamilyStateCopyWith(
          FamilyState value, $Res Function(FamilyState) then) =
      _$FamilyStateCopyWithImpl<$Res, FamilyState>;
  @useResult
  $Res call(
      {FamilyBlocStatus status,
      FamilyModel myFamily,
      List<FamilyModel> myFamilies,
      bool joinedFamily,
      String successMessage,
      String errorMessage,
      String loadingMessage});

  $FamilyBlocStatusCopyWith<$Res> get status;
  $FamilyModelCopyWith<$Res> get myFamily;
}

/// @nodoc
class _$FamilyStateCopyWithImpl<$Res, $Val extends FamilyState>
    implements $FamilyStateCopyWith<$Res> {
  _$FamilyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? myFamily = null,
    Object? myFamilies = null,
    Object? joinedFamily = null,
    Object? successMessage = null,
    Object? errorMessage = null,
    Object? loadingMessage = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FamilyBlocStatus,
      myFamily: null == myFamily
          ? _value.myFamily
          : myFamily // ignore: cast_nullable_to_non_nullable
              as FamilyModel,
      myFamilies: null == myFamilies
          ? _value.myFamilies
          : myFamilies // ignore: cast_nullable_to_non_nullable
              as List<FamilyModel>,
      joinedFamily: null == joinedFamily
          ? _value.joinedFamily
          : joinedFamily // ignore: cast_nullable_to_non_nullable
              as bool,
      successMessage: null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      loadingMessage: null == loadingMessage
          ? _value.loadingMessage
          : loadingMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FamilyBlocStatusCopyWith<$Res> get status {
    return $FamilyBlocStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FamilyModelCopyWith<$Res> get myFamily {
    return $FamilyModelCopyWith<$Res>(_value.myFamily, (value) {
      return _then(_value.copyWith(myFamily: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FamilyStateImplCopyWith<$Res>
    implements $FamilyStateCopyWith<$Res> {
  factory _$$FamilyStateImplCopyWith(
          _$FamilyStateImpl value, $Res Function(_$FamilyStateImpl) then) =
      __$$FamilyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FamilyBlocStatus status,
      FamilyModel myFamily,
      List<FamilyModel> myFamilies,
      bool joinedFamily,
      String successMessage,
      String errorMessage,
      String loadingMessage});

  @override
  $FamilyBlocStatusCopyWith<$Res> get status;
  @override
  $FamilyModelCopyWith<$Res> get myFamily;
}

/// @nodoc
class __$$FamilyStateImplCopyWithImpl<$Res>
    extends _$FamilyStateCopyWithImpl<$Res, _$FamilyStateImpl>
    implements _$$FamilyStateImplCopyWith<$Res> {
  __$$FamilyStateImplCopyWithImpl(
      _$FamilyStateImpl _value, $Res Function(_$FamilyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? myFamily = null,
    Object? myFamilies = null,
    Object? joinedFamily = null,
    Object? successMessage = null,
    Object? errorMessage = null,
    Object? loadingMessage = null,
  }) {
    return _then(_$FamilyStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FamilyBlocStatus,
      myFamily: null == myFamily
          ? _value.myFamily
          : myFamily // ignore: cast_nullable_to_non_nullable
              as FamilyModel,
      myFamilies: null == myFamilies
          ? _value._myFamilies
          : myFamilies // ignore: cast_nullable_to_non_nullable
              as List<FamilyModel>,
      joinedFamily: null == joinedFamily
          ? _value.joinedFamily
          : joinedFamily // ignore: cast_nullable_to_non_nullable
              as bool,
      successMessage: null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      loadingMessage: null == loadingMessage
          ? _value.loadingMessage
          : loadingMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FamilyStateImpl with DiagnosticableTreeMixin implements _FamilyState {
  const _$FamilyStateImpl(
      {required this.status,
      required this.myFamily,
      required final List<FamilyModel> myFamilies,
      required this.joinedFamily,
      required this.successMessage,
      required this.errorMessage,
      required this.loadingMessage})
      : _myFamilies = myFamilies;

  factory _$FamilyStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$FamilyStateImplFromJson(json);

  @override
  final FamilyBlocStatus status;
  @override
  final FamilyModel myFamily;
  final List<FamilyModel> _myFamilies;
  @override
  List<FamilyModel> get myFamilies {
    if (_myFamilies is EqualUnmodifiableListView) return _myFamilies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myFamilies);
  }

  @override
  final bool joinedFamily;
  @override
  final String successMessage;
  @override
  final String errorMessage;
  @override
  final String loadingMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FamilyState.family(status: $status, myFamily: $myFamily, myFamilies: $myFamilies, joinedFamily: $joinedFamily, successMessage: $successMessage, errorMessage: $errorMessage, loadingMessage: $loadingMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FamilyState.family'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('myFamily', myFamily))
      ..add(DiagnosticsProperty('myFamilies', myFamilies))
      ..add(DiagnosticsProperty('joinedFamily', joinedFamily))
      ..add(DiagnosticsProperty('successMessage', successMessage))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('loadingMessage', loadingMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.myFamily, myFamily) ||
                other.myFamily == myFamily) &&
            const DeepCollectionEquality()
                .equals(other._myFamilies, _myFamilies) &&
            (identical(other.joinedFamily, joinedFamily) ||
                other.joinedFamily == joinedFamily) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.loadingMessage, loadingMessage) ||
                other.loadingMessage == loadingMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      myFamily,
      const DeepCollectionEquality().hash(_myFamilies),
      joinedFamily,
      successMessage,
      errorMessage,
      loadingMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FamilyStateImplCopyWith<_$FamilyStateImpl> get copyWith =>
      __$$FamilyStateImplCopyWithImpl<_$FamilyStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            FamilyBlocStatus status,
            FamilyModel myFamily,
            List<FamilyModel> myFamilies,
            bool joinedFamily,
            String successMessage,
            String errorMessage,
            String loadingMessage)
        family,
  }) {
    return family(status, myFamily, myFamilies, joinedFamily, successMessage,
        errorMessage, loadingMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            FamilyBlocStatus status,
            FamilyModel myFamily,
            List<FamilyModel> myFamilies,
            bool joinedFamily,
            String successMessage,
            String errorMessage,
            String loadingMessage)?
        family,
  }) {
    return family?.call(status, myFamily, myFamilies, joinedFamily,
        successMessage, errorMessage, loadingMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            FamilyBlocStatus status,
            FamilyModel myFamily,
            List<FamilyModel> myFamilies,
            bool joinedFamily,
            String successMessage,
            String errorMessage,
            String loadingMessage)?
        family,
    required TResult orElse(),
  }) {
    if (family != null) {
      return family(status, myFamily, myFamilies, joinedFamily, successMessage,
          errorMessage, loadingMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FamilyState value) family,
  }) {
    return family(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FamilyState value)? family,
  }) {
    return family?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FamilyState value)? family,
    required TResult orElse(),
  }) {
    if (family != null) {
      return family(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FamilyStateImplToJson(
      this,
    );
  }
}

abstract class _FamilyState implements FamilyState {
  const factory _FamilyState(
      {required final FamilyBlocStatus status,
      required final FamilyModel myFamily,
      required final List<FamilyModel> myFamilies,
      required final bool joinedFamily,
      required final String successMessage,
      required final String errorMessage,
      required final String loadingMessage}) = _$FamilyStateImpl;

  factory _FamilyState.fromJson(Map<String, dynamic> json) =
      _$FamilyStateImpl.fromJson;

  @override
  FamilyBlocStatus get status;
  @override
  FamilyModel get myFamily;
  @override
  List<FamilyModel> get myFamilies;
  @override
  bool get joinedFamily;
  @override
  String get successMessage;
  @override
  String get errorMessage;
  @override
  String get loadingMessage;
  @override
  @JsonKey(ignore: true)
  _$$FamilyStateImplCopyWith<_$FamilyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
