// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String username,
    required String email,
    required String firstName,
    required String lastName,
    required String phone,
    String? fcmToken,
    String? accessToken,
    String? refreshToken,
  }) = _User;

  factory User.empty() => const _User(
        email: '',
        id: '',
        firstName: '',
        lastName: '',
        phone: '',
        username: '',
        fcmToken: null,
        accessToken: null,
        refreshToken: null,
      );

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  // Map<String, dynamic> toJson() =>toJson(this);
}
