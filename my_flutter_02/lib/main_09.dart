
/// Dart에서는 4가지 기본타입을 제공합니다. (Object)
///  정수 <int>, 실수 <double>, 문자열 <String>, 논리 <bool>
///  Numbers(int, double)
///  String
///  bool
///  null

///  List
///  Set
///  Map
///  변수에 넣을 수 있는 모든 것은 객체이고 모든 객체는 클래스의 인스턴스 입니다.
///  null을 제외하고 모든 객체는 Object 클래스에서 상속됩니다.

/// Dart 에서의 형변환
void main(){
    // String -> int
    var intTen = int.parse('10'); // as는 다운캐스팅 할 때 사용
    print(intTen.runtimeType);

    // String --> double
    var onePointOne = double.parse('1.1');
    print(onePointOne);
    print(onePointOne.runtimeType);

    // int --> String
    String oneAsString = 1.toString();
    print(oneAsString);
    print(oneAsString.runtimeType);
    assert(oneAsString == '1'); // 중간에 에러 확인 가능
    print("여기 코드 실행 될까요? ");
    
    // double --> String
    // String piAsString = 3.1415927.toString();
    String piAsString = 3.1415927.toStringAsFixed(0);
    print(piAsString);

    // String --> bool
    String str1 = 'true';
    bool isOk = str1.toLowerCase() == 'true';
    print(isOk);
    print(isOk.runtimeType);

    // bool --> String
    bool isEmpty = true;
    String str2 = isEmpty.toString();
    print(str2.runtimeType);
}