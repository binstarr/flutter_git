
// 논리 연산자 = true/false
void main(){

  // 부정
  print("!true --> ${!true}");
 // && : ||
  // 그리고 (&&)
  print("true && false = ${true && false}");
  // 또는 ||
  print("true && false = ${true || false}");

  print("10 > 5 || 2 > 5 = ${true || false} ");

  // 조건문
  int point = 90;
  if(point >= 90){
    print("A학점");
  }else if (point >= 80){
    print("B학점");
  }else{
    print("C학점");
  }

  // 삼항 연산자
  // 조건식 ? (참이면 실행) : (거짓이면 실행)
  int level = 5;
  print(level >= 10?"용사" : "시민");

  // null 대체 연산자
  // 변수의 값이 null 이면 ?? 뒤에 값이 출력이 되고, null이 아니면 변수의 값이 출력 됩니다.
  String? username = null; // 데이터타입 뒤에 ? 넣어줘야 null 명시가 됨 (여기선 null을 사용 불가능)
  print(username);
  print(username?? "이순신");
  var str2 = username?? "이순신";
  print(str2);

  String? studentName = null;
  print(studentName?? "강성빈");

}