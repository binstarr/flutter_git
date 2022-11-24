
/// 초기화 리스트
/// 초기화 리스트를 사용하면 생성자의 구현부가 실행되기 전에 인스턴스 변수를 초기화 할 수 있다.
/// (부모 클래스 변수, this)
/// 생성자 옆에 :(클론)으로 선언 가능하다.
/// 생성자 : 초기화리스트 {} <--- 모양 -1
/// Person() : name = "홍길동" {}
void main(){
  Person p1 = Person();
  Person p2 = Person.init();
  print(p1.name);
  print(p2.name + ": ${p2.age}");
}

class Person{
  var name;
  var age;

  Person():name = "홍길동";

  // 이름이 있는 생성자
  Person.init():age = 10{
    this.name = "성빈";
  }
}