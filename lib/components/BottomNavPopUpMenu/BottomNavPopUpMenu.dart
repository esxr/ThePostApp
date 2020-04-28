import 'package:flutter/material.dart';
import 'package:thepostapp/components/BottomNavPopUpMenu/MenuButton.dart';
import 'package:thepostapp/tabs/About.dart';
import 'package:thepostapp/tabs/Privacy.dart';
import 'package:thepostapp/tabs/placeHolderTab.dart';

class BottomNavPopUpMenu extends StatelessWidget {
  openTab(Widget tab, context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => tab,
        fullscreenDialog: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.keyboard_arrow_up),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                    color: Colors.white,
                    height: 300,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            MenuButton("Privacy", Icons.security),
                            MenuButton("Our Website", Icons.web),
                            MenuButton("About Us", Icons.info_outline),
                            MenuButton("Magazines", Icons.chrome_reader_mode),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            MenuButton("Source Code", Icons.code),
                            MenuButton("Developer", Icons.developer_mode),
                            MenuButton("Academic Calendar", Icons.calendar_view_day),
                            MenuButton("Clear Cache", Icons.delete_forever),
                          ],
                        ),
                      ],
                    ),
                  ));
        });
  }
}
