import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:kakao_01/components/my_chat.dart';
import 'package:kakao_01/components/other_chat.dart';
import 'package:kakao_01/components/time_line.dart';

import '../components/chat_icon_button.dart';

class ChatRoomScreen extends StatefulWidget {
  const ChatRoomScreen({Key? key}) : super(key: key);

  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  List<MyChat> chats = [];
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffb2c7da),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "홍길동",
            style: Theme.of(context).textTheme.headline6,
          ),
          actions: [
            Icon(
              FontAwesomeIcons.search,
              size: 20,
            ),
            SizedBox(width: 25),
            Icon(
              FontAwesomeIcons.bars,
              size: 20,
            ),
            SizedBox(width: 25),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    //// 스크롤이 되어야함
                    TimeLine(time: "2022년 11월 24일 목요일"),
                    OtherChat(name: "강성빈", text: "안녕~~~", time: "오후 09시 13분"),
                    MyChat(time: "오전 11시 10분", text: "반가워"),
                    ...List.generate(chats.length, (index) => chats[index])
                    ////
                  ],
                ),
              ),
            ),
            // 글자 입력 받는 위젯 만들어야함
            Container(
              height: 60,
              color: Colors.white,
              child: Row(
                children: [
                  ChatIconButton(icon:Icon(FontAwesomeIcons.plusSquare),),
                  Expanded(child: Container(
                    child: TextField(
                      controller: _textEditingController,
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none
                      ),
                      onSubmitted: (value) {
                        print("$value");
                        _handleSubmitted(value);

                      },
                    ),
                  )),
                  ChatIconButton(icon:Icon(FontAwesomeIcons.smile),),
                  SizedBox(width: 15,),
                  ChatIconButton(icon:Icon(FontAwesomeIcons.cog),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleSubmitted(mtext){
    _textEditingController.clear();

    setState(() {
      chats.add(MyChat(
          time: DateFormat("a K:m")
              .format(new DateTime.now()).replaceAll("AM", "오전").replaceAll("PM", "오후"),
          text: mtext));
    });
  }

}
