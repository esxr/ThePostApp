import 'package:flutter/material.dart';
import 'package:thepostapp/views/WebView.dart';

class Privacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: WebViewContainer("https://app.themitpost.com/policy"),
    );
  }
}