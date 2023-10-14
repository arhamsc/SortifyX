// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:sortifyx_app/shared/domain/domain.dart';

part 'family_model.freezed.dart';
part 'family_model.g.dart';

@freezed
class FamilyModel with _$FamilyModel {
  const FamilyModel._();

  //First abstract class name is not _(private) as I want to access it as Family instead of FamilyModel, rest of the constructors can be invoked using FamilyModel.essentialFamilyFields() so No need make the assignment public
  const factory FamilyModel({
    required String id,
    required String familyHeadId,
    //Should use User
    UserModel? familyHead,
    //Essential User Fields model
    required List<UserModel> familyMembers,
    required String familyName,
    required String familyCode,
  }) = Family;

  const factory FamilyModel.essentialFamilyFields({
    required String id,
    required String familyHeadId,
    //Should store user essential Model
    UserModel?
        familyHead,
    required String familyName,
    required String familyCode,
  }) = _FamilyEssentialFields;

  static const emptyFamily = Family(
    id: '',
    familyHead: UserModel.emptyUserEssential,
    familyMembers: [],
    familyName: '',
    familyCode: '',
    familyHeadId: '',
  );

  factory FamilyModel.fromJson(Map<String, dynamic> json) =>
      _$FamilyModelFromJson(json);
}
