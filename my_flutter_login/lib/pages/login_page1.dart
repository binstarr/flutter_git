import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_flutter_login/components/custom_text_form_field.dart';
import 'package:my_flutter_login/components/logo.dart';
import 'package:my_flutter_login/size.dart';

class LoginPage1 extends StatelessWidget {
  const LoginPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(height: xlarge_gap,),
            Logo(title: "Login"),
            CustomTextFormField(text: 'Email'),
            SizedBox(height: small_gap,),
            CustomTextFormField(text: 'Password'),
            SizedBox(height: large_gap,),
            InkWell(
              onTap: (){
                print("버튼 눌러짐");
              },
              child: Container(
                width: 45,
                height: 60,
                child: Center(
                  child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
