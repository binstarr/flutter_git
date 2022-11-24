

import 'package:my_flutter_04/main_07.dart';

void main(){
  // 다른 패키지면 import 선언을해 주어야 한다.
  Warrior w1 = Warrior("야스오", 10);
  // w1_level 접근 불가 (private은 같은 패키지에서만 가능)
  String myName = w1.name;
  print(myName);
}