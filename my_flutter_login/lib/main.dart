import 'package:flutter/material.dart';
import 'package:my_flutter_login/pages/home_page.dart';
import 'package:my_flutter_login/pages/login_page.dart';
import 'package:my_flutter_login/pages/login_page1.dart';

void main() {
  // 화면 이동을 위한 Routes
  // 경로(/a/b/c)
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/login", // 첫번째 페이지를 지정하는 녀석
      routes: {
        '/login' : (context) => LoginPage(),
        '/home' : (context) => HomePage(),
      },
    );
  }
}
