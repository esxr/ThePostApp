import 'package:flutter/material.dart';
import 'package:thepostapp/adapters/eventAdapter.dart';
import 'package:thepostapp/api/eventsApi.dart';
import 'package:thepostapp/components/Layout.dart';
import 'package:thepostapp/ui/Article.dart';

class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Events", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Layout(
        api: eventsApi(),
        adapter: EventAdapter(),
        ui: Article(),
      ),
    );
  }
}
