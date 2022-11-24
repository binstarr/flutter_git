void main() {
  // Set 사용해보기 (집합 리터럴을 사용하는 간단한 set)
  var computerParts = {'mouse', 'keyboard', 'speaker', 'monitor'};
  print(computerParts);

  // for(var i = 0; i < computerParts.length; i++){
  //   computerParts[i];
  // } 안된다!!

  for (var parts in computerParts) {
    print(parts);
  }

  // 반복자를 사용하는 방법
  Iterator iterator = computerParts.iterator;
  while (iterator.moveNext()) {
    // moveNext == hasNext
    print(": ${iterator.current}");
  }

  Set setInter = Set<int>();

  setInter.add(1);
  setInter.add(2);
  setInter.add(3);
  print(setInter);
  setInter.remove(1);
  print(setInter);
  setInter.remove(10);
  print(setInter);

  var elements = computerParts;
  print(elements);
  elements.add("abc");
  print(computerParts);

  Set elements2 = Set();
  elements2.addAll(computerParts);

  print(elements2);
  elements2.add("이거 들어가냐?");
  print(elements2);
  print(computerParts);

  print('---------------------------');
  // 문제
  // 반복자 사용해서
  // while 사용하고 요소중에 touchpad가 있으면
  // 화면에 'touchpad가 존재합니다'. 글자를 찍고 더 이상 반복 돌지 마시오

  // 1. 이터레이터선언
  computerParts.add("touchpad");
  Iterator iterator1 = computerParts.iterator;

  while (iterator1.moveNext()) {
    if (iterator1.current == "touchpad") {
      print("touchpad가 존재");
    }
  }

  var constantSet = const {'a', 'b', 'c', 'd'};
  // constantSet.add('c');
  print(constantSet);
}
