import 'package:flutter/material.dart';
import 'package:flutter_http_3/models/photos_list.dart';
import 'package:flutter_http_3/models/todo.dart';
import 'package:flutter_http_3/models/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    fetchUsers();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Container(
          width: 50,
          height: 50,
          color: Colors.orange[300],
        ),
      ),
    );
  }

  fetchTodos() async{
    // Todo 클래스만 담을 빈 배열 생성
    List<Todo> todoList = [];
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/todos');
    var response = await http.get(uri);
    print(response.statusCode);

    if(response.statusCode == 200){
      // print(convert.jsonDecode(response.body).runtimeType);
      List listData = convert.jsonDecode(response.body);
      for (var e in listData) {
        // print('data Type check : ${e.runtimeType}');
        // print('data : ${e}');
        // print('---------------------------------------------');
        // {userId: 1, id: 6, title: qui ullam ratione quibusdam voluptatem quia omnis, completed: false}
        // 1단계
        // todoList.add(Todo(userId : 10, id: 10, title: "asdasd", completed: false ));  <--- 이렇게 담아야 하는데 반복문에 넣어서 저절로 들어가게 하려면
        //todoList.add(Todo(userId : e['userId'], id: e['id'], title: e['title'], completed: e['completed'])); // <--이렇게 담는다.
        // Todo todo = Todo.init(userId:e['userId'], title: e['title'], completed: e['completed']);

        // 2단계
        todoList.add(Todo.fromJson(e));
      }
    }
    print('통신 끝나고 자료구조에 데이터 담음 !!');
    print(todoList.length);
    print(todoList);

  }
  
  fetchPhotos() async{
    List<PhotosList> photosList = [];
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/photos');
    var response = await http.get(uri);
    print(response.statusCode);
    print(response.body.runtimeType);
    // print(response.body);
    if(response.statusCode == 200){
    print(convert.jsonDecode(response.body).runtimeType);
    List photoList = convert.jsonDecode(response.body);

    photoList.forEach((e) {
      // print('key : $e'); // List 안에 Map이 있다!
      // print(e.runtimeType);
      // Map<String, dynamic> map1 = e;
      // print(map1['id']);
      photosList.add(PhotosList.fromJson(e));
    });
    print(photosList);

    }
  }

  fetchUsers() async{
    List<User> userList = [];
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/users');
    var response = await http.get(uri);
    if(response.statusCode == 200){
      List<dynamic> list = convert.jsonDecode(response.body);
      for (var element in list) {
        userList.add(User.fromJson(element));
      }
    }else {
      throw Exception('fail load : ${response.statusCode}');
    }
    for( var i = 0; i < 2; i ++){
      print(userList[i]);
      print('-------------------------');
    }
  }

}
