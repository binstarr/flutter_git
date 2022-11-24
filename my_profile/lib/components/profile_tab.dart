import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

// 1. TabBar = 탭의 가로 행을 표시하는 머터리얼 디자인 위젯
// 2. TabBarView = 현재 선택된 탭에 화면을 표시하는 위젯
// - TabBar 위젯과 PabBarView 위젯의 controller 속성에 TabController 객체를 연결하면
//      TabBarView가 선택된 Tab에 따라 화면을 변경하게 된다.

// 3. SingleTickerProviderStateMixin 은 1개의 애니메이션을 가진 위젯을 정의할 때 사용한다.
//      2개 이상의 애니메이션을 가진 위젯을 정의하려면 TickerProviderStateMixin 을 사용해야 한다.
class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  // 메모리에 올라갈 때 한번만 초기화 하는 녀석
  @override
  void initState() {
    // 탭이 몇개인지 알려준다.
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  // 화면에 올라갈 때 마다 초기화 되는 녀석
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _buildTabBar(),
          Expanded(child: _buildTabBarView()),
        ],
      ),
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      controller: _tabController,
      tabs: [
        Tab(
          icon: Icon(Icons.directions_car),
        ),
        Tab(
          icon: Icon(Icons.directions_transit_sharp),
        )
      ],
    );
  }

  Widget _buildTabBarView() {
    return TabBarView(

      // controller를 통해서 탭바랑 연결됨
        controller: _tabController,
        children: [
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
            itemBuilder: (context, index) {
              return Image.network(
                  "https://picsum.photos/id/${index + 1}/200/200");
            },
            itemCount: 40,
          ),
          Container(
            color: Colors.redAccent,
          ),
        ]);
  }
}