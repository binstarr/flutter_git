class Idol{
  List<Map<String, String>> list = [
    {'name ': '제니', 'group': '블랙핑크'},
    {'name ': '로제', 'group': '블랙핑크'},
    {'name ': '리사', 'group': '블랙핑크'},
    {'name ': '지수', 'group': '블랙핑크'},
    {'name ': '뷔', 'group': 'BTS'},
    {'name ': 'RM', 'group': 'BTS'},
    {'name ': '정국', 'group': 'BTS'},
    {'name ': '슈가', 'group': 'BTS'},
    {'name ': '제이홉', 'group': 'BTS'},
    {'name ': '민지', 'group': '뉴진스'},
    {'name ': '혜린', 'group': '뉴진스'},
  ];
}

void main() {
  fetchIdolDto().then((person) => print(person.list));
}

Future<Idol> fetchIdolDto(){
  Future<Idol> person = Future.value(Idol());
  return person;
}