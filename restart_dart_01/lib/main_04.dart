/// 익명 함수
/// 대부분의 함수는 main(), printElement()와 같이 이름을 가지고 있다.
/// Dart를 비롯해 많은 언어들이 익명 함수, 람다(lambda), 클로저(closure) 라고 부르는
/// 이름이 없는 함수를 만들 수 있다.

void main(){
  var list = ['apples', 'bananas', 'oranges'];
  list.forEach((item) {
    print('${list.indexOf(item)} : ${item}');
  });
}