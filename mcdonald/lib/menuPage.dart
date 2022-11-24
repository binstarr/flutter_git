import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mcdonald/bottomNav.dart';
import 'package:mcdonald/components/burgerListInfo.dart';
import 'package:mcdonald/components/menuTopSide.dart';
import 'package:mcdonald/components/menuTopSideInfo.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _menuPageAppBar(),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MenuInfoTopSide(),
              MenuTopSideInfo(),
              BurgerMenuList(imageName: "1", title: "01. 버거"),
              SizedBox(height: 30,),
              BurgerMenuList(imageName: "2", title: "02. 맥런치"),
              SizedBox(height: 30,),
              BurgerMenuList(imageName: "3", title: "03. 맥모닝"),
              SizedBox(height: 30,),
              BurgerMenuList(imageName: "4", title: "04. 해피 스낵"),
              SizedBox(height: 30,),
              BurgerMenuList(imageName: "5", title: "05. 사이드 & 디저트"),
              SizedBox(height: 30,),
              BurgerMenuList(imageName: "6", title: "06. 맥카페 & 음료"),

            ],
          ),
        ],
      ),
    );
  }

  AppBar _menuPageAppBar(){
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0.8,
      title: Text(
        "Menu - 맥도날드",
        style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold, ),
      ),
    );
  }
}
