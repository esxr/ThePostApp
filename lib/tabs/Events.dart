import 'package:flutter/material.dart';
import 'package:thepostapp/adapters/eventAdapter.dart';
import 'package:thepostapp/api/eventsApi.dart';
import 'package:thepostapp/views/Layout.dart';
import 'package:thepostapp/ui/Article.dart';

class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(api: eventsApi(), adapter: EventAdapter(), ui: Article());
  }
}