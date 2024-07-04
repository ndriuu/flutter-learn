import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    title: "Card & Parsing ",
    home: new PageOne(),
  ));
}

class PageOne extends StatelessWidget{
  @override
  Widget build(BuildContext  context){
    return new Scaffold(
        appBar: new AppBar(title: new Text("Card & Parsing"),),
        body: new Container(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new MyCard(icon: Icons.home, teks: "Home", color: Colors.brown),
                new MyCard(icon: Icons.favorite, teks: "Favorite", color: Colors.pink),
                new MyCard(icon: Icons.place, teks: "Place", color: Colors.blue)
              ],
            )

        )
    );
  }
}

class MyCard extends StatelessWidget{
  MyCard ({required this.icon, required this.teks,required this.color});
  final IconData icon;
  final String teks;
  final Color color;
  @override
  Widget build(BuildContext context){
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
          child:
          new Column(
            children: <Widget>[
              new Icon(icon, size: 50.0, color: color),
              new Text(teks, style: new TextStyle(fontSize: 20.0),)
            ],
          )),
    );
  }
}