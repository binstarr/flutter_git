import 'package:flutter/material.dart';
import 'package:flutter_basic_http4/constants.dart';
import 'package:flutter_basic_http4/models/request_post.dart';
import 'package:flutter_basic_http4/models/response_post.dart';
import 'package:flutter_basic_http4/models/todo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InkWell(
            onTap: () {
              // fetchgetTodo(1);
              createPost();
              // putPost(1);
              // deletePost(1);
            },
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }

  fetchgetTodo(var id) async {
    var uri = Uri.parse(BASE_URL1 + "/todos/$id");
    await http.get(uri).then((res) {
      print(res.statusCode);
      print(res.headers);
      print('------------------------');
      // 1. String --> 변환 (c.jsonDec.) --> Map<String, dynamic> 로 들어옴!! --> object
      Map<String, dynamic> bodyMap = convert.jsonDecode(res.body);
      // 반복문이 <--- 리스트 타입이라면
      Todo todo = Todo.fromJson(bodyMap);
      print(todo);
    }, onError: (error) {
      print("실패 사유 : $error");
    });
  }

  createPost() async {
    var uri = Uri.parse(BASE_URL1 + "/posts");
    var requestPostObj = RequestPost(title: "홍길동", body: "날라차기", userId: 10);
    var requestHeaderMsg = {'Content-type': 'application/json; charset=UTF-8'};
    var requestBodyMap = {
      'title': 'foo',
      'body': 'bar',
      'userId': 1,
    };
    // object --> json 형식으로 변경
    // object --> map --> json!!!!
    Map<String, dynamic> objectToMap = {
      'title': requestPostObj.title,
      "body": requestPostObj.body,
      "userId": requestPostObj.userId
    };
    // var jsonEncodePost = convert.jsonEncode(objectToMap);
    var jsonEncodePost = convert.jsonEncode(requestPostObj.toJson());
    await http
        .post(
      uri,
      body: jsonEncodePost,
      headers: requestHeaderMsg,
    )
        .then((res) {
      print(res.statusCode);
      print('-------------------------');
      print(res.body);
      // 응답 데이터 전환
      var resData = ResponsePost.fromJson(convert.jsonDecode(res.body));
      print('최종 결과물');
      print(resData);
    }, onError: (error) {
      print(error);
    });
  }

  putPost(var id) async{
    var uri = Uri.parse(BASE_URL1 + "/posts/$id");
    var requestPostObj = RequestPost(title: "강성빈", body: "후.,...", userId: 10);
    var requestHeaderMsg = {'Content-type': 'application/json; charset=UTF-8'};
    var jsonEncodeResult = convert.jsonEncode(requestPostObj.toJson());
    // Map<String, dynamic> objectToMap = {
    //   "id": requestPostObj.id,
    //   "title": requestPostObj.title,
    //   "body": requestPostObj.body,
    //   "userId": requestPostObj.userId
    // };
    //
    // var jsonEncodePost = convert.jsonEncode(objectToMap);

    await http.put(
        uri,
        headers: requestHeaderMsg,
        body: jsonEncodeResult
    )
        .then((res) {
      print(res.body);
      print(res.body.runtimeType);
      // 응답 데이터 변환
      var resData = ResponsePost.fromJson(convert.jsonDecode(res.body));
      print('최종 결과문 - $resData');

    }, onError: (error){
          print(error);
    });

  }

  deletePost(var id) async{
    var uri = Uri.parse(BASE_URL1 + "/posts/$id");
    await http.delete(uri).then((value) {
      print(value.statusCode);
      print((value.headers['content-length']));
      print(value.headers);
      print(value.body);
    });
  }

}
