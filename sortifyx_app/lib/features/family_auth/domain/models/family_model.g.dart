// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Family _$FamilyFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Family',
      json,
      ($checkedConvert) {
        final val = Family(
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

Map<String, dynamic> _$FamilyToJson(Family instance) => <String, dynamic>{
      'id': instance.id,
      'familyHead': instance.familyHead,
      'familyMembers': instance.familyMembers,
      'familyName': instance.familyName,
      'familyCode': instance.familyCode,
    };
