import 'package:flutter/material.dart';

class BurgerMenuList extends StatelessWidget {
  const BurgerMenuList({Key? key, required this.imageName, required this.title})
      : super(key: key);

  final String imageName;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(

                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        width: 150,
                        height: 130,
                        child: Image.asset(
                          "assets/${imageName}.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              _burgerInfo(),
            ],
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(right: 35),
            child: Text("빅맥에서 맥스파이시 상하이 버거까지,주문 즉시 바로 조리해 더욱 맛있는, 맥도날드의 다양한 버거를 소개합니다.",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  Widget _burgerInfo() {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(
          height: 50,
        ),
        SizedBox(
          width: 200,
          height: 50,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 20),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
              onPressed: () {
                print("눌러짐");
              },
              child: Text('자세히보기'),
            ),
          ),
        )
      ],
    );
  }
}
