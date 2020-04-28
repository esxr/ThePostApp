import 'package:flutter/material.dart';

// Function used to serve Article class as a parameter
Function Notice() {
  return (data, adapter) => NoticeView(data: data, adapter: adapter);
}

class NoticeView extends StatelessWidget {
  final data, adapter;

  NoticeView({this.data, this.adapter});

  // UI
  TextStyle titleStyle = new TextStyle(
      fontFamily: 'Lato', fontWeight: FontWeight.w500, fontSize: 14);

  BoxDecoration containerDecoration = BoxDecoration(boxShadow: [
    BoxShadow(
      blurRadius: 1,
      offset: Offset(0, 0),
      color: Colors.black12,
    ),
  ], color: Colors.white);

  @override
  Widget build(BuildContext context) {
    var articleAdapter = adapter(data);

    return Container(
      decoration: containerDecoration,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),

          // Title and Quit Icon
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(articleAdapter['title'], style: titleStyle),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8, bottom: 8),
                child: Text(
                  ">",
                  style: titleStyle,
                  textAlign: TextAlign.right,
                ),
              )
            ],
          ),

          SizedBox(height: 10),
        ],
      ),
    );
  }
}
