
void main () async{

  // 미래 타입 사용
  // future - 미래에 받아올 값
  // async & await는 비동기 방식을 동기화 방식으로 하려고 씀

  Future<String> name = Future.value("텐코딩");
  Future<int> number = Future.value(10);
  Future<bool> isTrue = Future.value(true);
  // 비동기는 논리적으로 막아서 처리한다.

  // charPlus("seong", "bin");
  await addNumbers(10, 10);
  print("======================");
  await addNumbers(20, 20);

  // print('result1 : ${result1} ');
  // print('result2 : ${result2} ');
  // print('result3 : ${result1 + result2} ');

  // 비동기 방식에 흐름을 동기 방식으로 만드는 방법
  // 함수 선언부와 구현부 사이에 async를 넣어 주어야 한다.
  // 함께 await

}

// 10 + 10;
// 20 + 20;

void addNum(int n1, int n2) async{
  print("계산중 : $n1 + $n2");

  // 서버 데이터를 요청했다.
  await Future.delayed(Duration(seconds: 3), () {
    print("계산 완료 : ${n1 + n2}");
  });
  
  print("함수 실행 완료");
}
// 2. 비동기 방식에 함수에 리턴 타입은 무조건 미래 타입 이어야 한다.
Future<int> addNumbers(int n1, int n2)async{
  print('**********');
  await Future.delayed(const Duration(seconds: 2), () => n1 + n2 );
  print("${n1 + n2}");
  print('**********');
  return n1 + n2;
}




// 문제 1. 비동기 방식 함수 만들어보기 및 사용 - 단 함수의 리턴은 void 처리해 주세요

// void charPlus(String a, String b) async{
//   print("문자열 합체중 : $a + $b");
//
//   await Future.delayed(Duration(seconds: 4), () {
//     print("합체 완료 : ${a + b}");
//   },);
//   print("함수 실행 완료");
// }

