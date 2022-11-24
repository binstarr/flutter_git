import 'package:air_bnb/size.dart';
import 'package:flutter/material.dart';
import '../../styles.dart';
import 'home_body_popular_item.dart';

class HomeBodyPopular extends StatelessWidget {
  const HomeBodyPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: gap_m,),
          _buildPopularTitle(),
          _buildPopularList(),
        ],
      ),
    );
  }

  Widget _buildPopularTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '한국 숙소에 직접 다녀간 게스트의 후기',
          style: h5(),
        ),
        Text(
          '게스트의 후기 2,500,000개 이상, 평균 평점 5.0',
          style: body1(),
        ),
        const SizedBox(
          height: gap_m,
        ),
      ],
    );
  }

  Widget _buildPopularList(){
    return Wrap(
      children: [
        HomeBodyPopularItem(id: 0),
        SizedBox(width: 7,),
        HomeBodyPopularItem(id: 1),
        SizedBox(width: 7,),
        HomeBodyPopularItem(id: 2),
      ],
    );
  }
}
