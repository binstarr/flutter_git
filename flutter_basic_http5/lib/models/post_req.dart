import 'package:flutter_basic_http5/models/request_post.dart';

class PostReq {
  var id;
  var title;
  var content;
  late RequestPost user;


  PostReq({this.id, this.title, this.content});

  Map<String, dynamic> post() {
    Map<String, dynamic> data = {};
    data['title'] = title.toString();
    data['content'] = content.toString();
    return data;
  }

  @override
  String toString() {
    return 'PostReq{id: $id, title: $title, content: $content, user: $user}';
  }
}