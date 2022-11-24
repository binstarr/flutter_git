enum Status{
  ready,
  start,
  end
}
void main(){
  // 데이터 범주화, 타입처럼 사용, 개발자에게 코드의 가독성을 높여주고, 안정적인 프로그래밍 방식중 하나
  Status myStatus = Status.ready;
  if(myStatus == Status.ready){
    print("준비중입니다.");
  }else if(myStatus == Status.start){
    print("시작했습니다.");
  }else if(myStatus == Status.end){
    print("종료되었습니다.");
  }

  switch(myStatus){
    case Status.ready:
      print("준비중입니다.");
      break;
    case Status.start:
      print("시작했습니다.");
      break;
    case Status.end:
      print("종료되었습니다.");
      break;
  }

}