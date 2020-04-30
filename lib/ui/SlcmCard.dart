import 'package:flutter/material.dart';
import 'package:thepostapp/api/slcmApiFix.dart';

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



class SlcmAttendanceCardView extends StatelessWidget {
  final data, adapter;

  SlcmAttendanceCardView({this.data, this.adapter});

  // UI
  TextStyle titleStyle = new TextStyle(
      fontFamily: 'Lato', fontWeight: FontWeight.w700, fontSize: 24);

  TextStyle timestampStyle = new TextStyle(
      fontFamily: 'Lato', fontWeight: FontWeight.w400, fontSize: 12);

  TextStyle authorStyle = new TextStyle(
      fontFamily: 'Lato', fontWeight: FontWeight.w400, fontSize: 15);

  TextStyle contentStyle = new TextStyle(
      fontFamily: 'Lato', fontWeight: FontWeight.w300, fontSize: 14);

  BoxDecoration containerDecoration = BoxDecoration(boxShadow: [
    BoxShadow(
      blurRadius: 1,
      offset: Offset(0, 0),
      color: Colors.black12,
    ),
  ], color: Colors.white);

  @override
  Widget build(BuildContext context) {
    var slcmAttendanceAdapter = adapter(data);

    return Container(
      decoration: containerDecoration,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),

          // Subject Name
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(slcmAttendanceAdapter['subjectName'], style: titleStyle),
          ),

          SizedBox(height: 10),
        ],
      ),
    );
  }
}

class SlcmMarksCardView extends StatelessWidget {
  final data, adapter;

  SlcmMarksCardView({this.data, this.adapter});

  // UI
  TextStyle titleStyle = new TextStyle(
      fontFamily: 'Lato', fontWeight: FontWeight.w700, fontSize: 24);

  TextStyle timestampStyle = new TextStyle(
      fontFamily: 'Lato', fontWeight: FontWeight.w400, fontSize: 12);

  TextStyle authorStyle = new TextStyle(
      fontFamily: 'Lato', fontWeight: FontWeight.w400, fontSize: 15);

  TextStyle contentStyle = new TextStyle(
      fontFamily: 'Lato', fontWeight: FontWeight.w300, fontSize: 14);

  BoxDecoration containerDecoration = BoxDecoration(boxShadow: [
    BoxShadow(
      blurRadius: 1,
      offset: Offset(0, 0),
      color: Colors.black12,
    ),
  ], color: Colors.white);

  @override
  Widget build(BuildContext context) {
    var slcmAttendanceAdapter = adapter(data);

    return Container(
      decoration: containerDecoration,
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),

          // Subject Name
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(slcmAttendanceAdapter['subject_name'], style: titleStyle),
          ),

          SizedBox(height: 10),
        ],
      ),
    );
  }
}
