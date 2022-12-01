
import 'package:flutter_http_basic_1/models/user.dart';
import 'package:flutter_http_basic_1/repository/repository.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UserRepository implements Repository{
  String dataURL = "https://jsonplaceholder.typicode.com/users";

  @override
  Future<User> getUser(int id) async {
    var url = Uri.parse(dataURL + "/$id");
    var response = await http.get(url);
    var body = response.body;
    return User.fromJson(json.decode(body));
  }

  // 추상 메서드를 구현 해야 한다.

}