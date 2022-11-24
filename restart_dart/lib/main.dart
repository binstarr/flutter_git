

void main(){

  // java stream --> 비동기를 지원하지 않는다.
  // dart stream --> java stream + 비동기 지원

  // dart stream 클래스는 data:core에서 사용 가능 dart:async 패키지 사용 가능
  // import 'dart:async' : 여기는 더 많은 기능을 가지고 있는 녀석이다.
  print("실행1");
  Stream stream1 = Stream.value(100);
  print('실행2');
  stream1.listen((v) {print('여기로 넘어온 값 : $v'); });
  print('-----------------------------');
  print('실행3');

  print('-----------------------------');
  // Future에서는 한번 이벤트가 넘어오면 종료!!
  // 새로운 스트림 생성
  Stream.value([1,2,3,4,5,6,7]).forEach((e) {print('여기는 : $e');});

  print('restart1');
  // 주기적인
  var stream = Stream.periodic(Duration(milliseconds: 300), (x) => x + 1).take(20);
  stream.listen((event) {print('이벤트 넘어온다 ~~ : $event');});
  print('restart2');
  print('-----------------------------');

}