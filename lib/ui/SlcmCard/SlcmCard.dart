import 'package:flutter/material.dart';
import 'package:thepostapp/api/slcmApiFix.dart';
import 'package:thepostapp/ui/SlcmCard/SlcmAttendanceCardView.dart';
import 'package:thepostapp/ui/SlcmCard/SlcmMarksCardView.dart';

// Function used to serve SlcmAttendanceCard class as a parameter
Function SlcmCard() {
  return (data, adapter) => SlcmCardView(data: data, adapter: adapter);
}

class SlcmCardView extends StatefulWidget {
  final data, adapter;
  SlcmCardView({this.data, this.adapter});

  @override
  _SlcmCardViewState createState() => _SlcmCardViewState();
}

class _SlcmCardViewState extends State<SlcmCardView> {
  bool marks = false;
  var internalMarksElementData;

  void setInternalMarksElement() async {
    internalMarksElementData = await findInternalMarksElement(widget.data);
  }

  @override
  void initState() {
    super.initState();
    setInternalMarksElement();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          marks = !marks;
        });
      },
      child: Container(
        child: (marks)
            ? SlcmMarksCardView(
                data: internalMarksElementData, adapter: widget.adapter)
            : SlcmAttendanceCardView(
                data: renameIfLab(widget.data), adapter: widget.adapter),
      ),
    );
  }
}
