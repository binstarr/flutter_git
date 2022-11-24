
import 'dart:isolate';

void main() {

  ReceivePort receivePort = ReceivePort();
  receivePort.listen((message) {
    print("메시지가 들어오면 동작 시작");
    print("들어온 메시지 확인 : ${message}");
    print("동작 완료~");
  });
  b(receivePort.sendPort);
}

b(SendPort sendPort){
  Isolate.spawn((sendPort) {
    print("안녕");
    sendPort.send("비밀 문서");
  }, sendPort);
}