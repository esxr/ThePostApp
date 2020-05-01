import 'package:flutter/material.dart';
import 'package:thepostapp/tabs/About.dart';
import 'package:thepostapp/tabs/Articles.dart';
import 'package:thepostapp/tabs/Events.dart';
import 'package:thepostapp/tabs/Notices.dart';
import 'package:thepostapp/tabs/Privacy.dart';
import 'package:thepostapp/tabs/placeHolderTab.dart';

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
      body: TabBarView(
        children: <Widget>[
          // PDFViewContainer("https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf"),
          // PDFViewContainer("https://bit.ly/2qiV0gZ"),
          PlaceHolderTab(),
          PlaceHolderTab(),
          PlaceHolderTab()
        ],
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