import 'dart:async';

/// asBroadcastStream

void main(){

  final controller = StreamController();
  // final stream = controller.stream;
  // 기본적으로 스트림 리스닝은 한번만 할 수 있다.
  // 그러면 여러번 리스너를 만들 수 있을까?? 그 해답은
  final stream = controller.stream.asBroadcastStream(); // 마치 전체 방송

  // 구독자 1 : 전체 이벤트를 받는 구독자
  stream.listen((event) => print('기다리다 지쳐 넘어 온 너 : $event'));
  // 구독자 2 - 홀수만 받는 리스너
  stream.where((event) => (event % 2 == 0)).listen((event) => print('2번째 구독자 : $event'));
  // 구독자 3 - 짝수만 받는 리스너
  stream.where((event) => (event % 2 == 1)).listen((event) => print('3번째 구독자 : $event'));


  // controller.add(1);
  controller.add(2);


  print('main 비동기 확인');
}