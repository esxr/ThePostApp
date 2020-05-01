import 'package:flutter/material.dart';
import 'package:thepostapp/adapters/magazineAdapter.dart';
import 'package:thepostapp/api/magazinesApi.dart';
import 'package:thepostapp/components/Layout.dart';
import 'package:thepostapp/ui/Magazine/Magazine.dart';

class Magazines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Magazines", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.35,
          width: MediaQuery.of(context).size.width * 0.35,
          child: Column(
            children: <Widget>[
              Layout(
                api: magazinesApi("annual"),
                adapter: MagazineAdapter(),
                ui: Magazine(),
                direction: Axis.horizontal,
              ),
              Layout(
                  api: magazinesApi("quarterly"),
                  adapter: MagazineAdapter(),
                  ui: Magazine(),
                  direction: Axis.horizontal),
            ],
          ),
        ),
      ),
    );
  }
}
