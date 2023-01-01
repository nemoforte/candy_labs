import 'dart:convert';

import 'package:candy_labs/models/member.dart';
import 'package:http/http.dart';



class MembersRepository {
  String endpoint = 'https://raw.githubusercontent.com/nemoforte/raw/master/members.json';
  Future<List<Member>>getMembers() async {
    Response response = await get(Uri.parse(endpoint));
    if (response.statusCode == 200){
      final List<dynamic> result = jsonDecode(response.body) as List<dynamic>;
      return result.map((dynamic e) => Member.fromJson(e as Map<String, dynamic>)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}