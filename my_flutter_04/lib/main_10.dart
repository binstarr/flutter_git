
void main(){
  // Dart 상속 -> 다형성
  CheeseBurger cheeseBurger = new CheeseBurger("통새우");
  print(cheeseBurger.name);
  // ( : ) --> 다트에서 이니셜라이져 키워드
  // 이니셜 라이져 키워드는 생성자의 내부 스택이 실행되기 전에 다른 무언가를 호출하고 싶을 때 사용합니다.
}

class Burger{
  String name;
  Burger(this.name);
  // 다트에선 동작이 없다면 생성자 코드를 줄이기 위해서 {}를 없애고 ; 를 사용할 수 있다.
}


class CheeseBurger extends Burger{
  // super 키워드는 자식이 부모 객체를 참조할 수 있는 키워드 입니다.
  CheeseBurger(name) : super(name);
// 상속 관계에서 부모에 생성자가 있으면 생성자를 초기화 하는 방법이 이니셜라이져 키워드를 써서 부모의 생성자를 불러와서
// 생성자를 통해서 옆으로 넘어간다.
}