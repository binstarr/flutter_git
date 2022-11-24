
import 'package:flutter_http_3/models/company.dart';

class User{
  int? id;
  String? name;
  String? email;
  Company? company;
  String? city;

  User.fromJson(Map<String, dynamic> mapJson)
  : id = mapJson['id'],
    name = mapJson['name'],
    email = mapJson['email'],
    city = mapJson['address']['city'],
    company = Company.fromJson(mapJson['company']);

  @override
  String toString() {
    return 'User{id: $id, name: $name, email: $email, company: $company, city: $city}';
  }

  /// company = [id :1, name : 'sdasd', ...]







}