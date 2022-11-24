import 'package:flutter/material.dart';
import 'package:flutter_basic_http5/models/post_req.dart';
import 'package:flutter_basic_http5/models/request_post.dart';
import 'package:flutter_basic_http5/pages/real_home.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var authCode = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.yellowAccent)),
              onPressed: () {
                getPosts();
              },
              child: Text("정보 조회")),
          SizedBox(
            width: 50,
          ),
          TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.yellowAccent)),
              onPressed: () {
                createUser();
              },
              child: Text("회원가입")),
          SizedBox(
            width: 50,
          ),
          TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.yellowAccent)),
              onPressed: () {
                userInfo();
              },
              child: Text("로그인")),
          SizedBox(
            width: 50,
          ),
          TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.yellowAccent)),
              onPressed: () {
                putUserInfo(authCode,120);
              },
              child: Text("정보 수정")),

          TextButton(
              style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(Colors.yellowAccent)),
              onPressed: () {
                postSomthing();
              },
              child: Text("게시글 적기")),
          TextButton(
              style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(Colors.yellowAccent)),
              onPressed: () {
                readPost();
              },
              child: Text("게시글 조회")),
        ],
      ),
    );
  }

  getPosts() async {
    var uri = Uri.parse(BASE_URL + "/init/user");
    await http.get(uri).then((value) {
      print(value.statusCode);
      print(value.body);
    }, onError: (error) {
      print(error);
    });
  }

  createUser() async {
    var uri = Uri.parse(BASE_URL + "/join");
    var requestPostObj = RequestPost(
        username: "test",
        password: "1234",
        email: "test@naver.com");
    var headerMsg = {'Content-type': 'application/json; charset=UTF-8'};
    var insertInfo = convert.jsonEncode(requestPostObj.insertInfo());

    await http.post(uri, body: insertInfo, headers: headerMsg).then((value) {});
  }
  
   userInfo() async{
    var uri = Uri.parse(BASE_URL + "/login");
    var requestPostObj = RequestPost(
      username: "test",
      password: "1234",
    );
    var headerMsg = {'Content-type': 'application/json; charset=UTF-8'};
    var idPw = convert.jsonEncode(requestPostObj.login());
    await http.post(
      uri,
      headers: headerMsg,
      body: idPw
    ). then((value) {
      print('로그인 성공');
      print(value.headers);
      print(value.body);
      authCode = value.headers['authorization'].toString();
      print('authCode : $authCode');
    });
  }
  
  putUserInfo(String authCode,var id) async{

    var uri = Uri.parse(BASE_URL + "/user/$id");
    var requestObj = RequestPost(password: "binstarr", email: "123123123123123@naver.com");
    var headerMsg = {
    'Content-type': 'application/json; charset=UTF-8',
      "authorization" : authCode
    };
    var jsonEncodeResult = convert.jsonEncode(requestObj.put());
    await http.put(
        uri,
        headers: headerMsg,
        body: jsonEncodeResult,

    ).then((value) {
      print('authCode : $authCode');
      print('내용 : ${value.body}');
    });
  }
  postSomthing() async{
    var uri = Uri.parse(BASE_URL + "/post");
    var postObj = PostReq(title: "이게 맞을까", content: "맞구나~");
    var headerMsg = {'Content-type': 'application/json; charset=UTF-8', 'authorization' : '${authCode}'};
    var jsonEncodeResult = convert.jsonEncode(postObj.post());
    await http.post(
        uri,
        body: jsonEncodeResult,
        headers: headerMsg
    ).then((value) {
      print('authCode : $authCode');
      print('내용 : ${value.body}');
    });
  }

  readPost() async{
    var uri = Uri.parse(BASE_URL + "/init/post");
    await http.get(uri).then((value) {
      print(value.body);
    });
  }


} // end of dart
