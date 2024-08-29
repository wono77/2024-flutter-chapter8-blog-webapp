import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart'; // WKWebView 사용하기 위한 패키지 추가

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}):super(key:key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

  late final WebViewController webViewController;
  @override
  void initState() {
    super.initState();

    // WebViewController 초기화
    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://blog.codefactory.ai'));
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Code Factory'),
        centerTitle: true,
      ),

      body: WebViewWidget(
        controller: webViewController,
      ),
      //Text('Home Screen'),
    );
  }
}