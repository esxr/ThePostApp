import 'dart:async';
import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  final Future<List<dynamic>> api;
  final Function adapter;
  final Function ui;
  final Widget divider;
  static const defaultDivider = Divider(color: Color.fromARGB(0, 0, 0, 0));

  Layout({this.api, this.adapter, this.ui, this.divider = defaultDivider});

  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout>
    with AutomaticKeepAliveClientMixin<Layout> {
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
          future: widget.api,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<dynamic> data = snapshot.data;

              return ListView.separated(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return widget.ui(data[index], widget.adapter);
                },
                separatorBuilder: (context, index) {
                  // return empty widget if don't want divider
                  return (widget.divider == null)
                      ? Container()
                      : widget.divider;
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
