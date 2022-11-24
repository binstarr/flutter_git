
void main(){



}

class Person{
  String?_name;

  // String? get name => _name; // getter 사용번!! ? 붙여서 nullable로 만들어줘야한다
  // set name(String? name) => _name = name; // setter

  // String? get getName => _name;                          <-=-- 권장사항
  // set setName(String? name) => _name = name;

  String? get getName => (_name == null) ? '홍' : _name;
  set setName(String? name) => (name == null) ? "Park" : _name = name;

}