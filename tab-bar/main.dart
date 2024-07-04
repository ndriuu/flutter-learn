import  'package:flutter/material.dart';
import './headsetPage.dart' as headset;
import './radioPage.dart' as radio;
import './computerPage.dart' as computer;
import './smartphonePage.dart' as smartphone;

void main(){
  runApp(new MaterialApp(
    title: "Tab Bar",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  late TabController controller;
  @override
  void initState() {
    controller = new TabController(vsync: this, length: 4);
    super.initState();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: new Text("Daftar Elektronik"),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.computer), text: "Computer",),
            new Tab(icon: new Icon(Icons.headset), text: "Headset",),
            new Tab(icon: new Icon(Icons.radio), text: "Radio",),
            new Tab(icon: new Icon(Icons.smartphone), text: "SmartPhone",),
          ],
        ),
      ),
      body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new computer.Computer(),
            new headset.Headset(),
            new radio.Radio(),
            new smartphone.SmartPhone(),
          ]
      ),
      bottomNavigationBar: new Material(
        color: Colors.amber,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.computer),),
            new Tab(icon: new Icon(Icons.headset),),
            new Tab(icon: new Icon(Icons.radio),),
            new Tab(icon: new Icon(Icons.smartphone),),
          ],
        ),
      ),
    );
  }
}
