
void main(){
fetchData3();
print("메인에서 나는 놀지요~~~~~");
}

 fetchData() async{
  print('start');
  var _data = await Future.delayed(Duration(seconds: 1), () => print("비동기를 동기로"));
  print('end');
  // return _data;
}

fetchData2() {
  print('start');
  var _data =  Future.delayed(Duration(seconds: 1), () => print("비동기를 동기로"));
  print('end');
  // return _data;
}

// async 와 await <-- 기다려
fetchData3() async{
  print('start');
  // 서버에서 데이터를 전달 받을때까지 기다릴꺼야
  var _data = await Future.delayed(Duration(seconds: 1), () => "홍길동");
  print('전달 받은 값 : $_data');
  // return _data;
}