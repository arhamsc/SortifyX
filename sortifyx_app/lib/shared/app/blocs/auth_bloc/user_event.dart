part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.initial() = AuthInitial;
  const factory UserEvent.loginRequest({
    required LoginDto loginDto,
  }) = UserEventLoginRequest;
  const factory UserEvent.signUpRequest({
    required SignUpDto signUpDto,
  }) = UserEventSignUpRequest;
  const factory UserEvent.logoutRequest() = UserEventLogoutRequest;
  const factory UserEvent.tokenRefreshRequest() = UserEventTokenRefreshRequest;
}
