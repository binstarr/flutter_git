class User {
  var backgroundImage;
  var name;
  var intro;

  User({this.backgroundImage, required this.name, required this.intro});
}

final String _urlPrefix =
    "https://raw.githubusercontent.com/flutter-coder/ui_images/master/messenger";

// 내정보
User me =
    User(backgroundImage: "${_urlPrefix}_me.jpg", name: "강성빈", intro: "축구 알려드림");

List<User> friends = [
  User(backgroundImage: "${_urlPrefix}_man_1.jpg", name: "손흥민", intro: "월"),
  User(backgroundImage: "${_urlPrefix}_woman_1.jpg", name: "박주영", intro: "드"),
  User(backgroundImage: "${_urlPrefix}_man_2.jpg", name: "차범근", intro: "컵"),
  User(backgroundImage: "${_urlPrefix}_woman_2.jpg", name: "이승우", intro: "16"),
  User(backgroundImage: "${_urlPrefix}_man_3.jpg", name: "이강인", intro: "강"),
  User(backgroundImage: "${_urlPrefix}_woman_3.jpg", name: "박지성", intro: "은"),
  User(backgroundImage: "${_urlPrefix}_man_4.jpg", name: "차두리", intro: "갑"),
  User(backgroundImage: "${_urlPrefix}_woman_4.jpg", name: "황희찬", intro: "니"),
  User(backgroundImage: "${_urlPrefix}_man_5.jpg", name: "정우영", intro: "다"),
  User(backgroundImage: "${_urlPrefix}_woman_5.jpg", name: "메시", intro: "한국 화이팅!!!")
];
