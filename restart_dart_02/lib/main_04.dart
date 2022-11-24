void main() {
  print('start');
  Future futureDelay = sleepDuration(2);
  // 매개변수가 들어오면 then이 실행된다
  futureDelay.then((value) => print("작업완료ㅕ됨"));
  print('end');

  useFutureType().then((value) => print(value));
}

Future sleepDuration(var s){
  return Future.delayed(Duration(seconds: s));
}

// 데이터 넘겨 보자
Future<String> useFutureType() {
  var _mFuture = Future.delayed(Duration(seconds: 2), () => "홍길동");
  // var _mFuture = Future(() => "수행결과 넘기기");
  return _mFuture;
}
