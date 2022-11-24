
void main() {
  // collections
  // List, Set, Map

  List list = [1, 2, 3, 4, 5]; // 리스트만 대괄호를 사용한다.
  print(list[0]);
  print(list[1]);

  list.forEach((element) {
    print("요소확인 : ${element} ");
  });

  // 마지막 요소 삭제
  list.removeLast();
  print(list);
  list.clear();
  print(list);

  // 컴파일 타임 상수 만들어 보기
  var constList = const[1, 2, 3];
  // constList.add(4);
  print(constList);

  var amiList = [1, 'A', 10, true];
  print(amiList);

  amiList.forEach((element) {
    print("데이터타입 확인 : ${element.runtimeType}");
  });

  // Dart2.3 이상 부터는 컬렉션에 삽입하는 간결한 방법을 제공하는
  // 스프레드 연산자( ... )와 null 인식 스프레드 연산자( ...? )를 사용할 수 있다다

  var list3 = [1, 2, 3];
  // 스프레드 연산자는 하나씩 반복하면서 뿌려 주는 녀석 입니다.
  var list4 = [0, ...list3, 100];
  print(list4);

  // NULL 인식 스프레드 연산자
  // 스프레드 연산자 오른쪽에 있는 표현식이 NULL일 수 있는 경우 ...? 사용하여 예외를 피할 수 있습니다.
  var list5;
  // var list6 = [0, ...list5];
  var list6 = [0, ...?list5];
  print(list6);

  // 추가
  // 조건문, 반복을 사용하여 컬렉션을 구축하는데 사용할 수 있는 컬렉션 if를 제공 합니다.
  var promoActive = true;
  var nav = ['home', 'fun', 'p', if(promoActive)'outlet'];
  print(nav);

  // 추가 -2
  var listOfInts = [1,2,3];
  print(listOfInts.length);
  var listOfString = ['#0',for(var i in listOfInts)'#$i'];
  print(listOfString);

  for(var e in listOfInts){
    print(e);
  }

}

