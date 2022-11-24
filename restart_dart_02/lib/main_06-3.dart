import 'dart:async';

class UserDto {

  String name;
  int age;
  UserDto(this.name, this.age);

  @override
  String toString() {
    return 'UserDto{name: $name, age: $age}';
  }
}

void main() {
  fetchUserDtoList1().then((value) => print(value.toString()));
}

// Future<T> 활용

Future<List<UserDto>> fetchUserDtoList1() {
  List<UserDto> sampleData = [1,2,3,4,5,6].map((e) => UserDto("사용자$e", e)).toList();
  return Future.delayed(const Duration(seconds: 1), () => sampleData);
}