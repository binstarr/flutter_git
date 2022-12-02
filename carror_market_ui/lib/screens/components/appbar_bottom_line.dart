import 'package:flutter/material.dart';

PreferredSize appBarBottomLine() {
  return PreferredSize(
    child: Divider(thickness: 0.5, height: 0.5, color: Colors.grey,),
    preferredSize: Size.fromHeight(0.5),
  );
}