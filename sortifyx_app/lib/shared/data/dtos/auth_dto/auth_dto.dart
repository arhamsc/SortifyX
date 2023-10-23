import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_dto.freezed.dart';
part 'auth_dto.g.dart';

@freezed
class AuthDto with _$AuthDto {
  factory AuthDto.signUp({
    required String username,
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String phone,
    String? fcmToken,
  }) = SignUpDto;

  factory AuthDto.login({
    required String username,
    required String password,
  }) = LoginDto;

  factory AuthDto.fromJson(Map<String, dynamic> json) =>
      _$AuthDtoFromJson(json);
}
