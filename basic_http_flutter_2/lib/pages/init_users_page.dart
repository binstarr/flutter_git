import 'package:basic_http_flutter_2/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class InitUsersPage extends StatefulWidget {
  const InitUsersPage({Key? key}) : super(key: key);

  @override
  State<InitUsersPage> createState() => _InitUsersPageState();
}

class _InitUsersPageState extends State<InitUsersPage> {
  var text = '전체 사용자 목록 조회';
  // 메모리에 올라갈 때 한번만 호출되는 메서드
  @override
  void initState() {
    fetchUserList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('사용자 조회'),
      ),
      body: ListView(
        children: [
          Text(text),
        ],
      ),
    );
  }

  // 통신 함수!!
  fetchUserList() async {
    // http://lalacoding.site/init/user
    // 기본 주소는 설정해두었으니 /를 통해서 어디로 들어갈지 정하는
    // var endPoint = "/users";
    var uri = Uri.parse("http://lalacoding.site/init/user");
    var response = await http.get(uri); // 캐스팅
    print(response.statusCode);
    // 방어적 코드
    if (response.statusCode == 200) {
      print(response.body.runtimeType);
      print(response.body);
      // map 구조로 변환이 된다.
      // 첫번째 반복문 시작시 동작
      // key : code
      // value : 1
      //-----------------------------
      // 두번째 반복문 시작시 동작
      // key : msg
      // value : 통신 성공
      //-----------------------------
      // 세번째 반복문 시작시 동작
      // key : data
      // value : [{key: value}.....]
      var jsonRes = convert.jsonDecode(response.body) as Map<String, dynamic>; // 컴파일 시점
      print('--------------------------');
      print(jsonRes.runtimeType);
      print('--------------------------');
      jsonRes.forEach((key, value) {
        // print('key : $key');
        // print('value : ${jsonRes['$key']}');
        // 1. 만약 키가 data라면 추가
        // 2. 화면에 사용자 이름만 출력하시오
        if(key == 'data'){
          print(jsonRes.keys.runtimeType);
          print('-----------여기다음---------------');
          List list = jsonRes['$key'];
          list.forEach((element) {
            print('--------------------------');
            print(element['username']);
          });
        }
      });
    }else{

    }
  }
}
