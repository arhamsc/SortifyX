import 'package:freezed_annotation/freezed_annotation.dart';

part 'family_bloc_status.freezed.dart';
part 'family_bloc_status.g.dart';

@freezed
class FamilyBlocStatus with _$FamilyBlocStatus {
  const FamilyBlocStatus._();

  factory FamilyBlocStatus.initial() = _FamilyBlocStatusInitial;
  factory FamilyBlocStatus.loading() = _FamilyBlocStatusLoading;
  factory FamilyBlocStatus.success() = _FamilyBlocStatusSuccess;
  factory FamilyBlocStatus.error() = _FamilyBlocStatusError;
  factory FamilyBlocStatus.registeredFamily() = _FamilyBlocStatusRegisteredFamily;
  factory FamilyBlocStatus.joinedFamily() = _FamilyBlocStatusJoinedFamily;

  bool get isInitial => this is _FamilyBlocStatusInitial;
  bool get isLoading => this is _FamilyBlocStatusLoading;
  bool get isSuccess => this is _FamilyBlocStatusSuccess;
  bool get isError => this is _FamilyBlocStatusError;
  bool get isRegisteredFamily => this is _FamilyBlocStatusRegisteredFamily;
  bool get isJoinedFamily => this is _FamilyBlocStatusJoinedFamily;

  factory FamilyBlocStatus.fromJson(Map<String, dynamic> json) => _$FamilyBlocStatusFromJson(json);
}