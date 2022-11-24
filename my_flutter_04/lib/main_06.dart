
void main(){

  String name1 = "홍길동";
  String name2 = "이순신";
  print(name1 + name2);
  // 문자열 + 는 가능하지만 -, *, / 는 안된다.
  print('${name1} ${name2}');
  print('$name1 $name2');
  print('$name1.runtimeType ${name2.runtimeType}');
  // 축약형으로 {} 빼는게 가능하지만 . <-- 점 연산자를 사용하려면 {} 써야한다.

  var myVar = '1';
  // myVar = 100;
  dynamic yourData = "11";
  yourData = 100;

  // nullable - null 이 될 수 있다.
  // non-nullable - null 이 될 수 없다.
  // null - 아무런 값도 없다.

  String name = "텐코딩";
  //name = null; // 불가능

  String?name3 = "홍길동";
  // 타입을 지정할 수도 있고 null도 사용 가능하다.
  name3 = null;
  //print(name3!); // 마지막에 !를 찍으면 반드시 null이 아니야 라는 의미다.

  // 상수 const - final

  DateTime now1 = DateTime.now();
  print(now1);
  DateTime now2 = DateTime.now();
  print(now2);
  print('-------------');
  final DateTime now3 = DateTime.now();
  print(now3);

  // 컴파일 타입에 값을 받아야 하는데 DateTime.now()는 언제 실행 되냐면 실행 시점에 실행 되기 때문
  // 여기서는 사용이 안됨.
  // const DateTime now4 = DateTime.now();
  // print(now4);

}