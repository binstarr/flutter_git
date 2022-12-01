
class User{

  final int id;
  final String name;
  final String phone;
  final String email;
  final String city;

  User(this.id, this.name, this.phone, this.email, this.city);

  // 추가 기능 : Map<String, dynamic> 들어오면 객체를 생성하게 만들기
  User.fromJson(Map<String, dynamic> map)
  :     id = map["id"],
        name = map["name"],
        phone = map["phone"],
        email = map["email"],
        city = map["address"]["city"];
}