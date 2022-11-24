
void main(){

  // instance of 대신 사용 (타입 비교)
  int _num1 = 10;
  var _num2 = 100.0;
  var _str1 = "hello flutter";
  var _isOk = false;
  var _pi = 3.14;

  print("_num1 : ${_num1 is String}");
  print("_num2 : ${_num2 is double}");
  print("_isOk : ${_isOk is bool}");

  print("_str1 : ${_str1 is !bool}");
}