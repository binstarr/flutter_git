import 'package:flutter/material.dart';
import 'package:my_flutter_login/size.dart';

// TextFormField - 가만히 있을 때 모양
// TextFormField - 포커스 했을 때 모양
// TextFormField - 값을 잘못 넣었을 때

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        SizedBox(
          height: small_gap,
        ),
        TextFormField(
          // ! 느낌표는 null 절대 아니다 라고 컴파일러한테 알려 주는 것
          validator: (value) => value!.isEmpty ? "Please enter some text" : null,
          obscureText: text == "Password" ? true : false,
          decoration: InputDecoration(
            hintText: "Enter $text",
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            errorBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20)),),
        ),
      ],
    );
  }
}
