/// 추상 클래스 : 추상 메서드를 가질 수 있는 클래스!!!
/// 일반 클래스에서 implements 키워드로 구현하고 추상 메서드를 오버라이딩 해야 한다.

void main() {
  Car aiCar = AICar();
  aiCar.run();
}

abstract class Car{
  // 1. 일반적으로 new 할 수 없는 녀석
  // 2. 추상 메서드를 가질 수 있는 녀석 (필수 조건은 아님)

  drive();
  stop();
  void startCar(){
    print("시동을 켭니다.");
  }
  void turnOff(){
    print("시동을 끕니다.");
  }
  run(){
    startCar();
    drive();
    stop();
    turnOff();
  }
}

// 추상 클래스를 사용할 떄 -- extends 가능
// 추상 클래스를 사용할 때 -- implements 가능
class AICar extends Car{
  @override
  drive() {
    print("운전합니다.");
  }

  @override
  stop() {
    print("브레이크로 자동 멈춥니다.");
  }
  
}

class AICar2 implements Car{
  @override
  drive() {
    // TODO: implement drive
    throw UnimplementedError();
  }

  @override
  run() {
    // TODO: implement run
    throw UnimplementedError();
  }

  @override
  void startCar() {
    // TODO: implement startCar
  }

  @override
  stop() {
    // TODO: implement stop
    throw UnimplementedError();
  }

  @override
  void turnOff() {
    // TODO: implement turnOff
  }

}