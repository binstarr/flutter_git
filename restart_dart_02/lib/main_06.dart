class UserDto{
  String name;
  int age;

  UserDto(this.name, this.age);

  @override
  String toString() {
    return 'UserDto{name: $name, age: $age}';
  }
}

void main() {
  fetchUserDto().then((userDto) => print(userDto.toString()));
  Future<UserDto> fUser = Future(() => UserDto("이순신", 1)); //사용법 2
  Future<UserDto> fUser2 = Future.value(UserDto("이순신", 2)); //사용법 3
  // userDto <-- 들어오는 value
}

// 문제 미래타입 함수 선언
// UserDto를 생성해서 (값 세팅) 3초뒤에 리턴하는 함수를 만들어주세요
// main쪽에서 넘겨 받은 userDto toString 출력해주세요

// 문제 2번 리스트 -->
// 리스트 샘플 만들어서 처리해보기

// 1. 리턴 퓨처 --> UserDto
Future<UserDto> fetchUserDto() {
  Future<UserDto> _dto = Future.delayed(Duration(seconds: 3), () => UserDto("홍길동", 100));
  return _dto;
}
// 1단계
// UserDto 많이 생성해서 던지세요
