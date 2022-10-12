import 'package:flutter/material.dart';

class MyTest extends StatefulWidget {
  const MyTest({super.key});

  @override
  State<MyTest> createState() => _MyTestState();
}

class _MyTestState extends State<MyTest> {
  GlobalKey<ScaffoldState> scafoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawerScrimColor: Colors.red,
        key: scafoldkey,
        appBar: AppBar(),
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
        body: Center(
          child: Container(
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                scafoldkey.currentState!.openDrawer();
              },
              child: Text("open Drawer"),
            ),
          ),
        ));
  }
}
//leading et drawer ne marche pas ensemble
//endDrawer elle est utulisser pour modifier la position de drawer
