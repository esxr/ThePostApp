import 'package:flutter/material.dart';
import 'package:thepostapp/adapters/noticeAdapter.dart';
import 'package:thepostapp/api/noticesApi.dart';
import 'package:thepostapp/views/Layout.dart';
import 'package:thepostapp/ui/Notice.dart';

class Notices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(api: noticesApi(), adapter: NoticeAdapter(), ui: Notice());
  }
}