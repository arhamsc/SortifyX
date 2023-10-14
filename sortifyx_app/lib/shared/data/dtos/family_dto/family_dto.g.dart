// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'family_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateFamilyDtoImpl _$$CreateFamilyDtoImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CreateFamilyDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$CreateFamilyDtoImpl(
          familyName: $checkedConvert('familyName', (v) => v as String),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$CreateFamilyDtoImplToJson(
        _$CreateFamilyDtoImpl instance) =>
    <String, dynamic>{
      'familyName': instance.familyName,
      'runtimeType': instance.$type,
    };

_$UpdateFamilyDtoImpl _$$UpdateFamilyDtoImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$UpdateFamilyDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$UpdateFamilyDtoImpl(
          familyName: $checkedConvert('familyName', (v) => v as String),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$UpdateFamilyDtoImplToJson(
        _$UpdateFamilyDtoImpl instance) =>
    <String, dynamic>{
      'familyName': instance.familyName,
      'runtimeType': instance.$type,
    };
