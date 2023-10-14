part of 'family_bloc.dart';

@freezed
class FamilyEvent with _$FamilyEvent {
  const factory FamilyEvent.started() = _Started;
  const factory FamilyEvent.createFamily({required CreateFamilyDto dto}) =
      _FamilyCreateFamily;
  const factory FamilyEvent.getMyFamilies() = _FamilyGetMyFamilies;
  const factory FamilyEvent.getFamilyById({required String familyId}) =
      _FamilyGetFamilyById;
  const factory FamilyEvent.joinFamily({required String familyCode}) =
      _FamilyJoinFamily;
  const factory FamilyEvent.updateFamily({required UpdateFamilyDto dto}) =
      _FamilyUpdateFamily;
}
