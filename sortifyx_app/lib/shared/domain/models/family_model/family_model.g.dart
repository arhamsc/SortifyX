// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'family_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FamilyImpl _$$FamilyImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$FamilyImpl',
      json,
      ($checkedConvert) {
        final val = _$FamilyImpl(
          id: $checkedConvert('id', (v) => v as String),
          familyHeadId: $checkedConvert('familyHeadId', (v) => v as String),
          familyHead: $checkedConvert(
              'familyHead',
              (v) => v == null
                  ? null
                  : UserModel.fromJson(v as Map<String, dynamic>)),
          familyMembers: $checkedConvert(
              'familyMembers',
              (v) => (v as List<dynamic>)
                  .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          familyName: $checkedConvert('familyName', (v) => v as String),
          familyCode: $checkedConvert('familyCode', (v) => v as String),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$FamilyImplToJson(_$FamilyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'familyHeadId': instance.familyHeadId,
      'familyHead': instance.familyHead?.toJson(),
      'familyMembers': instance.familyMembers.map((e) => e.toJson()).toList(),
      'familyName': instance.familyName,
      'familyCode': instance.familyCode,
      'runtimeType': instance.$type,
    };

_$FamilyEssentialFieldsImpl _$$FamilyEssentialFieldsImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$FamilyEssentialFieldsImpl',
      json,
      ($checkedConvert) {
        final val = _$FamilyEssentialFieldsImpl(
          id: $checkedConvert('id', (v) => v as String),
          familyHeadId: $checkedConvert('familyHeadId', (v) => v as String),
          familyHead: $checkedConvert(
              'familyHead',
              (v) => v == null
                  ? null
                  : UserModel.fromJson(v as Map<String, dynamic>)),
          familyName: $checkedConvert('familyName', (v) => v as String),
          familyCode: $checkedConvert('familyCode', (v) => v as String),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$FamilyEssentialFieldsImplToJson(
        _$FamilyEssentialFieldsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'familyHeadId': instance.familyHeadId,
      'familyHead': instance.familyHead?.toJson(),
      'familyName': instance.familyName,
      'familyCode': instance.familyCode,
      'runtimeType': instance.$type,
    };
