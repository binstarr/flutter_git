import 'package:carror_market_ui/models/product.dart';
import 'package:carror_market_ui/screens/home/components/product_item.dart';
import 'package:carror_market_ui/screens/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "자동",
              style: textTheme().subtitle1,
            ),
            SizedBox(
              width: 40,
            ),
            Icon(CupertinoIcons.chevron_down, size: 15.0)
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.search)),
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.list_dash)),
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bell)),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.grey,
          ),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ProductItem(product: productList[index]);
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 1,
            endIndent: 16,
            color: Colors.grey,
          );
        },
        itemCount: productList.length,
      ),
    );
  }
}
