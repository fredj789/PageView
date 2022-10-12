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
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
              children: List.generate(user.length, (index) {
                // LE NOMBRE DE CONTAINNER
                return Container(
                  child: Text("${user[index]}"),
                  color: Colors.red,
                  height: 100,
                );
              }),
            )));
  }
}
//Liste Generate ==> Loop LIKE WHILE FOR DO  WHILE
