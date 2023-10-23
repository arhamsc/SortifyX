// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'user_bloc.dart';

enum UserStatus {
  initial,
  loading,
  success,
  error,
  loggedOut,
  loggedIn,
}

extension ASExt on UserStatus {
  bool get isInitial => this == UserStatus.initial;
  bool get isLoading => this == UserStatus.loading;
  bool get isSuccess => this == UserStatus.success;
  bool get isError => this == UserStatus.error;
  bool get isLoggedIn => this == UserStatus.loggedIn;
  bool get isLoggedOut => this == UserStatus.loggedOut;
}

@freezed
class UserState with _$UserState {
  const factory UserState({
    required UserStateStatusEnum status,
    required User user,
    required bool userHasFamily,
    required String errorMessage,
    required String loadingMessage,
    required String successMessage,
  }) = _UserState;

  factory UserState.fromJson(Map<String, dynamic> json) =>
      _$UserStateFromJson(json);
}

// final class AuthInitial extends UserState {}
