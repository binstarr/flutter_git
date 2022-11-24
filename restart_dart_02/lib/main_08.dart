void main() {
  // Future<T> = 미래타입 -> 미래에 받아 올 값
  // 동기 프로그램에서는 함수를 요청하면 ---> 결과가 나올 때 까지 멈춰 있다.
  // 하지만 비동기 방식인 Future 타입은 기다리지 않고 다른 실행을 처리할 때 사용한다.
  // Future로 감싸야 한다.
  // Future<String> fData = Future.value("홍길동"); // runtimetype =  Future<String>
  // String name = vmServer(1); // 동기 방식!

  // 언제 올지 모르기 때문에 비동기 방식으로 선언을 해야한다!!

  Future<String> name = vmServer(2); // 이벤트 큐에 uncomplete상태로 있다가(비동기라서 메세지가 오기 전까진 다음 줄로 넘어감) 값을 받으면 이벤트 루프에 돌고 값을 던져준다 그게 바로 밑줄
  // name.then((value) => print(value));
  // 람다 표현식은 한줄만 사용 가능하기 때문에 익명 함수로 사용한다
  name.then((value) {
    String data = "<<<<" + value + ">>>>";
    print(data);
  });
  print("메인 함수 종료");
  // 만약 홍길동 값을 받았는데 연산이 필요한 동작이라면!!!
  // 가장 쉬운 방법은 then 안에서 코드를 쓰면 된다.

}

Future<String> vmServer(int id) {
  var _fServerData;
  if (id == 1) {
    _fServerData = Future.delayed(const Duration(seconds: 2), () => "홍길동");
  } else {
    _fServerData = Future.delayed(const Duration(seconds: 2), () => "티모");
  }
  // Future<String> --> 실제 값은 안에 홍길동이 들어가 있다.
  return _fServerData; // 2초 지연 시킴 ,
}
