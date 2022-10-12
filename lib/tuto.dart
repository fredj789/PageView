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
          // leading: IconButton(
          // icon: Icon(Icons.arrow_back),
          //onPressed: () {},
          //),
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
        drawer: Drawer(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text("w"),
                  ),
                  accountName: Text("Jomaa Fredj"),
                  accountEmail: Text("Email")),
              const ListTile(
                title: Text("Page Home "),
                leading: Icon(Icons.home),
              ),
              const ListTile(
                title: Text("Help "),
                leading: Icon(Icons.help),
              ),
              const ListTile(
                title: Text("LOGOUT "),
                leading: Icon(Icons.login_outlined),
              ),
            ],
          ),
        ),

        //endDrawer: Drawer(), modier laa position de drawer
        body: Container(
            padding: EdgeInsets.all(10),
            child: Text("My name is fredj jomaa")));
  }
}
//leading et drawer ne marche pas ensemble
//endDrawer elle est utulisser pour modifier la position de drawer
