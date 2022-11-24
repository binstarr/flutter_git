import 'package:flutter/material.dart';
import 'package:my_splash_screen/main.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context){
            return MainScreen();
      }));
    });

    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.all(16.0),
            color: Color(0x1ABC04),
            child: AspectRatio(
              aspectRatio: 9 / 16,
              child: Image.asset(
                "assets/splash.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Flexible(
            child: CircularProgressIndicator(
              color: Colors.orange,
            )),
      ],
    );
  }
}
