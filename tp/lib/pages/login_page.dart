import 'package:flutter/material.dart';
import 'package:tp/components/pw_field.dart';
import 'package:tp/components/text_area.dart';
import 'package:tp/pages/test_page.dart';
import '../components/login_buttons.dart';
import '../components/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static TextEditingController idController = new TextEditingController();
  static TextEditingController pwController = new TextEditingController();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.9,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.blue,
          onPressed: () {
            print("눌러짐");
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TestPage(),
                ));
          },
        ),
        title: Text("로그인",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            )),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 150),
          IdTextField(
            text: "아이디",
          ),
          SizedBox(height: 5),
          pwTextField(text: "비밀번호"),
          SizedBox(height: 5),
          Buttons(text: "로그인", mColor: Colors.redAccent),
          SizedBox(height: 5),
          Buttons(text: "Touch ID/ Face ID 로그인", mColor: Colors.black),
          SizedBox(height: 5),
          TextArea(),
        ],
      ),
    );
  }
}
