import 'package:flutter/material.dart';
import 'package:thepostapp/api/articlesApi.dart';
import 'package:thepostapp/experimental/layout.dart';
import 'package:thepostapp/ui/Article.dart';

class Articles extends StatefulWidget {
  @override
  _ArticlesState createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {

  @override
  Widget build(BuildContext context) {
    return Layout(
      api: articlesApi(), // returns Future<List<Map<String, Object>>> (which is also Future<List<dynamic>> )
      element: (obj) => Article(map: obj)
    );
  }
}