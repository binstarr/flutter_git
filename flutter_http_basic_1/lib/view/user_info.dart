import 'package:flutter/material.dart';
import 'package:flutter_http_basic_1/controller/user_controller.dart';
import 'package:flutter_http_basic_1/repository/user_repository.dart';

class UserInfo extends StatelessWidget {
  UserInfo({Key? key}) : super(key: key);

  // DI - Dependency Injection
  final _controller = UserController(UserRepository());

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) {
        var user = snapshot.data;
        if (user == null || snapshot.connectionState != ConnectionState.done) {
          return Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          );
        }
        return Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
          child: DefaultTextStyle(
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
            child: Column(
              children: [
                Text(user.id.toString()),
                Text(user.name.toString()),
                Text(user.email.toString()),
                Text(user.phone.toString()),
                Text(user.city.toString()),
              ],
            ),
          ),
        );
      },
      future: _controller.fetchUser(2),
    );
  }
}
