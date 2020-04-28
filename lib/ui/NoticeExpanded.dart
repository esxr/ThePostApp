import 'package:flutter/material.dart';
import 'package:thepostapp/views/PDFView.dart';
import 'package:thepostapp/views/WebView.dart';

// Function used to serve Article class as a parameter
Function NoticeExpanded() {
  return (data, adapter) => NoticeViewExpanded(data: data, adapter: adapter);
}

class NoticeViewExpanded extends StatelessWidget {
  final data, adapter;

  NoticeViewExpanded({this.data, this.adapter});

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
                  "(X)",
                  style: timestampStyle,
                  textAlign: TextAlign.right,
                ),
              )
            ],
          ),

          SizedBox(height: 10),

          // Date
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(articleAdapter['date'], style: timestampStyle),
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

          // Image
          (articleAdapter['imageURL'] == "")
              ? PDFViewContainer(articleAdapter['pdfURL'])
              : Image.network(
                  articleAdapter['imageURL'],
                  colorBlendMode: BlendMode.color,
                  color: Colors.red.withAlpha(50),
                ),

          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
