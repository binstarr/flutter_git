import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              left: 1500,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
            Container(
              width: 90,
              height: 90,
              color: Colors.yellow,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.greenAccent,
            ),
          ],
        ),
      ),
    );
  }
}
