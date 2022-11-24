import 'package:flutter/material.dart';

class MyChat extends StatelessWidget {
  const MyChat({Key? key, required this.time, required this.text})
      : super(key: key);

  final String time;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            time,
            style: TextStyle(fontSize: 12),
          ),
          SizedBox(width: 5,),
          Container(
            padding: EdgeInsets.all(8),
            child: Text(text),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
