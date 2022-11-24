import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildHeaderAvatar(),
        _buildHeader(),
      ],
      // 동그란 이미지
      // 이름
    );
  }

  Widget _buildHeaderAvatar() {
    return SizedBox(
      width: 100,
      height: 100,
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/faker.png"),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "이상혁",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "프로게이머/GOAT",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          "레전드",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
