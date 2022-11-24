
void main(){
  // Mixin은 여러 클래스 계층에서 클래스의 코드를 재사용 하는 방법입니다.
  // Mixin을 사용하게 되면 다중 상속문제를 해결할 수 있고 컴포지션을 사용하지않고
  // 다른 클래스의 코드를 재사용할 수 있습니다.
  BMW bmw = new BMW();
  print(bmw.power);
  print(bmw.wheelName);

  Wheel2 wheel2 = new Wheel2();
  print(wheel2.color);
}

class Engine{
  int power = 5000;
}

class Wheel{
  String wheelName = '4륜 구동 바퀴';
}

class BMW with Engine, Wheel{

}

class Wheel2 with MyCar{
  String wheelName = '4륜 구동 바퀴';
}

class MyCar{
  String color = 'black';
}