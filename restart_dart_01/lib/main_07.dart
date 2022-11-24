// 함수형 프로그래밍
// 다트 컬렉션 (stream)

// 기본기-형변환
void main() {
  List<String> game = ['스타크래프트','롤','망나뇽','앵그리버드','롤'];

  print(game);
  print(game.asMap()); // map으로 데이터 타입 변환
  print(game.toSet()); // set으로 데이터 타입 변환 -> 중복 값을 허용 안함

  Map myLikeGame = game.asMap();
  print(myLikeGame);

  Set myGame2 = game.toSet();
  Set myGame3 = Set.from(game);
  print(myGame2);
  print(myGame3);

  // set --> list
  print(myGame3.toList());

}