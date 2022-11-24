class Dog {

  String name = "Toto";
  int age = 13;
  String color = "white";
  int thirsty = 100;

  void drinkWater(Water w) {
    w.drink();
    thirsty = thirsty - 50;
  }

}

class Water {
  double liter = 2.0; // 물 2리터

  void drink() {
    liter = liter - 0.5;
  }
}

void main() {
  Dog d1 = new Dog(); // 객체 생성 (메모리에 로드되는 순간)
  Water water1 = Water();
  print(d1.name);
  print(d1.age);
  print(d1.color);
  print(d1.thirsty);
  d1.drinkWater(water1);
  print(water1.liter);

  // Dart에서 변수와 함수명을 정의할 때 카멜표기법을 사용합니다.
  // Dart 파일을 정의할 때 스네이크케이스 방식을 사용합니다.
  // Dart 에서 클래스명을 정의할 때 파스칼 표기법을 사용합니다. (클래스명은 대문자 )

}