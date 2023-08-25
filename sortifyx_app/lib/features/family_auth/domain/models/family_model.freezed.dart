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

Family _$FamilyFromJson(Map<String, dynamic> json) {
  return _Family.fromJson(json);
}

/// @nodoc
mixin _$Family {
  String get id => throw _privateConstructorUsedError;
  String get familyHead => throw _privateConstructorUsedError;
  List<String> get familyMembers => throw _privateConstructorUsedError;
  String get familyName => throw _privateConstructorUsedError;
  String get familyCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FamilyCopyWith<Family> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyCopyWith<$Res> {
  factory $FamilyCopyWith(Family value, $Res Function(Family) then) =
      _$FamilyCopyWithImpl<$Res, Family>;
  @useResult
  $Res call(
      {String id,
      String familyHead,
      List<String> familyMembers,
      String familyName,
      String familyCode});
}

/// @nodoc
class _$FamilyCopyWithImpl<$Res, $Val extends Family>
    implements $FamilyCopyWith<$Res> {
  _$FamilyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? familyHead = null,
    Object? familyMembers = null,
    Object? familyName = null,
    Object? familyCode = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      familyHead: null == familyHead
          ? _value.familyHead
          : familyHead // ignore: cast_nullable_to_non_nullable
              as String,
      familyMembers: null == familyMembers
          ? _value.familyMembers
          : familyMembers // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
}

/// @nodoc
abstract class _$$_FamilyCopyWith<$Res> implements $FamilyCopyWith<$Res> {
  factory _$$_FamilyCopyWith(_$_Family value, $Res Function(_$_Family) then) =
      __$$_FamilyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String familyHead,
      List<String> familyMembers,
      String familyName,
      String familyCode});
}

/// @nodoc
class __$$_FamilyCopyWithImpl<$Res>
    extends _$FamilyCopyWithImpl<$Res, _$_Family>
    implements _$$_FamilyCopyWith<$Res> {
  __$$_FamilyCopyWithImpl(_$_Family _value, $Res Function(_$_Family) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? familyHead = null,
    Object? familyMembers = null,
    Object? familyName = null,
    Object? familyCode = null,
  }) {
    return _then(_$_Family(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      familyHead: null == familyHead
          ? _value.familyHead
          : familyHead // ignore: cast_nullable_to_non_nullable
              as String,
      familyMembers: null == familyMembers
          ? _value._familyMembers
          : familyMembers // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
class _$_Family with DiagnosticableTreeMixin implements _Family {
  const _$_Family(
      {required this.id,
      required this.familyHead,
      required final List<String> familyMembers,
      required this.familyName,
      required this.familyCode})
      : _familyMembers = familyMembers;

  factory _$_Family.fromJson(Map<String, dynamic> json) =>
      _$$_FamilyFromJson(json);

  @override
  final String id;
  @override
  final String familyHead;
  final List<String> _familyMembers;
  @override
  List<String> get familyMembers {
    if (_familyMembers is EqualUnmodifiableListView) return _familyMembers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_familyMembers);
  }

  @override
  final String familyName;
  @override
  final String familyCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Family(id: $id, familyHead: $familyHead, familyMembers: $familyMembers, familyName: $familyName, familyCode: $familyCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Family'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('familyHead', familyHead))
      ..add(DiagnosticsProperty('familyMembers', familyMembers))
      ..add(DiagnosticsProperty('familyName', familyName))
      ..add(DiagnosticsProperty('familyCode', familyCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Family &&
            (identical(other.id, id) || other.id == id) &&
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
      familyHead,
      const DeepCollectionEquality().hash(_familyMembers),
      familyName,
      familyCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FamilyCopyWith<_$_Family> get copyWith =>
      __$$_FamilyCopyWithImpl<_$_Family>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FamilyToJson(
      this,
    );
  }
}

abstract class _Family implements Family {
  const factory _Family(
      {required final String id,
      required final String familyHead,
      required final List<String> familyMembers,
      required final String familyName,
      required final String familyCode}) = _$_Family;

  factory _Family.fromJson(Map<String, dynamic> json) = _$_Family.fromJson;

  @override
  String get id;
  @override
  String get familyHead;
  @override
  List<String> get familyMembers;
  @override
  String get familyName;
  @override
  String get familyCode;
  @override
  @JsonKey(ignore: true)
  _$$_FamilyCopyWith<_$_Family> get copyWith =>
      throw _privateConstructorUsedError;
}
