import 'package:flutter/material.dart';

class MyTest extends StatefulWidget {
  const MyTest({super.key});

  @override
  State<MyTest> createState() => _MyTestState();
}

class _MyTestState extends State<MyTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
            padding: EdgeInsets.all(10),
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
              children: [
                Container(
                  child: Text("Container one "),
                  height: 200,
                  color: Colors.red,
                ),
                Container(
                  child: Text("Container Two "),
                  height: 200,
                  color: Colors.blue,
                ),
                Container(
                  child: Text("Container Twree "),
                  height: 200,
                  color: Colors.yellow,
                ),
                Container(
                  child: Text("Container for "),
                  height: 200,
                  color: Colors.brown,
                ),
                Container(
                  child: Text("Container five "),
                  height: 200,
                  color: Colors.red,
                ),
              ],
            )));
  }
}
//scrollDirection: Axis.vertical,
//padding: EdgeInsets.all(10),
//reverse: false, //reverser l 'ordre  si true
//physics: BouncingScrollPhysics(), // scrol  elle bombe
//children: [
//ext("Wael"),

//Exemple1: on va ajouter
//Container(
//height: 200, //tres important
// child: ListView(
//physics: NeverScrollableScrollPhysics(), //tres important
//children: [],
//),
