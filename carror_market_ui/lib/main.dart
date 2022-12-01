import 'package:carror_market_ui/screens/main_screen.dart';
import 'package:carror_market_ui/screens/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CarrorMarketUI());
}

class CarrorMarketUI extends StatelessWidget {
  const CarrorMarketUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "carrot_market",
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      theme: myTheme(),
    );
  }
}
