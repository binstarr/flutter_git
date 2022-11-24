
// Lexical scape
// Dart에서 중첩 함수 방식으로 함수안에 함수를 선언할 수 있다.
void main() {
  var insideMain = true;

  void myFunction() {
    var insideFunction = true;
    print(insideMain);

    void nestedFunction() {
      print('nested ${insideFunction}');
    }
  }

  myFunction();
}
