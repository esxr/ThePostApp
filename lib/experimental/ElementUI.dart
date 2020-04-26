import 'package:flutter/material.dart';

class ElementAdapter {
  String author, content, imageURL, timestamp;
  int id;

  ElementAdapter({this.author, this.content, this.id, this.imageURL, this.timestamp});

  factory ElementAdapter.fromJson(Map<String, dynamic> json) {
    return ElementAdapter(
        author: json['author'],
        content: json['content'],
        id: json['id'],
        imageURL: json['imageURL'],
        timestamp: json['timestamp']
    );
  }
}

class ElementUI extends StatelessWidget {
  final ElementAdapter feedItem;

  ElementUI({this.feedItem});

  // UI
  TextStyle timestamp = new TextStyle(
      fontFamily: 'Lato', fontWeight: FontWeight.w300, fontSize: 12);

  TextStyle author = new TextStyle(
      fontFamily: 'Lato', fontWeight: FontWeight.w700, fontSize: 15);

  TextStyle description = new TextStyle(
      fontFamily: 'Lato', fontWeight: FontWeight.w300, fontSize: 14);

  BoxDecoration containerDecoration = BoxDecoration(boxShadow: [
    BoxShadow(blurRadius: 1, offset: Offset(0, 0), color: Colors.black12, ),
  ], color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: containerDecoration,
      child: Column(
        // alignment: const FractionalOffset(0, 0.25),
        children: <Widget>[
          SizedBox(height: 10,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(feedItem.author, style: author),
              )),
              Padding(
                padding: const EdgeInsets.only(right: 8, bottom: 8),
                child: Text(
                  feedItem.timestamp,
                  style: timestamp,
                  textAlign: TextAlign.right,
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Image.network(
            feedItem.imageURL,
            colorBlendMode: BlendMode.color,
            color: Colors.red.withAlpha(50),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(feedItem.content, style: description),
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}