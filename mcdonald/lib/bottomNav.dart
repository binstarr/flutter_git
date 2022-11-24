import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();

}

class _BottomNavState extends State<BottomNav> {
  int _index = 0;

  void _increment(){
    setState(() {
      _index++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: Container(
        height: 70,
        padding: EdgeInsets.only(bottom: 10, top: 5),
        child: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.cyanAccent,
          indicatorWeight: 5,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          labelStyle: TextStyle(
            fontSize: 12,
          ), tabs: [
            Tab(
              icon: Icon(Icons.home_filled, size: 20,), text: "홈",
            ),
          Tab(
            icon: Icon(Icons.add_card, size: 20,), text: "쿠폰",
          ),
          Tab(
            icon: Icon(Icons.fastfood, size: 20,), text: "메뉴",
          ),
          Tab(
            icon: Icon(Icons.location_on, size: 20,), text: "매장찾기",
          ),
          Tab(
            icon: Icon(Icons.add, size: 20,), text: "더보기",
          ),
        ],
        ),
      ),
    );
  }
}
