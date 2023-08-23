// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable(checked: true)
class User extends Equatable {
  final String id;
  final String username;
  final String email;
  final String firstName;
  final String lastName;
  final String phone;
  final String? familyId;
  final String? fcmToken;
  final String? bearerToken;
  final String? refreshToken;

  const User({
    required this.id,
    required this.username,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.phone,
    this.familyId,
    this.fcmToken,
    this.bearerToken,
    this.refreshToken,
  });

  static const empty = User(
    email: '',
    id: '',
    firstName: '',
    lastName: '',
    phone: '',
    username: '',
    familyId: null,
    fcmToken: null,
    bearerToken: null,
    refreshToken: null,
  );

  bool get isEmpty => this == User.empty;

  bool get isNotEmpty => this != User.empty;

  @override
  List<Object> get props {
    return [
      id,
      username,
      email,
      firstName,
      lastName,
      phone,
      familyId ?? '',
      fcmToken ?? '',
      bearerToken ?? '',
      refreshToken ?? '',
    ];
  }

  @override
  bool get stringify => true;

  User copyWith({
    String? id,
    String? username,
    String? email,
    String? firstName,
    String? lastName,
    String? phone,
    String? familyId,
    String? fcmToken,
    String? bearerToken,
    String? refreshToken,
  }) {
    return User(
      id: id ?? this.id,
      username: username ?? this.username,
      email: email ?? this.email,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phone: phone ?? this.phone,
      familyId: familyId ?? this.familyId,
      fcmToken: fcmToken ?? this.fcmToken,
      bearerToken: bearerToken ?? this.bearerToken,
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
