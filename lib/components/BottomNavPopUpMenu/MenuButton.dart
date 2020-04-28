import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuButton extends StatelessWidget {
  IconData icon;
  String label;
  Widget tab;
  String link;
  Function run;

  MenuButton(this.label, this.icon, {this.tab = null, this.link = null, this.run = null});

  openTab(Widget tab, context) {
    if (tab == null) return null;
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => tab,
        fullscreenDialog: true,
      ),
    );
  }

  openLink(String link, context) async {
    if (link == null) return null;
    if (await canLaunch(link)) {
      await launch(link);
    } else {
      throw 'Could not launch $link';
    }
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        openTab(tab, context); // open tab if tab is specified
        openLink(link, context); // open link if link is specified
        if(run != null) run(); // run custom function (if any)
      },
      child: Column(
        children: <Widget>[
          Icon(
            this.icon,
            size: 50,
          ),
          SizedBox(height: 10,),
          Text(
            this.label,
            style: TextStyle(fontSize: 10),
          )
        ],
      ),
    );
  }
}
