import 'package:flutter/material.dart';

class ChatMessage {
  final String sender;
  final String profileImage;
  final String location;
  final String sendDate;
  final String message;
  final String? imageUri;

  ChatMessage(
      {required this.sender,
        required this.profileImage,
        required this.location,
        required this.sendDate,
        required this.message,
        this.imageUri});
}

List<ChatMessage> chatMessageList = [
ChatMessage(
sender: '당근당근',
profileImage: 'https://placeimg.com/200/100/people/grayscale',
location: '분당',
sendDate: '2일 전',
message: '물품 있나요?직거래 가능?',
),
ChatMessage(
sender: '사과사과',
profileImage: 'https://placeimg.com/200/100/people',
location: '중동',
sendDate: '1일 전',
message: '안녕하세요 구매 가능할까요? 남자임 asdasdasdasdasdasd !',
imageUri: 'https://placeimg.com/200/100/people'),
];
