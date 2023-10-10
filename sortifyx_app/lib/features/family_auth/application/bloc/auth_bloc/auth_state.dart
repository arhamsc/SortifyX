// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'auth_bloc.dart';

enum AuthStatus {
  initial,
  loading,
  success,
  error,
  loginRequested,
  registerRequested,
  loggedOut,
  loggedIn,
  joinFamilyRequested,
  registerFamilyRequested,
  authComplete, //After family is registered or joined.
}

extension ASExt on AuthStatus {
  bool get isInitial => this == AuthStatus.initial;
  bool get isLoading => this == AuthStatus.loading;
  bool get isSuccess => this == AuthStatus.success;
  bool get isError => this == AuthStatus.error;
  bool get isLoginRequested => this == AuthStatus.loginRequested;
  bool get isRegisterRequested => this == AuthStatus.registerRequested;
  bool get isLoggedIn => this == AuthStatus.loggedIn;
  bool get isLoggedOut => this == AuthStatus.loggedOut;
  bool get isJoinFamilyRequested => this == AuthStatus.joinFamilyRequested;
  bool get isRegisterFamilyRequested =>
      this == AuthStatus.registerFamilyRequested;
  bool get isAuthComplete => this == AuthStatus.authComplete;
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required String errorMessage,
    required Family family,
    required String loadingMessage,
    required AuthStatus status,
    required String successMessage,
    required User user,
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}

// final class AuthInitial extends AuthState {}
