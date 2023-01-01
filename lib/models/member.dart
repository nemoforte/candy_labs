import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class MemberNo extends Equatable {}

class Member extends MemberNo {
  final String firstName;
  final String lastName;
  final String role;
  final String avatar;
  final int id;

  Member(this.firstName, this.lastName, this.role, this.avatar, this.id);

  Member.fromJson(Map<String, dynamic> json)
    : firstName = json['first_name'] as String,
      lastName = json['last_name'] as String,
      role = json['role'] as String,
      avatar = json['avatar'] as String,
      id = json['id'] as int;

  Map<String, dynamic>? toJson() => <String,dynamic>{
    'firstName' : firstName,
    'lastName' : lastName,
    'role' : role,
    'avatar' : avatar,
    'id' : id,
  };

  @override
  List<Object?> get props => <Object?>[firstName, lastName, role, avatar, id];
}