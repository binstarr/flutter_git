import 'package:flutter/material.dart';
import 'package:flutter_http_basic_2/view/header.dart';
import 'package:flutter_http_basic_2/view/user_info.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
          Colors.black,
          Colors.white,
          Colors.black,
          Colors.white
        ],
          begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Header(),
              UserInfo()
            ],
          ),
        ),
      ),
    );
  }
}
