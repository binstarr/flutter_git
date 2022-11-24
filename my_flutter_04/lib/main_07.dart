///  클래스 -> 접근 지시자
///  캡슐화란 : 어떤 객체가 어떤 목적을 수행하기 위한 데이터(멤버 변수)와 기능을(메서드) 적정하게
///  모우는 과정
///  추상화는 : 어떤 객체의 공통된 데이터와 메서드를 묶어서 이름을 부여하는 것이다.
///  즉 공통 속성을 추출해 나가는 과정을 추상화라고 한다.
///  Dart에서는 접근 제어 지시자는 딱 두가지 종류이다.
///  1. public, 2.private 이다.
///  단 private는  멤버의 접근 범위는 동일 클래스가 아니라 라이브러리 기준이다. (자바 기준으로 패키지)
///  기본적으로 아무런 키워드가 없을 경우 public이다.
///  private로 선언하기 위해서는 변수나, 메서드 앞에 _(밑줄)을 붙여야 한다.
///  대상은 클래스, 메서드, 변수
///  접근 지시자의 연관된 개념은 내부 정보를 공개하거나 하지 않는 것은 정보 은닉 방법중에 한가지 이다.

void main(){
  Warrior warrior1 = Warrior("다리우스", 1);
  warrior1.attack();
  warrior1._level = 2;
  warrior1._upgradeLevel();
}

class Warrior{
  String name;
  int _level;

  Warrior(this.name, this._level); // null이 아님을 알려줌

  attack(){
    print('전사가 기본 공격을 합니다.');
    _upgradeLevel();
  }

  _upgradeLevel(){
    _level++;
    print("전사가 레벨업 합니다.");
  }

}