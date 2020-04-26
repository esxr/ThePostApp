import 'package:flutter/material.dart';
import 'package:thepostapp/experimental/layout.dart';

class UI extends StatelessWidget {
  final Future<List<dynamic>> imagesFuture;

  UI({this.imagesFuture});

  Widget layout;

  @override
  Widget build(BuildContext context) {
    layout = Layout(imagesFuture: imagesFuture,);

    return layout;
  }

}