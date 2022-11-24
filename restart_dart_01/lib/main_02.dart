/// Dart 함수와 매개변수(optional, named)

void main(){
  addNumbers(112321, 323231);
  bool isEven = isEvenNumber(addNumbers2(20, 400));
  print(isEven == true ? "짝수" : "홀수");

  // 함수 사용과 매개변수
  // 1. 매개변수(positional parameter)
  // 2. optional parameter - 있어도 되고, 없애도 된다.
  // 2-1 optional parameter는 기본값을 정해줄 수 있고 required를 설정할 수 있다.
  print(addNumber3(100, 200));
  // 2-2 optional parameter required를 주게 되면 named 파라미터라고 부른다.
  // named parameter란 매개 변수의 이름이 있고 --> 순서가 크게 중요하지 않다, key : value
  addNumber4(n1: 100, n2: 100, n3: 100);
  // 2-3 optional parameter 기본값을 주게 되면 역시나 named 파라미터라고 부른다
  addNumber5(n1: 100,n3: 300);

  // 3. 람다 표현식 (화살표 함수)
  // 코드를 한줄로 표현하고 싶다면 사용한다. return 키워드를 생략 가능하다.
  print(addNumber6(n3: 100, n2: 22));

}

// 함수를 선언할 때 무엇을 할지 정의하고 만들자

//두 개의 숫자를 받아 더하고 짝수인지 홀수인지 알려주는 함수를 만들어 보자
// 함수는 한 개의 기능만 수행하게 만드는게 더 좋다!!

addNumbers (var n1, var n2){
  int sum = n1 + n2;
  if(sum %2 == 0){
    print("짝수");
  }else{
    print("홀수");
  }
}

// 두 개의 매개 변수를 받아 덧셈을 하는 기능
addNumbers2(var n1, var n2){
  return n1 + n2;
}

// 옵셔널 파라미터를 사용하기 - 두 개의 매개 변수를 받아 덧셈하는 기능3.
addNumber3(var n1, var n2,{var n3 = 0}){
  return n1 + n2 + n3;
}

// named 파라미터
addNumber4({required var n1,required  var n2,required var n3}){
  return n1 + n2 + n3;
}

addNumber5({ var n1 = 0, var n2 = 0, var n3 = 0}){
  // 방어적 코드 사용 가능, 기본값으로 세팅하면 그럴 필요가 없다
  return n1 + n2 + n3;
}

// 람다식 = 화살표함수
addNumber6({var n1 = 0, var n2 = 0, var n3 = 0}) => n1 + n2 + n3;

// 정수값을 받아 짝수인지 홀수인지 true or false를 반환하는 기능
isEvenNumber(var number){
  return (number % 2) == 0? true : false;
}