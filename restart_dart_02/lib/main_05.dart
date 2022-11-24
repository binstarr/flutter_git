void main() {

  // Future는 내부적으로 두 개의 상태값을 가진다.
  // 1. 미완료(Uncompleted)
  // 2. 완료(Completed)
  //  2-1. data : 정상적으로 작업을 수행 결과까지 넘겨 받고 완료
  //  2-2. error : 작업중에 문제 발생 시 error를 반환 후 완료.
  useFutureType().then((value) => null, onError: (error) => {print('잘못된 요청')});
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
