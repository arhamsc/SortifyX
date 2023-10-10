part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.initial() = AuthInitial;
  const factory AuthEvent.loginRequest({required String username, required String password,}) = AuthEventLoginRequest;
  const factory AuthEvent.signUpRequest({required User user, required String password,}) = AuthEventSignUpRequest;
  const factory AuthEvent.logoutRequest() = AuthEventLogoutRequest;
  const factory AuthEvent.tokenRefreshRequest() = AuthEventTokenRefreshRequest;

}

// class AuthDummyEvent extends AuthEvent {}

// class AuthLoginRequest extends AuthEvent {
//   final String username, password;

//   const AuthLoginRequest({
//     required this.username,
//     required this.password,
//   });
// }

// class AuthSignUpRequest extends AuthEvent {
//   final User user;
//   final String password;

//   const AuthSignUpRequest({
//     required this.user,
//     required this.password,
//   });
// }

// class AuthLogoutRequest extends AuthEvent {}

// class AuthTokenRefreshRequest extends AuthEvent {}
