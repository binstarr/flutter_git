import 'dart:isolate';

void main() {
  // Isolate 사이의 커뮤니케이션은 receivePort와 안에 sendPort로 이루어 진다.

  // 모든 Isolate는 자신의 receivePort를 생성할 수 있고, multiple receivePort도 가능하다.

  ReceivePort receivePort = ReceivePort();
  receivePort.listen((message) {
    print("여기는 바로 실행되는게 아니라 message가 들어오면 동작 되는거야 !!");
    print("runtimeType Check");
    print(message.runtimeType);
    print("들어온 메시지 확인 : ${message}");
  });
  
  print("main isolate 작업을 하고 있어요 ~~~~");
  /// 다른 Isolate 생성하고 작업 요청
  subIsolateProcess(receivePort.sendPort);
}

subIsolateProcess(SendPort sendPort){
  Isolate.spawn((sendThis) {
    for(var i = 1; i < 2; i++){
      print("i : $i동작 수행");
    }
    sendThis.send("다른 작업자에 for문 동작 끝났어");
  }, sendPort);
}
