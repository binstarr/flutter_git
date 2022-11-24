import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class InitPostsPage extends StatefulWidget {
  const InitPostsPage({Key? key}) : super(key: key);

  @override
  State<InitPostsPage> createState() => _InitPostsPageState();
}

class _InitPostsPageState extends State<InitPostsPage> {

  @override
  void initState() {
    fetchPostList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('이메일 조회'),
      ),
      body: ListView(
        children: [Text("킇므")],
      ),
    );
  }

  // 통신 함수
  fetchPostList() async{
    var jsonRes2;
    var uri = Uri.parse("http://lalacoding.site/init/post");
    var response = await http.get(uri);
    if(response.statusCode == 200){
      print(response.body.runtimeType);
      var jsonRes = convert.jsonDecode(response.body) as Map<String, dynamic>;
      print(jsonRes.runtimeType);
      print('---------------------------------');
      jsonRes.forEach((key, value) {
        // print('key : $key');
        // print('value : ${jsonRes['$key']}');
        if(key == 'data'){
          List list = jsonRes[key];
          list.forEach((element) {
            // print(element['content']);
            Map<String, dynamic> map1 = element['user'];
            print(map1['email']);
            print(map1['created']);
          });


          // print(jsonRes[key].runtimeType);
          // print('value : ${jsonRes['$key']}');

        }
      });
    }else{

    }
  }
}
