import 'package:flutter/material.dart';
import 'package:thepostapp/adapters/articleAdapter.dart';
import 'package:thepostapp/api/articlesApi.dart';
import 'package:thepostapp/components/Layout.dart';
import 'package:thepostapp/ui/Article/Article.dart';

class Articles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Headlines", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Layout(
        api: articlesApi(),
        adapter: ArticleAdapter(),
        ui: Article(),
      ),
    );
  }
}
