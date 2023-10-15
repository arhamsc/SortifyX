// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();
  const factory UserModel({
    required String id,
    required String username,
    required String email,
    required String firstName,
    required String lastName,
    required String phone,
    @Default(false) bool? isAdmin,
    String? fcmToken,
    String? accessToken,
    String? refreshToken,
  }) = User;

  const factory UserModel.essentialFields({
    required String id,
    required String username,
    required String email,
    required String firstName,
    required String lastName,
    required String phone,
    @Default(false) bool? isAdmin,
  }) = UserEssentialFields;

  static User emptyUser() => const User(
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

  static const emptyUserEssential = UserModel.essentialFields(
    id: '',
    username: '',
    email: '',
    firstName: '',
    lastName: '',
    phone: '',
  );

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  // Map<String, dynamic> toJson() =>toJson(this);
}
