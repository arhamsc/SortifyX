
import 'package:freezed_annotation/freezed_annotation.dart';

part 'family_dto.freezed.dart';
part 'family_dto.g.dart';

@freezed
class FamilyDto with _$FamilyDto {

  factory FamilyDto.createFamily({
    required String familyName,
  }) = CreateFamilyDto;

   factory FamilyDto.updateFamily({
    required String familyName,
  }) = UpdateFamilyDto;

  factory FamilyDto.fromJson(Map<String, dynamic> json) => _$FamilyDtoFromJson(json);
}