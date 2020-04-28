import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {

 IconData icon; String label; Function onPressed;

  MenuButton([this.label = null, this.icon=null, this.onPressed = null]);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: this.onPressed,
      child: Column(
        children: <Widget>[
          Icon(this.icon, size: 50,),
          Text(this.label, style: TextStyle(fontSize: 10),)
        ],
      ),
    );
  }
}
