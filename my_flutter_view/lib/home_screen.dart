import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  WebViewController? mController;
  String homeUrl = "https://blog.naver.com/tjdqls2s";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebView(
          // controller - 위젯들을 프로그램적으로 조정할 수 있는 기능을 제공해주는 녀석이다.
          // controller 받으면
          onPageStarted: (url) {
            print("url : $url");
          },
          onWebViewCreated: (controller){
            this.mController = controller;
          },
          initialUrl: homeUrl,
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
