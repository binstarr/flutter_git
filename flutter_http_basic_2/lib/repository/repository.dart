import 'package:flutter_http_basic_2/models/user.dart';

abstract class Repository{

  Future<User> getUser(int id);
}