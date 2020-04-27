import 'package:flutter/material.dart';
import 'package:thepostapp/adapters/articleAdapter.dart';
import 'package:thepostapp/api/articlesApi.dart';
import 'package:thepostapp/experimental/Layout.dart';
import 'package:thepostapp/views/Article.dart';

class Articles extends StatefulWidget {
  @override
  _ArticlesState createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {

  @override
  Widget build(BuildContext context) {
    return Layout(
      api: articlesApi(),
      adapter: ArticleAdapter(),
      view: Article()
    );
  }
}