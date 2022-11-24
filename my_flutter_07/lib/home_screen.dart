import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key, required this.mColor}) : super(key: key);
  final Color mColor;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color color;
  _HomeScreenState(this.color);

  // 3:단 한번만 호출되어 진다.
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  //4
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
  // 5 : dirty

  // 6
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.mColor,
    );
  }

  //7 : clean
  // 8
@override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  // 9 : 자기가 메모리에서 내려갔을 때 호출되어지는 녀석 --> 사라질 때
  // ex ) IO 호출되어지고 끝날 때 --> 닫아질 때  또는 무엇을 끌 때 상태값이나 그런 정보들을 저장해야 한다면
@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
