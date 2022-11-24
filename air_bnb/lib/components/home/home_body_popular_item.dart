import 'package:air_bnb/constants.dart';
import 'package:air_bnb/size.dart';
import 'package:air_bnb/styles.dart';
import 'package:flutter/material.dart';

class HomeBodyPopularItem extends StatelessWidget {
  HomeBodyPopularItem({Key? key, required this.id}) : super(key: key);

  final id;
  final popularList = ["p1.jpeg", "p2.jpeg", "p3.jpeg"];

  @override
  Widget build(BuildContext context) {
    double popularItemWidth = (getBodyWidth(context) / 3) -10;

    return Container(
      constraints: BoxConstraints(
        // 최대 크기를 지정할 때 사용
        minWidth: 320,
      ),
      child: SizedBox(
        width: popularItemWidth,
        child: Column(
          children: [
            _buildPopularItemImage(),
            _buildPopularItemStar(),
            _buildPopularItemComment(),
            _buildPopularItemUserInfo(),
          ],
        ),
      ),
    );
  }

  Widget _buildPopularItemImage() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            'assets/${popularList[id]}',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: gap_s,
        ),
      ],
    );
  }

  Widget _buildPopularItemStar() {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
          ],
        ),
        SizedBox(
          height: gap_s,
        ),
      ],
    );
  }

  Widget _buildPopularItemComment() {
    return Column(
      children: [
        Text(
          'asdasdasasdasdasdasdasdasdasdhjgasdjhagsdhjasgdhjasgdjahsgdajhsdgasjhdgasdasdasdasdasdasdasdd',
          style: body1(),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: gap_s,
        ),
      ],
    );
  }

  Widget _buildPopularItemUserInfo() {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/p1.jpeg'),
            ),
            SizedBox(
              width: gap_s,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'binstarr',
                  style: subtitle1(),
                ),
                Text(
                  ' 한국',
                  style: subtitle2(),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: gap_l,
        ),
      ],
    );
  }
}
