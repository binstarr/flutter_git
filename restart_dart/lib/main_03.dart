import 'dart:async';

/// asBroadcastStream

void main(){

  final controller = StreamController();
  final stream = controller.stream;
  // 기본적으로 스트림 리스닝은 한번만 할 수 있다.

  stream.listen((event) => print('기다리다 지쳐 넘어 온 너 : $event'));

  controller.add('빅게임');
  controller.add(1);
  controller.add(2);

  // 두번째 리스너(구독자) 만들어 보기
  stream.listen((event) => print('2번째 구독자 : $event'));

  print('main 비동기 확인');
}