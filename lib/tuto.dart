import 'package:flutter/material.dart';

class MyTest extends StatefulWidget {
  const MyTest({super.key});

  @override
  State<MyTest> createState() => _MyTestState();
}

class _MyTestState extends State<MyTest> {
  int selectedindex = 0;
  List<Widget> widgetPages = [
    Text(
      "page 1",
      style: TextStyle(fontSize: 40),
    ),
    PageOne(),
  ];
  @override
  //cette function est obligatoire utulisse lorsque on entre a l'application  elle  est obligatooirement utulisser  dans statefull
  void initState() {
    print("Wolcom");
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    // cette nombre est identique au nombre de  whidget tabBar View
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.black,
            backgroundColor: Colors.red,
            selectedLabelStyle: TextStyle(fontSize: 20),
            selectedFontSize: 10,
            currentIndex: selectedindex, // precisser le bottom active
            onTap: (index) {
              setState(() {
                selectedindex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                label: "Wedget one",
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                  label: "Wedget Two", icon: Icon(Icons.contact_emergency)),
            ]),
        body: widgetPages.elementAt(selectedindex));
  }
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Text("Text Tes"),
        Text("Text Tes"),
        Text("Text Tes"),
        Text("Text Tes"),
        Text("Text Tes"),
        Text("Text Tes"),
        Text("Text Tes"),
      ],
    ));
  }
}
