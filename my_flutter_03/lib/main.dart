
void main(){

  // 3 --> 0011 << 0110
  assert((3<<1) == 6);

  // Dart에서 두 개의 상수
  // const - 컴파일 시점, final - 런타임
  // 초기화 할 때 컴파일 시점에서 초기화가 되느냐 ? (ctrl s < 저장할 때)
  // 런타임 시점(프로그램 실행시) 초기화 되느냐? (run 버튼 눌렀을 때)
  const msPerSecond = 1000;
  const secondsUntiRetry = 5;
  const msUntiRetry = msPerSecond + secondsUntiRetry;
  print(msUntiRetry);

  final month = 12;
  // month = 11; x
  final year = 2022;
  print(year);
  // year = 2023;

  // 문자열 UTF-16 유니코드 사용용
  var s1 = '싱글 쿼터즈 사용가능';
  var s2 = '싱글 쿼터즈 사용가능'.length;

}