
void main(){
  // 부호연산 - 단항 연산자 , 실제 값을 변경하려면 대입 연산자를 사용
  var number = 10;
  print(-number);
  print(number);
  
  // 복합대입연산
  // +=, -=, *=, /=
  var num1 = 0;
  num1 += 2;
  print(num1);

  var num2 = 0;
  num2 -= 2;
  print(num2);

  var num3 = 3;
  num3 *= 3;
  print(num3);

  var num4 = 10.0; // 나눗셈은 실수로 만들어서 해줘야함!!!!!
  num4 /= 2;
  print(num4);

  // 증감, 감소 연산자
  var gameScore = 10;
  var lastScore;
  lastScore = gameScore++;
  print('lastScore : ${lastScore}');
  print('gameScore : ${gameScore}');

}