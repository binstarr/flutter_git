import 'package:carror_market_ui/screens/chatting/models/chat_message.dart';
import 'package:carror_market_ui/screens/components/image_container.dart';
import 'package:carror_market_ui/screens/themes.dart';
import 'package:flutter/material.dart';

class ChatContainer extends StatelessWidget {
  const ChatContainer({Key? key, required this.chatMessage}) : super(key: key);

  final ChatMessage chatMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(color: Colors.grey, width: 0.5),
      )),
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            ImageContainer(
              borderRadius: 25,
              imageUrl: chatMessage.profileImage,
              width: 50,
              height: 50,
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: chatMessage.sender,
                            style: textTheme().bodyText1),
                        TextSpan(text: " "),
                        TextSpan(text: chatMessage.location),
                        TextSpan(text: "* ${chatMessage.sendDate}")
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    chatMessage.message,
                    style: textTheme().bodyText1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            Visibility(
              child: ImageContainer(
                width: 50,
                height: 50,
                borderRadius: 8,
                imageUrl: chatMessage.imageUri??'',
              ),
              visible: chatMessage.imageUri != null,
            )
          ],
        ),
      ),
    );
  }
}
