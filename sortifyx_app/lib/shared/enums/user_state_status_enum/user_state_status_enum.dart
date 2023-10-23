import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state_status_enum.freezed.dart';
part 'user_state_status_enum.g.dart';

@Freezed(
  map: FreezedMapOptions(
    map: false,
    mapOrNull: false,
    maybeMap: false,
  ),
  // when: FreezedWhenOptions(
  //   when: false,
  //   maybeWhen: false,
  //   whenOrNull: false,
  // ),
)
class UserStateStatusEnum with _$UserStateStatusEnum {
  const UserStateStatusEnum._();

  factory UserStateStatusEnum.initial() = _UserStatusInitial;
  factory UserStateStatusEnum.loading() = _UserStatusLoading;
  factory UserStateStatusEnum.success() = _UserStatusSuccess;
  factory UserStateStatusEnum.error() = _UserStatusError;
  factory UserStateStatusEnum.loggedOut() = _UserStatusLoggedOut;
  factory UserStateStatusEnum.loggedIn() = _UserStatusLoggedIn;

  bool get isInitial => this is _UserStatusInitial;
  bool get isLoading => this is _UserStatusLoading;
  bool get isSuccess => this is _UserStatusSuccess;
  bool get isError => this is _UserStatusError;
  bool get isLoggedIn => this is _UserStatusLoggedIn;
  bool get isLoggedOut => this is _UserStatusLoggedOut;

  factory UserStateStatusEnum.fromJson(Map<String, dynamic> json) =>
      _$UserStateStatusEnumFromJson(json);
}
