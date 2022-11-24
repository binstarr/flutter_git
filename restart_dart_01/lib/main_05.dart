
// 클로져
// Dart 함수는 1급 객체 조건을 만족한다.
// 익명 함수 개념을 알아야 한다.
// 클로져 개념!!!
void main(){
  // 함수는 한번 사용하면 끝인데 변수와 같이 선언을 해두면 남아있다.
  var add2 = makeAdder(2);
  var add4 = makeAdder(4); // 익명함수 + 클로져
  assert(add2(3) == 5);
  print(add2(10));
  print(add4(0));

}

Function makeAdder(int addBy){
  return (int i) => addBy + i;
}