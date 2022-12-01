import 'package:flutter/material.dart';
import 'package:flutter_http_basic_2/view/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BinstarrHTTP",
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      home: MainScreen(),
    );
  }
}

