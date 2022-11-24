/// Dart는 클래스와 믹스인 기반 상속이 있는 객체 지향 언어입니다.
/// 모든 객체는 클래스의 인스턴스 이며 Null 자속을 제외한 모든 클래스는 Object 클래스 상속을 받습니다.

void main() {
// Musical musical = Musical(); 오류
}

class Perfomer{
  var name;
}

mixin Musical{
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;
  
  void entertainMe(){
    if(canPlayPiano){
      print('Playing piano');
    }else if(canConduct){
      print('Waving hands');
    }else{
      print('Humming to self');
    }
  }
} // end of musical

class Musician extends Perfomer with Musical{
  var company;
  @override
  String toString() {
    return '[이름 : ${name}, 소속 : ${company}]';
  }
}