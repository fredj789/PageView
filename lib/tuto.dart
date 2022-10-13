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
            3, // cette nombre est identique au nombre de  whidget tabBar View
        child: Scaffold(
            appBar: AppBar(
              title: Text("Home Page"),
              bottom: TabBar(
                  //isscroller permet de activer le scroll dans app bar
                  isScrollable: true,
                  // le couleur de trais tab bar
                  indicatorColor: Colors.white,
                  // this size trait  for Tab bar
                  indicatorWeight: 2,
                  // LE COULEUR DE LABEL WHGDGET
                  labelColor: Colors.white,
                  //indicatorPadding: EdgeInsets.all(5),
                  labelStyle: TextStyle(fontSize: 12),
                  tabs: [
                    // le nombre de tab elle sera egal au nombre de whidget
                    Tab(
                      child: Text("Widget one"),
                      icon: Icon(Icons.person),
                    ),
                    Tab(
                      child: Text("Widget Twe"),
                      icon: Icon(Icons.home),
                    ),
                    Tab(
                      child: Text("Widget Tree"),
                      icon: Icon(Icons.perm_camera_mic),
                    ),
                    Tab(
                      child: Text("Widget for"),
                      icon: Icon(Icons.percent_sharp),
                    ),
                  ]),
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
                Container(
                  width: double.infinity,
                  color: Colors.brown,
                  child: Column(children: [
                    Text("Text 3"),
                    Text("Text 4"),
                    Text("Text 5"),
                    Text("Text 6"),
                  ]),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.white,
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
