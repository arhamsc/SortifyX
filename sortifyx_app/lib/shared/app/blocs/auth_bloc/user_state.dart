// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'user_bloc.dart';

enum AuthStatus {
  initial,
  loading,
  success,
  error,
  loggedOut,
  loggedIn,
}

extension ASExt on AuthStatus {
  bool get isInitial => this == AuthStatus.initial;
  bool get isLoading => this == AuthStatus.loading;
  bool get isSuccess => this == AuthStatus.success;
  bool get isError => this == AuthStatus.error;
  bool get isLoggedIn => this == AuthStatus.loggedIn;
  bool get isLoggedOut => this == AuthStatus.loggedOut;
}

@freezed
class UserState with _$UserState {
  const factory UserState({
    required AuthStatus status,
    required User user,
    required String errorMessage,
    required String loadingMessage,
    required String successMessage,
  }) = _UserState;

  factory UserState.fromJson(Map<String, dynamic> json) =>
      _$UserStateFromJson(json);
}

// final class AuthInitial extends UserState {}
