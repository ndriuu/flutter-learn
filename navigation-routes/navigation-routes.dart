import "package:flutter/material.dart";
void main(){
  runApp(new MaterialApp(
    home: new pageOne(),
    title: "Navigasi",
    routes: <String, WidgetBuilder>{
      '/pageOne': (BuildContext context) => new pageOne(),
      '/pageTwo': (BuildContext context) => new pageTwo(),
    },
  ));
}

class pageOne extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("MUSIC"),),
      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.headset, size: 50.0,),
          onPressed: (){
            Navigator.pushNamed(context, '/pageTwo');
          },
        ),
      ),
    );
  }
}

class pageTwo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("Speaker"),),
      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.speaker, size: 50.0, color: Colors.red),
          onPressed: (){
            Navigator.pushNamed(context, '/pageOne');
          },
        ),
      ),
    );
  }
}