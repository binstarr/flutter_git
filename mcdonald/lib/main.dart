import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mcdonald/bottomNav.dart';
import 'package:mcdonald/menuPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: MenuPage(),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                backgroundColor: Colors.redAccent,
                icon: Icon(
                  Icons.home,
                  size: 30,color: Colors.grey,
                ),
                label: "home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_card,
                  size: 30,color: Colors.grey,
                ),
                label: "쿠폰",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.fastfood,
                  size: 30,color: Colors.grey,
                ),
                label: "메뉴",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.location_on,
                  size: 30,color: Colors.grey,
                ),
                label: "매장찾기",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.add,
                  size: 30,color: Colors.grey,
                ),
                label: "더보기",
              ),
            ],
          ),
        ));
  }
}
