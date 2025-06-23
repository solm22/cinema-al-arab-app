
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'سينما العرب',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: WebViewApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WebViewApp extends StatefulWidget {
  @override
  _WebViewAppState createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebView(
          initialUrl: 'https://cinemaalarb.blogspot.com/',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
