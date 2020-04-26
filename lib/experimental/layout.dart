import 'dart:async';
import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  final Future<List<dynamic>> api;
  final Function element;

  Layout({this.api, this.element});

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
          future: widget.api,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<dynamic> data = snapshot.data;

              return ListView.separated(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return widget.element(
                    data[index]// gives object of type Map<String, Object>
                  ); 
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