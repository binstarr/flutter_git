import 'package:flutter/material.dart';

import '../components/home/home_body.dart';
import '../components/home/home_header.dart';

class HomPage extends StatelessWidget {
  const HomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeHeader(),
          HomeBody()
        ],
      ),
    );
  }
}
