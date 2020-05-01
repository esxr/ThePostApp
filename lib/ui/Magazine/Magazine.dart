import 'package:flutter/material.dart';
import 'package:thepostapp/components/WebView.dart';

// Function used to serve Magazine class as a parameter
Function Magazine() {
  return (data, adapter) => MagazineView(data: data, adapter: adapter);
}

class MagazineView extends StatelessWidget {
  final data, adapter;

  MagazineView({this.data, this.adapter});

  // UI
  TextStyle titleStyle = new TextStyle(
      fontFamily: 'Lato', fontWeight: FontWeight.w700, fontSize: 24);

  TextStyle timestampStyle = new TextStyle(
      fontFamily: 'Lato', fontWeight: FontWeight.w400, fontSize: 12);

  TextStyle authorStyle = new TextStyle(
      fontFamily: 'Lato', fontWeight: FontWeight.w400, fontSize: 15);

  TextStyle contentStyle = new TextStyle(
      fontFamily: 'Lato', fontWeight: FontWeight.w300, fontSize: 14);

  BoxDecoration containerDecoration = BoxDecoration(boxShadow: [
    BoxShadow(
      blurRadius: 1,
      offset: Offset(0, 0),
      color: Colors.black12,
    ),
  ], color: Colors.white);

  @override
  Widget build(BuildContext context) {
    var magazineAdapter = adapter(data);

    return Container(
      decoration: containerDecoration,
      child: Column(
          children: <Widget>[
            SizedBox(height: 10),

            // Image
            Image.network(
      magazineAdapter['imageLink'],
      colorBlendMode: BlendMode.color,
      color: Colors.red.withAlpha(50),
            ),

            SizedBox(height: 10),

            // Title
            Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(magazineAdapter['title'], style: titleStyle),
            ),

            SizedBox(height: 10),
          ],
        ),
    );
  }
}
