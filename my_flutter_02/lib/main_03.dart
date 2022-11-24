// 코드의 시작점

/// 변수
/// 명시적 타입, 타입 추론

/// 변수를 사용할 때 명시적 타입
/// 타입 추론은 값이 들어 올 때 타입을 추론하여 변수를 초기화합니다.
/// var, dynamic
void main(){
  var name = 'Voyager1';
  var year = 1997;
  var diameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', '홍길동'];
  var image = {
    'tags' : ['홍길동', '티모'], // key : values 구조
    'url' : 'path/to/jupiter.png'
  };

  print(image);
  print(image['tags']);
  print(image['tags'].runtimeType);

  print(name.runtimeType);
  print(year.runtimeType);
  print(diameter.runtimeType);
  List<String> tagList = image['tags'] as List<String>; // as List<String> 형 변환

  print(tagList[0]);
  print(tagList[1]);
  Map images = {}; // List -> []

}