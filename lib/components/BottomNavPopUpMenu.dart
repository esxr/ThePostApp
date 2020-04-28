import 'package:flutter/material.dart';

class BottomNavPopUpMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.add),
        onPressed: () {
          showBottomSheet(
              context: context,
              builder: (context) => Container(
                color: Colors.red[100],
                height: 250,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.home),
                        Icon(Icons.hot_tub),
                        Icon(Icons.hourglass_empty),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.home),
                        Icon(Icons.hot_tub),
                        Icon(Icons.hourglass_empty),
                      ],
                    ),
                  ],
                ),
              ));
        });
  }
}