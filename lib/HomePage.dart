import 'package:flutter/material.dart';
import 'package:thepostapp/experimental/ElementUI.dart';
import 'package:thepostapp/experimental/UI.dart';
import 'package:thepostapp/experimental/feeder.dart';
import 'package:thepostapp/experimental/layout.dart';
import 'package:thepostapp/tabs/placeHolderTab.dart';
import 'package:thepostapp/views/webView.dart';

class Home extends StatefulWidget {
  @override
  MyHomeState createState() => MyHomeState();
}

// SingleTickerProviderStateMixin is used for animation
class MyHomeState extends State<Home> with SingleTickerProviderStateMixin {
  // Create a tab controller
  TabController controller;

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        title: Text("The MIT Post"),
        backgroundColor: Colors.blue,
      ),
      body: TabBarView(
        children: <Widget>[WebViewContainer("https://www.google.com"), UI(imagesFuture: fetchFeed(),), PlaceHolderTab()],
        controller: controller,
      ),
      bottomNavigationBar: Material(
        color: Colors.blue,
        child: TabBar(
          tabs: <Tab>[
            Tab(
              icon: Icon(Icons.favorite),
            ),
            Tab(
              icon: Icon(Icons.adb),
            ),
            Tab(
              icon: Icon(Icons.airport_shuttle),
            ),
          ],
          controller: controller,
        ),
      ),
    );
  }
}