import 'package:flutter/material.dart';

class SmartPhone extends StatelessWidget {
  const SmartPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0)),
            new Text("SMARTPHONE", style: new TextStyle(fontSize: 30.0),),
            new Padding(padding: new EdgeInsets.all(20.0)),
            new Icon(Icons.smartphone,size: 90.0),
          ],
        ),
      ),
    );
  }
}
