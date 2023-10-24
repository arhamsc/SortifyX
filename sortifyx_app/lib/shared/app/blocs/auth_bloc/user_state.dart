// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    required UserStateStatusEnum status,
    required User user,
    required bool isAuthenticated,
    required bool userHasFamily,
    required String errorMessage,
    required String loadingMessage,
    required String successMessage,
  }) = _UserState;

  factory UserState.fromJson(Map<String, dynamic> json) =>
      _$UserStateFromJson(json);
}

// final class AuthInitial extends UserState {}
