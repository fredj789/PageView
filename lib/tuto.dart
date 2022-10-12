import 'package:flutter/material.dart';

class MyTest extends StatefulWidget {
  const MyTest({super.key});

  @override
  State<MyTest> createState() => _MyTestState();
}

class _MyTestState extends State<MyTest> {
  List mobile = [
    {
      "name": "s20 ultra",
      "screen": "6.1",
      "cpu": "8 core",
    },
    {
      "name": "s21 ultra",
      "screen": "6.2",
      "cpu": "8 core",
    },
    {
      "name": "s10 ultra",
      "screen": "6.3",
      "cpu": "8 core",
    },
    {
      "name": "iphone pro max",
      "screen": "6.7",
      "cpu": "9 core",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: mobile.length, // Ici on va savoir les nombre d 'article
            itemBuilder: (context, i) {
              return ListTile(
                title: Text("${mobile[i]['name']}"),
                subtitle: Text("Screen :${mobile[i]['screen']}"),
                trailing: Text("CPU :${mobile[i]['cpu']}"),
              );
            }));
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
