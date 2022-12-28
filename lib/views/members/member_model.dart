import 'package:candy_labs/views/members/members_data.dart';

class MemberModel {
  final dynamic index;

  MemberModel({required this.index});

  String? firstName() {
    return memberList[index]['first_name'];
  }

  String lastName() {
    return memberList[index]['last_name'];
  }

  String role() {
    return memberList[index]['role'];
  }

  String avatar() {
    return memberList[index]['avatar'];
  }

  String id() {
    return memberList[index]['id'];
  }
}
