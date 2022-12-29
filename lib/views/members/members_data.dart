import 'dart:convert';

import 'package:candy_labs/views/members/member.dart';

String jsonArray = '''
[{"first_name":"Karol","last_name":"Wietrzyński","role":"Koordynator","avatar":"assets/KW.jpg","id":1},
{"first_name":"Olga","last_name":"Winconek","role":"Data Scientist","avatar":"assets/OW.jpg","id":2},
{"first_name":"Marcin","last_name":"Jakubiak","role":"UX/UI Designer","avatar":"assets/MS.jpg","id":3},
{"first_name":"Dominik","last_name":"Pająk","role":"Technolog Mobilny","avatar":"assets/DP.jpg","id":4},
{"first_name":"Paweł","last_name":"Łąk","role":"Programista","avatar":"assets/PL.jpg","id":5},
{"first_name":"Renata","last_name":"Wietrzyńska","role":"Programistka","avatar":"assets/RW.jpg","id":6},
{"first_name":"Mateusz","last_name":"Kot","role":"Kot","avatar":"assets/MW.jpg","id":7}]''';

List<dynamic> resultList = jsonDecode(jsonArray) as List<dynamic>;

List<Member> memberList = List<Member>.from(resultList.map<dynamic>((dynamic e) => Member.fromJson(e)));
// List<Member> memberList = resultList.map((dynamic e) => Member.fromJson(e)).toList();