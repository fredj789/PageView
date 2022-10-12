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
            child: ListView(
          scrollDirection: Axis.vertical, // pour activer le scroll
          padding: EdgeInsets.all(10), // Espace dans le quatre cot
          physics: BouncingScrollPhysics(), // faire le bombage
          children: [
            Text("Cars"),
            Container(
              height: 210,
              child: ListView(
                // physics: NeverScrollableScrollPhysics(), desable Scroll
                // shrinkWrap: true,
                children: [
                  Container(
                    child: Text("Cars  Mecedess"),
                    color: Colors.red,
                    height: 200,
                  ),
                  Container(
                    child: Text("Cars BMW "),
                    color: Colors.blue,
                    height: 200,
                  ),
                ],
              ),
            ),
            Text("Mobile"),
            Container(
              height: 210,
              child: ListView(
                children: [
                  Container(
                    child: Text("Samsung SX "),
                    color: Colors.brown,
                    height: 200, // OBLIGATION SANS HAUTEUR NE MARCHE PAS
                  ),
                  Container(
                    child: Text("Nokia S20"),
                    color: Colors.yellow,
                    height: 200,
                  )
                ],
              ),
            )
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
