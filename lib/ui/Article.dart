import 'package:flutter/material.dart';

class ArticleAdapter {
  String author, content, imageURL, timestamp, title;

  ArticleAdapter({this.author, this.content, this.imageURL, this.timestamp, this.title});

  factory ArticleAdapter.fromMap(map) {
    return ArticleAdapter(
        title: map['title'] ?? "none",
        author: map['author']['name'] ?? "none",
        content: map['message'] ?? "none",
        imageURL: map['featured_media'] ?? "none",
        timestamp: map['timestamp'] ?? "none"
    );
  }

}

class Article extends StatelessWidget {

  final map;
  ArticleAdapter adapter;

  Article({this.map});

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
    BoxShadow(blurRadius: 1, offset: Offset(0, 0), color: Colors.black12, ),
  ], color: Colors.white);

  @override
  Widget build(BuildContext context) {
    adapter = ArticleAdapter.fromMap(this.map);

    return adapter == null ? Container() : Container( // temporary fix instead of catching errors
      decoration: containerDecoration,
      child: Column(
        // alignment: const FractionalOffset(0, 0.25),
        children: <Widget>[
          SizedBox(height: 10),

          // Image
          Image.network(
            adapter.imageURL,
            colorBlendMode: BlendMode.color,
            color: Colors.red.withAlpha(50),
          ),

          SizedBox(height: 10,),

          // Title
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(adapter.title, style: titleStyle),
          ),
          SizedBox(height: 10,),

          // Author & Timestamp
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(adapter.author, style: authorStyle),
              )),
              Padding(
                padding: const EdgeInsets.only(right: 8, bottom: 8),
                child: Text(
                  adapter.timestamp.toString(),
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
            child: Text(adapter.content, style: contentStyle),
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}