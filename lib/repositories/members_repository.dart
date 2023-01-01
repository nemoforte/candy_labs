import 'dart:convert';

import 'package:candy_labs/models/member.dart';
import 'package:dio/dio.dart';

class MembersRepository {
  Future<List<Member>> getMembers() async {
    Dio dio = Dio();

    Response<String> response = await dio.get<String>('https://raw.githubusercontent.com/nemoforte/raw/master/members.json');
    final List<dynamic> result = jsonDecode(response.data.toString()) as List<dynamic>;
    return result.map((dynamic e) => Member.fromJson(e as Map<String, dynamic>)).toList();
  }
}
