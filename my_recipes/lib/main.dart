
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_recipes/pages/recipe_page.dart';

void main(){
  runApp(MyApp());
}

// stl
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "PatuaOne"),
      home: RecipePage(),
    );
  }
}
