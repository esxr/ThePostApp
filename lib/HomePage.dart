import 'package:flutter/material.dart';
import 'package:thepostapp/components/BottomNavPopUpMenu/BottomNavPopUpMenu.dart';
import 'package:thepostapp/tabs/About.dart';
import 'package:thepostapp/tabs/Articles.dart';
import 'package:thepostapp/tabs/Events.dart';
import 'package:thepostapp/tabs/Notices.dart';
import 'package:thepostapp/tabs/Privacy.dart';
import 'package:thepostapp/tabs/SLCM.dart';
import 'package:thepostapp/tabs/placeHolderTab.dart';
import 'package:thepostapp/ui/SlcmAttendanceCard.dart';

class Home extends StatefulWidget {
  @override
  MyHomeState createState() => MyHomeState();
}

// SingleTickerProviderStateMixin is used for animation
class MyHomeState extends State<Home> with SingleTickerProviderStateMixin {
  Widget currentTab = Articles();

  changeTab(Widget tab) {
    setState(() {
      currentTab = tab;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentTab,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 70,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                  onPressed: () {
                    changeTab(Articles());
                  },
                  icon: Icon(Icons.home)),
              IconButton(
                  onPressed: () {
                    changeTab(SLCM());
                  },
                  icon: Icon(Icons.person)),
              BottomNavPopUpMenu(),
              IconButton(
                  onPressed: () {
                    changeTab(Events());
                  },
                  icon: Icon(Icons.calendar_today)),
              IconButton(
                  onPressed: () {
                    changeTab(Notices());
                  },
                  icon: Icon(Icons.notifications)),
            ],
          ),
        ),
        shape: CircularNotchedRectangle(),
        color: Colors.blueGrey[50],
      ),
    );
  }
}
