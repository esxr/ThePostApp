import 'package:flutter/material.dart';
import 'package:thepostapp/adapters/noticeAdapter.dart';
import 'package:thepostapp/api/noticesApi.dart';
import 'package:thepostapp/views/Layout.dart';
import 'package:thepostapp/ui/Notice.dart';

class Notices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notices", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Layout(
        api: noticesApi(),
        adapter: NoticeAdapter(),
        ui: Notice(),
        divider: null,
      ),
    );
  }
}
