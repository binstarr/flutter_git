
void main(){
  // Dart 상속 -> 다형성
  CheeseBurger cheeseBurger = new CheeseBurger("통새우치즈");
}

class Burger{
  String name;

  Burger(this.name){
    print('${name} 버거');
  }
}

class CheeseBurger extends Burger{
  // super 키워드는 자식이 부모 객체를 참조할 수 있는 키워드 입니다.
  CheeseBurger(super.name);
}