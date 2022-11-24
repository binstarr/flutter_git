import 'package:flutter/material.dart';


class HomePagess extends StatefulWidget {
  const HomePagess({Key? key}) : super(key: key);

  @override
  State<HomePagess> createState() => _HomePagessState();
}

class _HomePagessState extends State<HomePagess> {
  dynamic id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            validator: (value) => value!.isEmpty ? "입력해조~~~" : null,
            obscureText: id == "Password" ? true : false,
            decoration: InputDecoration(
              hintText: "Enterrrrrr",
              enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              errorBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ],
      ),
    );
  }

  Widget idText() {
    dynamic id;
    return Column(
      children: [

      ],
    );
  }


}





