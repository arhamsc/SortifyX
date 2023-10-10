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
          familyHead: $checkedConvert('familyHead', (v) => v as String),
          familyMembers: $checkedConvert('familyMembers',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          familyName: $checkedConvert('familyName', (v) => v as String),
          familyCode: $checkedConvert('familyCode', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$FamilyImplToJson(_$FamilyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'familyHead': instance.familyHead,
      'familyMembers': instance.familyMembers,
      'familyName': instance.familyName,
      'familyCode': instance.familyCode,
    };
