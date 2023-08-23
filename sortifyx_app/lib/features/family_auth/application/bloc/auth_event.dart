part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AuthDummyEvent extends AuthEvent {}

class AuthLoginRequest extends AuthEvent {
  final String username, password;

  const AuthLoginRequest({
    required this.username,
    required this.password,
  });
}

class AuthSignUpRequest extends AuthEvent {
  final User user;
  final String password;

  const AuthSignUpRequest({
    required this.user,
    required this.password,
  });
}

class AuthLogoutRequest extends AuthEvent {}

class AuthTokenRefreshRequest extends AuthEvent {}
