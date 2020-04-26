import 'dart:async';
import 'package:flutter/material.dart';
import 'package:thepostapp/experimental/adapter.dart';

class Layout extends StatefulWidget {
  final Future<List<dynamic>> imagesFuture;

  Layout({this.imagesFuture});

  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> with AutomaticKeepAliveClientMixin<Layout> {

  bool keepAlive = false;

  @override
  bool get wantKeepAlive => keepAlive;

  @override
  void initState() {
    super.initState();

    keepAlive = true;
    updateKeepAlive();
  }
  
  @override
  void dispose() {
    keepAlive = false;
    updateKeepAlive();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFAFAFA),
      child: Center(
        child: FutureBuilder<List<dynamic>>(
          future: widget.imagesFuture,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<dynamic> feed = snapshot.data;

              return ListView.separated(
                itemCount: feed.length,
                itemBuilder: (context, index) {
                  return new Image.network(feed[index].toString());
                },
                separatorBuilder: (context, index) {
                    // return SizedBox(height: 50, child: Container(color: Color(0xFFFAFAFA),));
                    return Divider(color: Colors.white.withAlpha(0),);
                },
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner.
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}