import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        actions: const [
          Icon(Icons.info),
        ],
        elevation: 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  "Drawer Header",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
            ),
            ListTile(
              leading: Icon(Icons.list),
              title:Text("Appointments"),
            ),

            ListTile(
              leading: Icon(Icons.notifications_none),
              title:Text("Notifications"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "HOME",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.miscellaneous_services_sharp),
            label: "SERVICES",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper_outlined),
            label: "NEWS",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups_sharp),
            label: "ADVISORY",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper_outlined),
            label: "MEDIA",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment),
            label: "COMPLAINTS",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.report_problem),
            label: "FEEDBACK",
          ),
        ],
      ),
      body: Container(),
    );
  }
}