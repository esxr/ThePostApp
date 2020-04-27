import 'package:flutter/material.dart';
import 'package:thepostapp/views/WebView.dart';

// Function used to serve Article class as a parameter
Function Notice() {
  return (data, adapter) => NoticeView(data: data, adapter: adapter);
}

class NoticeView extends StatelessWidget {
  final data, adapter;

  NoticeView({this.data, this.adapter});

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
    var articleAdapter = adapter(data);

    return Container(
      decoration: containerDecoration,
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),

          // Image
          Image.network(
            articleAdapter['imageURL'],
            colorBlendMode: BlendMode.color,
            color: Colors.red.withAlpha(50),
          ),

          SizedBox(
            height: 10,
          ),

          // Title
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(articleAdapter['title'], style: titleStyle),
          ),

          SizedBox(
            height: 10,
          ),

          // Author & Timestamp
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(articleAdapter['author'], style: authorStyle),
              )),
              Padding(
                padding: const EdgeInsets.only(right: 8, bottom: 8),
                child: Text(
                  articleAdapter['timestamp'].toString(),
                  style: timestampStyle,
                  textAlign: TextAlign.right,
                ),
              )
            ],
          ),

          SizedBox(height: 10),

          // Content
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(articleAdapter['content'], style: contentStyle),
          ),

          SizedBox(
            height: 10,
          ),

          // Read More Link
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
              child: Text("Read More...", style: authorStyle),
              onPressed: openWebView(articleAdapter['link'], context)
            ),
          ),
        ],
      ),
    );
  }
}
