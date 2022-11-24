/// 다트 언어에서는 생성자의 종류
/// 1. default constructor (기본 생성자)
/// 2. Named constructor (이름이 있는 생성자)
/// 3. Initializer list (리다이렉팅 생성자)
/// 4. Constant constructor (상수 생성자)
/// 5. Factory constructor (팩토리 생성자)

void main(){
  Student student = Student("홍길동");
}

class Person2{
  var name;
  var age;

  Person2(this.name){
    print('2222222222222');
    this.name ="xxx";
    this.age = 0;
  }
  @override
  String toString() {
    return '[$name, $age]';
  }
}
// class Student extends Person2{
//   Student(var sName) : super(sName){  <-- 구현이 없으면 {} 생략 가능, var 생략 가능
//   }
// }
class Student extends Person2{
  Student(sName) : super(sName){
  print('1111111111111111');
  }
}