part of 'family_bloc.dart';

@freezed
class FamilyState with _$FamilyState {
  const factory FamilyState.family({
    required FamilyBlocStatus status,
    required FamilyModel myFamily,
    required List<FamilyModel> myFamilies,
    required bool joinedFamily,
    required String successMessage,
    required String errorMessage,
    required String loadingMessage,
  }) = _FamilyState;

  factory FamilyState.empty() =>  _FamilyState(
        status: FamilyBlocStatus.initial(),
        myFamily: FamilyModel.emptyFamily,
        myFamilies: [],
        joinedFamily: false,
        successMessage: "",
        errorMessage: "",
        loadingMessage: "",
      );

  factory FamilyState.fromJson(Map<String, dynamic> json) =>
      _$FamilyStateFromJson(json);
}
