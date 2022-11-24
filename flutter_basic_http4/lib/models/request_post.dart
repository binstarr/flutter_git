class RequestPost{
  var id;
  var title;
  var body;
  var userId;

  RequestPost({this.id, this.title, this.body, this.userId});

  // 기능 추가
  Map<String, dynamic> toJson(){
    Map<String, dynamic> data = {};
    data['id'] = id.toString();
    data['title'] = title.toString();
    data['body'] = body.toString();
    data['userId'] = userId.toString();
    return data;
  }

  @override
  String toString() {
    return 'RequestPost{title: $title, body: $body, userId: $userId}';
  }
}