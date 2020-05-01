import 'package:flutter/material.dart';

class SlcmAttendanceCardView extends StatelessWidget {
  final data, adapter;

  SlcmAttendanceCardView({this.data, this.adapter});

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
    var slcmAttendanceAdapter = adapter(data);

    return Container(
      decoration: containerDecoration,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),

          // Subject Name
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(slcmAttendanceAdapter['subjectName'], style: titleStyle),
          ),

          SizedBox(height: 10),
        ],
      ),
    );
  }
}
