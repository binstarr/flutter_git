import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_http_basic_2/models/user.dart';
import 'package:flutter_http_basic_2/repository/repository.dart';

class UserRepository implements Repository{

  String dataURL = "https://jsonplaceholder.typicode.com/users";

  @override
  Future<User> getUser(int id) async {
    var url = Uri.parse(dataURL + "/$id");
    var response = await http.get(url);
    var body = response.body;
    return User.fromJson(json.decode(body));
  }

}