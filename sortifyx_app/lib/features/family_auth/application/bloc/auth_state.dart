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

@JsonSerializable()
class AuthState extends Equatable {
  const AuthState({
    required this.errorMessage,
    required this.family,
    required this.loadingMessage,
    required this.status,
    required this.successMessage,
    required this.user,
  });

  final AuthStatus status;
  final User user;
  final Family family;

  final String successMessage;
  final String loadingMessage;
  final String errorMessage;

  @override
  List<Object> get props {
    return [
      status,
      user,
      family,
      successMessage,
      loadingMessage,
      errorMessage,
    ];
  }

  AuthState copyWith({
    AuthStatus? status,
    User? user,
    Family? family,
    String? successMessage,
    String? loadingMessage,
    String? errorMessage,
  }) {
    return AuthState(
      status: status ?? this.status,
      user: user ?? this.user,
      family: family ?? this.family,
      successMessage: successMessage ?? this.successMessage,
      loadingMessage: loadingMessage ?? this.loadingMessage,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  bool get stringify => true;

   factory AuthState.fromJson(Map<String, dynamic> json) => _$AuthStateFromJson(json);

  Map<String, dynamic> toJson() => _$AuthStateToJson(this);
}

// final class AuthInitial extends AuthState {}
