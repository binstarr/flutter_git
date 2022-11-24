
class Chat{
  String image;
  String title;
  String content;
  String time;
  String count;

  Chat({required this.image,required this.title,required this.content,required this.time,required this.count});
}

//chat 샘플 데이터 만들기
final String _urlPrefix = "https://raw.githubusercontent.com/flutter-coder/ui_images/master/messenger";

List<Chat> chats = [
  Chat(
    image: '${_urlPrefix}_man_1.jpg',
    title: "손흥민",
    content: "오늘 저녁에 한국 축구해요",
    time: "오전 09시 30분",
    count: "0",
  ),

  Chat(
    image: '${_urlPrefix}_woman_1.jpg',
    title: "강성빈",
    content: "이기게 도와드릴까요?",
    time: "오전 10시 30분",
    count: "0",
  )
];