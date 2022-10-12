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
        appBar: AppBar(
          title: Text("Home Page"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.alarm)),
            IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app)),
          ],
          elevation: 20, // l'ombre
          shadowColor: Colors.red, // le couleur de l 'ombre
          backgroundColor: Colors.green, // This color of the appbar
          brightness: Brightness.dark, // le bar ou se trouve le batterie
          centerTitle: true, // le titre de app est au centre
        ),
        //drawer: Drawer(),
        body: Container(
            padding: EdgeInsets.all(10),
            child: Text("My name is fredj jomaa")));
  }
}
//
