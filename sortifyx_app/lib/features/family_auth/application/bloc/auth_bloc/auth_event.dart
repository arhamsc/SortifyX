part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.initial() = AuthInitial;
  const factory AuthEvent.loginRequest({required String username, required String password,}) = AuthEventLoginRequest;
  const factory AuthEvent.signUpRequest({required User user, required String password,}) = AuthEventSignUpRequest;
  const factory AuthEvent.logoutRequest() = AuthEventLogoutRequest;
  const factory AuthEvent.tokenRefreshRequest() = AuthEventTokenRefreshRequest;

}