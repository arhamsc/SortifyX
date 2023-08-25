// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Family _$$_FamilyFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Family',
      json,
      ($checkedConvert) {
        final val = _$_Family(
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

Map<String, dynamic> _$$_FamilyToJson(_$_Family instance) => <String, dynamic>{
      'id': instance.id,
      'familyHead': instance.familyHead,
      'familyMembers': instance.familyMembers,
      'familyName': instance.familyName,
      'familyCode': instance.familyCode,
    };
