import 'package:flutter/material.dart';
import 'package:thepostapp/adapters/articleAdapter.dart';
import 'package:thepostapp/api/articlesApi.dart';
import 'package:thepostapp/views/Layout.dart';
import 'package:thepostapp/ui/Article.dart';

class Articles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(api: articlesApi(), adapter: ArticleAdapter(), ui: Article());
  }
}