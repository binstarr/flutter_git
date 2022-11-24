import 'package:flutter/material.dart';
import 'package:flutter_shopping_cart/components/shoppingcart_detail.dart';
import 'package:flutter_shopping_cart/components/shoppingcart_header.dart';
import 'package:flutter_shopping_cart/theme.dart';

/// BuildContext
/// -- Build : 건물등을 짓다.
/// -- Context : 문맥, 전후 사정
/// : 건물을 다시 짓기 위해 전후 흐름을 알고 있는 클래스가 바로 BuildContext 클래스이다.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: theme(),
      debugShowCheckedModeBanner: false,
      home: ShoppingCartPage(),
    );
  }
}


class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildShoppingCartAppBar(),
      body: Column(
        children: [
          ShoppingCartHeader(),
          ShoppingCartDetail(),
        ],
      ) ,
    );
  }
  AppBar _buildShoppingCartAppBar(){
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: (){},
      ),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
        SizedBox(width: 16,)
      ],
      elevation: 0.0,
    );
  }




}

