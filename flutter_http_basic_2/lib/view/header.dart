import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Shimmer.fromColors(
        baseColor: Colors.white,
        highlightColor: Colors.black,
        child: Center(
          child: Text(
            "BW Company",
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
