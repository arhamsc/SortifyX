// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'family_model.freezed.dart';
part 'family_model.g.dart';

@freezed
class Family with _$Family {
  const factory Family({
    required String id,
    required String familyHead,
    required List<String> familyMembers,
    required String familyName,
    required String familyCode,
  }) = _Family;

  factory Family.empty() => const _Family(
        id: '',
        familyHead: '',
        familyMembers: [],
        familyName: '',
        familyCode: '',
      );

  factory Family.fromJson(Map<String, dynamic> json) => _$FamilyFromJson(json);
}
