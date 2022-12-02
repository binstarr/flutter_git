import 'package:carror_market_ui/screens/chatting/chat_container.dart';
import 'package:carror_market_ui/screens/chatting/models/chat_message.dart';
import 'package:carror_market_ui/screens/components/appbar_bottom_line.dart';
import 'package:flutter/material.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("채팅", style: TextStyle(color: Colors.black87),),
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: List.generate(chatMessageList.length, (index) => ChatContainer(chatMessage: chatMessageList[index])),
      ),
    );
  }
}
