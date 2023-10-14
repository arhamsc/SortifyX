// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'family_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FamilyModel _$FamilyModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return Family.fromJson(json);
    case 'essentialFamilyFields':
      return _FamilyEssentialFields.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'FamilyModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$FamilyModel {
  String get id => throw _privateConstructorUsedError;
  String get familyHeadId =>
      throw _privateConstructorUsedError; //Should use User
  UserModel? get familyHead => throw _privateConstructorUsedError;
  String get familyName => throw _privateConstructorUsedError;
  String get familyCode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String familyHeadId, UserModel? familyHead,
            List<UserModel> familyMembers, String familyName, String familyCode)
        $default, {
    required TResult Function(String id, String familyHeadId,
            UserModel? familyHead, String familyName, String familyCode)
        essentialFamilyFields,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String familyHeadId,
            UserModel? familyHead,
            List<UserModel> familyMembers,
            String familyName,
            String familyCode)?
        $default, {
    TResult? Function(String id, String familyHeadId, UserModel? familyHead,
            String familyName, String familyCode)?
        essentialFamilyFields,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String familyHeadId,
            UserModel? familyHead,
            List<UserModel> familyMembers,
            String familyName,
            String familyCode)?
        $default, {
    TResult Function(String id, String familyHeadId, UserModel? familyHead,
            String familyName, String familyCode)?
        essentialFamilyFields,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Family value) $default, {
    required TResult Function(_FamilyEssentialFields value)
        essentialFamilyFields,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(Family value)? $default, {
    TResult? Function(_FamilyEssentialFields value)? essentialFamilyFields,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Family value)? $default, {
    TResult Function(_FamilyEssentialFields value)? essentialFamilyFields,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FamilyModelCopyWith<FamilyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyModelCopyWith<$Res> {
  factory $FamilyModelCopyWith(
          FamilyModel value, $Res Function(FamilyModel) then) =
      _$FamilyModelCopyWithImpl<$Res, FamilyModel>;
  @useResult
  $Res call(
      {String id,
      String familyHeadId,
      UserModel? familyHead,
      String familyName,
      String familyCode});

  $UserModelCopyWith<$Res>? get familyHead;
}

/// @nodoc
class _$FamilyModelCopyWithImpl<$Res, $Val extends FamilyModel>
    implements $FamilyModelCopyWith<$Res> {
  _$FamilyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? familyHeadId = null,
    Object? familyHead = freezed,
    Object? familyName = null,
    Object? familyCode = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      familyHeadId: null == familyHeadId
          ? _value.familyHeadId
          : familyHeadId // ignore: cast_nullable_to_non_nullable
              as String,
      familyHead: freezed == familyHead
          ? _value.familyHead
          : familyHead // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      familyName: null == familyName
          ? _value.familyName
          : familyName // ignore: cast_nullable_to_non_nullable
              as String,
      familyCode: null == familyCode
          ? _value.familyCode
          : familyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get familyHead {
    if (_value.familyHead == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.familyHead!, (value) {
      return _then(_value.copyWith(familyHead: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FamilyImplCopyWith<$Res>
    implements $FamilyModelCopyWith<$Res> {
  factory _$$FamilyImplCopyWith(
          _$FamilyImpl value, $Res Function(_$FamilyImpl) then) =
      __$$FamilyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String familyHeadId,
      UserModel? familyHead,
      List<UserModel> familyMembers,
      String familyName,
      String familyCode});

  @override
  $UserModelCopyWith<$Res>? get familyHead;
}

/// @nodoc
class __$$FamilyImplCopyWithImpl<$Res>
    extends _$FamilyModelCopyWithImpl<$Res, _$FamilyImpl>
    implements _$$FamilyImplCopyWith<$Res> {
  __$$FamilyImplCopyWithImpl(
      _$FamilyImpl _value, $Res Function(_$FamilyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? familyHeadId = null,
    Object? familyHead = freezed,
    Object? familyMembers = null,
    Object? familyName = null,
    Object? familyCode = null,
  }) {
    return _then(_$FamilyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      familyHeadId: null == familyHeadId
          ? _value.familyHeadId
          : familyHeadId // ignore: cast_nullable_to_non_nullable
              as String,
      familyHead: freezed == familyHead
          ? _value.familyHead
          : familyHead // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      familyMembers: null == familyMembers
          ? _value._familyMembers
          : familyMembers // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      familyName: null == familyName
          ? _value.familyName
          : familyName // ignore: cast_nullable_to_non_nullable
              as String,
      familyCode: null == familyCode
          ? _value.familyCode
          : familyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FamilyImpl extends Family with DiagnosticableTreeMixin {
  const _$FamilyImpl(
      {required this.id,
      required this.familyHeadId,
      this.familyHead,
      required final List<UserModel> familyMembers,
      required this.familyName,
      required this.familyCode,
      final String? $type})
      : _familyMembers = familyMembers,
        $type = $type ?? 'default',
        super._();

  factory _$FamilyImpl.fromJson(Map<String, dynamic> json) =>
      _$$FamilyImplFromJson(json);

  @override
  final String id;
  @override
  final String familyHeadId;
//Should use User
  @override
  final UserModel? familyHead;
//Essential User Fields model
  final List<UserModel> _familyMembers;
//Essential User Fields model
  @override
  List<UserModel> get familyMembers {
    if (_familyMembers is EqualUnmodifiableListView) return _familyMembers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_familyMembers);
  }

  @override
  final String familyName;
  @override
  final String familyCode;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FamilyModel(id: $id, familyHeadId: $familyHeadId, familyHead: $familyHead, familyMembers: $familyMembers, familyName: $familyName, familyCode: $familyCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FamilyModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('familyHeadId', familyHeadId))
      ..add(DiagnosticsProperty('familyHead', familyHead))
      ..add(DiagnosticsProperty('familyMembers', familyMembers))
      ..add(DiagnosticsProperty('familyName', familyName))
      ..add(DiagnosticsProperty('familyCode', familyCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.familyHeadId, familyHeadId) ||
                other.familyHeadId == familyHeadId) &&
            (identical(other.familyHead, familyHead) ||
                other.familyHead == familyHead) &&
            const DeepCollectionEquality()
                .equals(other._familyMembers, _familyMembers) &&
            (identical(other.familyName, familyName) ||
                other.familyName == familyName) &&
            (identical(other.familyCode, familyCode) ||
                other.familyCode == familyCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      familyHeadId,
      familyHead,
      const DeepCollectionEquality().hash(_familyMembers),
      familyName,
      familyCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FamilyImplCopyWith<_$FamilyImpl> get copyWith =>
      __$$FamilyImplCopyWithImpl<_$FamilyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String familyHeadId, UserModel? familyHead,
            List<UserModel> familyMembers, String familyName, String familyCode)
        $default, {
    required TResult Function(String id, String familyHeadId,
            UserModel? familyHead, String familyName, String familyCode)
        essentialFamilyFields,
  }) {
    return $default(
        id, familyHeadId, familyHead, familyMembers, familyName, familyCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String familyHeadId,
            UserModel? familyHead,
            List<UserModel> familyMembers,
            String familyName,
            String familyCode)?
        $default, {
    TResult? Function(String id, String familyHeadId, UserModel? familyHead,
            String familyName, String familyCode)?
        essentialFamilyFields,
  }) {
    return $default?.call(
        id, familyHeadId, familyHead, familyMembers, familyName, familyCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String familyHeadId,
            UserModel? familyHead,
            List<UserModel> familyMembers,
            String familyName,
            String familyCode)?
        $default, {
    TResult Function(String id, String familyHeadId, UserModel? familyHead,
            String familyName, String familyCode)?
        essentialFamilyFields,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          id, familyHeadId, familyHead, familyMembers, familyName, familyCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Family value) $default, {
    required TResult Function(_FamilyEssentialFields value)
        essentialFamilyFields,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(Family value)? $default, {
    TResult? Function(_FamilyEssentialFields value)? essentialFamilyFields,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Family value)? $default, {
    TResult Function(_FamilyEssentialFields value)? essentialFamilyFields,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FamilyImplToJson(
      this,
    );
  }
}

abstract class Family extends FamilyModel {
  const factory Family(
      {required final String id,
      required final String familyHeadId,
      final UserModel? familyHead,
      required final List<UserModel> familyMembers,
      required final String familyName,
      required final String familyCode}) = _$FamilyImpl;
  const Family._() : super._();

  factory Family.fromJson(Map<String, dynamic> json) = _$FamilyImpl.fromJson;

  @override
  String get id;
  @override
  String get familyHeadId;
  @override //Should use User
  UserModel? get familyHead; //Essential User Fields model
  List<UserModel> get familyMembers;
  @override
  String get familyName;
  @override
  String get familyCode;
  @override
  @JsonKey(ignore: true)
  _$$FamilyImplCopyWith<_$FamilyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FamilyEssentialFieldsImplCopyWith<$Res>
    implements $FamilyModelCopyWith<$Res> {
  factory _$$FamilyEssentialFieldsImplCopyWith(
          _$FamilyEssentialFieldsImpl value,
          $Res Function(_$FamilyEssentialFieldsImpl) then) =
      __$$FamilyEssentialFieldsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String familyHeadId,
      UserModel? familyHead,
      String familyName,
      String familyCode});

  @override
  $UserModelCopyWith<$Res>? get familyHead;
}

/// @nodoc
class __$$FamilyEssentialFieldsImplCopyWithImpl<$Res>
    extends _$FamilyModelCopyWithImpl<$Res, _$FamilyEssentialFieldsImpl>
    implements _$$FamilyEssentialFieldsImplCopyWith<$Res> {
  __$$FamilyEssentialFieldsImplCopyWithImpl(_$FamilyEssentialFieldsImpl _value,
      $Res Function(_$FamilyEssentialFieldsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? familyHeadId = null,
    Object? familyHead = freezed,
    Object? familyName = null,
    Object? familyCode = null,
  }) {
    return _then(_$FamilyEssentialFieldsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      familyHeadId: null == familyHeadId
          ? _value.familyHeadId
          : familyHeadId // ignore: cast_nullable_to_non_nullable
              as String,
      familyHead: freezed == familyHead
          ? _value.familyHead
          : familyHead // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      familyName: null == familyName
          ? _value.familyName
          : familyName // ignore: cast_nullable_to_non_nullable
              as String,
      familyCode: null == familyCode
          ? _value.familyCode
          : familyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FamilyEssentialFieldsImpl extends _FamilyEssentialFields
    with DiagnosticableTreeMixin {
  const _$FamilyEssentialFieldsImpl(
      {required this.id,
      required this.familyHeadId,
      this.familyHead,
      required this.familyName,
      required this.familyCode,
      final String? $type})
      : $type = $type ?? 'essentialFamilyFields',
        super._();

  factory _$FamilyEssentialFieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FamilyEssentialFieldsImplFromJson(json);

  @override
  final String id;
  @override
  final String familyHeadId;
//Should store user essential Model
  @override
  final UserModel? familyHead;
  @override
  final String familyName;
  @override
  final String familyCode;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FamilyModel.essentialFamilyFields(id: $id, familyHeadId: $familyHeadId, familyHead: $familyHead, familyName: $familyName, familyCode: $familyCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FamilyModel.essentialFamilyFields'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('familyHeadId', familyHeadId))
      ..add(DiagnosticsProperty('familyHead', familyHead))
      ..add(DiagnosticsProperty('familyName', familyName))
      ..add(DiagnosticsProperty('familyCode', familyCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyEssentialFieldsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.familyHeadId, familyHeadId) ||
                other.familyHeadId == familyHeadId) &&
            (identical(other.familyHead, familyHead) ||
                other.familyHead == familyHead) &&
            (identical(other.familyName, familyName) ||
                other.familyName == familyName) &&
            (identical(other.familyCode, familyCode) ||
                other.familyCode == familyCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, familyHeadId, familyHead, familyName, familyCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FamilyEssentialFieldsImplCopyWith<_$FamilyEssentialFieldsImpl>
      get copyWith => __$$FamilyEssentialFieldsImplCopyWithImpl<
          _$FamilyEssentialFieldsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String familyHeadId, UserModel? familyHead,
            List<UserModel> familyMembers, String familyName, String familyCode)
        $default, {
    required TResult Function(String id, String familyHeadId,
            UserModel? familyHead, String familyName, String familyCode)
        essentialFamilyFields,
  }) {
    return essentialFamilyFields(
        id, familyHeadId, familyHead, familyName, familyCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String familyHeadId,
            UserModel? familyHead,
            List<UserModel> familyMembers,
            String familyName,
            String familyCode)?
        $default, {
    TResult? Function(String id, String familyHeadId, UserModel? familyHead,
            String familyName, String familyCode)?
        essentialFamilyFields,
  }) {
    return essentialFamilyFields?.call(
        id, familyHeadId, familyHead, familyName, familyCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String familyHeadId,
            UserModel? familyHead,
            List<UserModel> familyMembers,
            String familyName,
            String familyCode)?
        $default, {
    TResult Function(String id, String familyHeadId, UserModel? familyHead,
            String familyName, String familyCode)?
        essentialFamilyFields,
    required TResult orElse(),
  }) {
    if (essentialFamilyFields != null) {
      return essentialFamilyFields(
          id, familyHeadId, familyHead, familyName, familyCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Family value) $default, {
    required TResult Function(_FamilyEssentialFields value)
        essentialFamilyFields,
  }) {
    return essentialFamilyFields(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(Family value)? $default, {
    TResult? Function(_FamilyEssentialFields value)? essentialFamilyFields,
  }) {
    return essentialFamilyFields?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Family value)? $default, {
    TResult Function(_FamilyEssentialFields value)? essentialFamilyFields,
    required TResult orElse(),
  }) {
    if (essentialFamilyFields != null) {
      return essentialFamilyFields(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FamilyEssentialFieldsImplToJson(
      this,
    );
  }
}

abstract class _FamilyEssentialFields extends FamilyModel {
  const factory _FamilyEssentialFields(
      {required final String id,
      required final String familyHeadId,
      final UserModel? familyHead,
      required final String familyName,
      required final String familyCode}) = _$FamilyEssentialFieldsImpl;
  const _FamilyEssentialFields._() : super._();

  factory _FamilyEssentialFields.fromJson(Map<String, dynamic> json) =
      _$FamilyEssentialFieldsImpl.fromJson;

  @override
  String get id;
  @override
  String get familyHeadId;
  @override //Should store user essential Model
  UserModel? get familyHead;
  @override
  String get familyName;
  @override
  String get familyCode;
  @override
  @JsonKey(ignore: true)
  _$$FamilyEssentialFieldsImplCopyWith<_$FamilyEssentialFieldsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
