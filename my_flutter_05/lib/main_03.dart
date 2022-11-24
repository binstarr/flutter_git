
import 'package:my_flutter_05/main.dart';

/// 상수 생성자
/// 상수 생성자는 말 그대로 상수처럼 만들어준다. 이 말은 해당 클래스가 상수처럼
/// 변하지 않는 객체를 생성한다는 것이다. 상수 생성자를 만들기 위해서
/// 인스턴스 변수가 모두 final 이어야 한다. 또한 생성자는 const 키워드가 붙어야 한다.
void main() {

  Person person1 = const Person("kim", 20);
  Person person2 = const Person("kim", 20);
  Person person3 = new Person("kim", 20);
  Person person4 = Person("kim", 20);
  Person person5 = const Person("hong", 100);

  // Dart에서 주소값을 비교할 수 있는 함수
  print(identical(person1, person2));
  print(identical(person3, person4));
  print(identical(person1, person4));
  print(identical(person1, person5));
}

class Person{
  // final --> 데이터 타입 명시!!!
  final String name;
  final int age;
  // 상수 생성자
  const Person(this.name, this.age);

  @override
  String toString() {
    return 'Person{name: $name, age: $age}';
  }
}