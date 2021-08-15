import 'dart:convert';

import 'package:test_app/constants/constants.dart';
import 'package:test_app/model/users.dart';
import 'package:http/http.dart' as http;

class Apis {
  static Future<List<Users>> getUsersFromTheApi() async {
    try {
      final response = await http.get(Uri.parse(API_ENDPOINT));
      List<Users> _userList = [];
      var responseJson = json.decode(response.body);
      if (response.statusCode == 200) {
        _userList = (responseJson['data'] as List)
            .map((p) => Users.fromJson(p))
            .toList();
      }
      print(_userList);
      return _userList;
    } catch (e) {
      return [];
    }
  }
}
