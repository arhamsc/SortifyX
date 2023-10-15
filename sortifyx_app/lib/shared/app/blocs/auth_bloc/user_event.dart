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
  const factory UserEvent.getMyProfile() = UserGetMyProfile;
  //TODO: Make UpdateUserDto
  const factory UserEvent.updateUserInfo() = UserUpdateUserInfo;
  const factory UserEvent.updateFCMToken({
    required String id,
    required String fcmToken,
  }) = UserUpdateFCMToken;
  const factory UserEvent.deleteUser({required String id}) = UserDeleteUser;
  const factory UserEvent.checkUserHasFamily() = UserCheckUserHasFamily;
  const factory UserEvent.getUserById({required String id}) = UserGetUserById;
}
