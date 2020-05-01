import 'package:flutter/material.dart';
import 'package:thepostapp/adapters/slcmAdapter.dart';
import 'package:thepostapp/api/slcmApi.dart';
import 'package:thepostapp/components/Layout.dart';
import 'package:thepostapp/ui/SlcmCard/SlcmCard.dart';

class SLCM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SLCM", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Layout(
        api: slcmApiAttendance(),
        adapter: SlcmAdapter(),
        ui: SlcmCard(),
      ),
    );
  }
}
