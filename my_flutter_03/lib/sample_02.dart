
import 'package:flutter/material.dart';

void main(){

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 처음 나타나는 화면 : home
      home: Container(
        width: 100,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.blueAccent
        ),
        // 하나의 위젯 child
        // Row는 배치 관리자
        // Expanded 남은 여백을 다 가진다!
        child: Row(
          children: [
            Text("홍길동"),
            Expanded(child: Text("이순신")),
            FlutterLogo()
          ],
        ),
      ),
    );
  }
}



