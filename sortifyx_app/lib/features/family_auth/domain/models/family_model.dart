// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'family_model.g.dart';

@JsonSerializable()
class Family extends Equatable {
  final String id;
  final String familyHead;
  final List<String> familyMembers;
  final String familyName;
  final String familyCode;
  
  const Family({
    required this.id,
    required this.familyHead,
    required this.familyMembers,
    required this.familyName,
    required this.familyCode,
  });

  @override
  List<Object> get props {
    return [
      id,
      familyHead,
      familyMembers,
      familyName,
      familyCode,
    ];
  }

  Family copyWith({
    String? id,
    String? familyHead,
    List<String>? familyMembers,
    String? familyName,
    String? familyCode,
  }) {
    return Family(
      id: id ?? this.id,
      familyHead: familyHead ?? this.familyHead,
      familyMembers: familyMembers ?? this.familyMembers,
      familyName: familyName ?? this.familyName,
      familyCode: familyCode ?? this.familyCode,
    );
  }

  @override
  bool get stringify => true;

  factory Family.fromJson(Map<String, dynamic> json) => _$FamilyFromJson(json);

  Map<String, dynamic> toJson() => _$FamilyToJson(this);
}
