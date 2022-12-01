import 'package:carror_market_ui/screens/chatting/chatting_screen.dart';
import 'package:carror_market_ui/screens/home/home_screen.dart';
import 'package:carror_market_ui/screens/my_carrot/my_carrot_screen.dart';
import 'package:carror_market_ui/screens/near_me/near_me_screen.dart';
import 'package:carror_market_ui/screens/neigborhood_life/neigborhood_life_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: [
            HomeScreen(),
            NearMeScreen(),
            NeighborhoodLifeScreen(),
            ChattingScreen(),
            MyCarrotScreen(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed, // 최대 5개
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: "홈"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.square_on_square), label: "동네생활"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.placemark), label: "내 근처"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_2), label: "채팅"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: "나의 당근"),
          ],
        ),
      ),
    );
  }
}
