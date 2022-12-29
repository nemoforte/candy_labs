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
    : firstName = json['first_name'],
      lastName = json['last_name'],
      role = json['role'],
      avatar = json['avatar'],
      id = json['id'];

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