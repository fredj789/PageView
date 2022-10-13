import 'package:flutter/material.dart';

class MyTest extends StatefulWidget {
  const MyTest({super.key});

  @override
  State<MyTest> createState() => _MyTestState();
}

class _MyTestState extends State<MyTest> {
  @override
  //cette function est obligatoire utulisse lorsque on entre a l'application  elle  est obligatooirement utulisser  dans statefull
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    // cette nombre est identique au nombre de  whidget tabBar View
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: Column(
          children: [
            Container(
              height: 300,
              child: PageView(
                  //reverse: true,
                  //scrollDirection: Axis.vertical,
                  //onPageChanged: (index) {
                  // print(index);
                  // },

                  children: [
                    Text("Page 1", style: TextStyle(fontSize: 20)),
                    Text(
                      "Page 2",
                      style: TextStyle(fontSize: 20),
                    ),
                  ]),
            )
          ],
        ));
  }
}
