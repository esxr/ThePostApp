import 'package:flutter/material.dart';
import 'package:thepostapp/views/WebView.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: WebViewContainer("https://app.themitpost.com/about"),
    );
  }
}