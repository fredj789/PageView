import 'package:flutter/material.dart';

class MyTest extends StatefulWidget {
  const MyTest({super.key});

  @override
  State<MyTest> createState() => _MyTestState();
}

class _MyTestState extends State<MyTest> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length:
            2, // cette nombre est identique au nombre de  whidget tabBar View
        child: Scaffold(
            appBar: AppBar(
              title: Text("Home Page"),
            ),
            drawer: Drawer(),
            body: TabBarView(
              children: [
                Container(
                  width: double.infinity,
                  color: Colors.red,
                  child: Column(children: [
                    Text("Text 1"),
                    Text("Text 2"),
                    Text("Text 3"),
                    Text("Text 2"),
                  ]),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: Column(children: [
                    Text("Text 3"),
                    Text("Text 4"),
                    Text("Text 5"),
                    Text("Text 6"),
                  ]),
                ),
              ],
            )));
  }
}
