// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'family_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FamilyStateImpl _$$FamilyStateImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$FamilyStateImpl',
      json,
      ($checkedConvert) {
        final val = _$FamilyStateImpl(
          status: $checkedConvert('status',
              (v) => FamilyBlocStatus.fromJson(v as Map<String, dynamic>)),
          myFamily: $checkedConvert('myFamily',
              (v) => FamilyModel.fromJson(v as Map<String, dynamic>)),
          myFamilies: $checkedConvert(
              'myFamilies',
              (v) => (v as List<dynamic>)
                  .map((e) => FamilyModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          joinedFamily: $checkedConvert('joinedFamily', (v) => v as bool),
          successMessage: $checkedConvert('successMessage', (v) => v as String),
          errorMessage: $checkedConvert('errorMessage', (v) => v as String),
          loadingMessage: $checkedConvert('loadingMessage', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$FamilyStateImplToJson(_$FamilyStateImpl instance) =>
    <String, dynamic>{
      'status': instance.status.toJson(),
      'myFamily': instance.myFamily.toJson(),
      'myFamilies': instance.myFamilies.map((e) => e.toJson()).toList(),
      'joinedFamily': instance.joinedFamily,
      'successMessage': instance.successMessage,
      'errorMessage': instance.errorMessage,
      'loadingMessage': instance.loadingMessage,
    };
