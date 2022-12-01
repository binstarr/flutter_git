import 'package:flutter_http_basic_2/models/user.dart';
import 'package:flutter_http_basic_2/repository/repository.dart';

class UserController{
  final Repository _repository;

  UserController(this._repository);

  Future<User> fetchUser(int id) async{
    return _repository.getUser(id);
  }
}