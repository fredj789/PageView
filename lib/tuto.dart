import 'package:flutter/material.dart';

class MyTest extends StatefulWidget {
  const MyTest({super.key});

  @override
  State<MyTest> createState() => _MyTestState();
}

class _MyTestState extends State<MyTest> {
  @override
  Widget build(BuildContext context) {
    List user = ["Aman allah", "Fredj ", "Molka", "Fatma"];
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          padding: EdgeInsets.all(10),
          child: GridView.count(
              crossAxisCount: 2, //le nombre de colone
              crossAxisSpacing: 3, // espaace entre container
              children: [
                Container(
                  color: Colors.red,
                  height: 200,
                  child: Text(
                    "Container one",
                  ),
                ),
                Container(
                  color: Colors.blue,
                  height: 200,
                  child: Text(
                    "Container two",
                  ),
                ),
                Container(
                  color: Colors.yellowAccent,
                  height: 200,
                  child: Text(
                    "Container three",
                  ),
                ),
                Container(
                  color: Colors.amber,
                  height: 200,
                  child: Text(
                    "Container for",
                  ),
                ),
                Container(
                  color: Colors.brown,
                  height: 200,
                  child: Text(
                    "Container five",
                  ),
                ),
              ]),
        ));
  }
}
//Liste Generate ==> Loop LIKE WHILE FOR DO  WHILE
