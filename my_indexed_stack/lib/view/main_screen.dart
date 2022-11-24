import 'package:flutter/material.dart';
import 'package:my_indexed_stack/view/home_screen.dart';
import 'package:my_indexed_stack/view/my_profile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          //1
          HomeScreen(),
          //2
          MyProfile(),
          //3
          //4
          //5
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightGreen,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.man), label: "my"),
        ],
      ),
    );
  }
}
