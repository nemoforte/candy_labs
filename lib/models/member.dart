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
  final String about1;
  final String about2;

  Member(this.firstName, this.lastName, this.role, this.avatar, this.id, this.about1, this.about2);

  Member.fromJson(Map<String, dynamic> json)
    : firstName = json['first_name'] as String,
      lastName = json['last_name'] as String,
      role = json['role'] as String,
      avatar = json['avatar'] as String,
      id = json['id'] as int,
      about1 = json['about1'] as String,
      about2 = json['about2'] as String;

  Map<String, dynamic>? toJson() => <String,dynamic>{
    'firstName' : firstName,
    'lastName' : lastName,
    'role' : role,
    'avatar' : avatar,
    'id' : id,
    'about1' : about1,
    'about2' : about2,
  };

  @override
  List<Object?> get props => <Object?>[firstName, lastName, role, avatar, id];
}