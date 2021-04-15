import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Class App Demo',
      home: MyHomePage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      //child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Drawer Example",
          style: TextStyle(color: Colors.black),
        ),
      ),
      drawer: Drawer(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    Image.asset("assets/img.jpg"),
                    Positioned(
                      left: 90,
                      top: 10,
                      child: CircleAvatar(
                        radius: 45,
                        child: Image.asset("assets/avatar1.png"),
                      ),
                    ),
                    Positioned(
                      left: 70,
                      top: 95,
                      child: Text(
                        "Sirajum Munira",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Pacifico",
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 70,
                      top: 120,
                      child: Text(
                        "Flutter Developer",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "SourceSansPro",
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.green,
                ),
                title: Text("Profile"),
                subtitle: Text("This is Female"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(
                thickness: 2,
                height: 0,
                color: Colors.grey,
              ),
              ListTile(
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.red,
                ),
                title: Text("Profile"),
                subtitle: Text("This is Female"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(
                thickness: 2,
                height: 0,
                color: Colors.grey,
              ),
              ListTile(
                leading: Icon(
                  Icons.notifications,
                  color: Colors.teal,
                ),
                title: Text("Profile"),
                subtitle: Text("This is Female"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(
                thickness: 2,
                height: 0,
                color: Colors.grey,
              ),
              ListTile(
                leading: Icon(
                  Icons.contacts,
                  color: Colors.lime,
                ),
                title: Text("Profile"),
                subtitle: Text("This is Female"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(
                thickness: 2,
                height: 0,
                color: Colors.grey,
              ),
              ListTile(
                leading: Icon(
                  Icons.event,
                  color: Colors.redAccent,
                ),
                title: Text("Profile"),
                subtitle: Text("This is Female"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(
                thickness: 2,
                height: 0,
                color: Colors.grey,
              ),
              ListTile(
                leading: Icon(
                  Icons.mail,
                  color: Colors.blueGrey,
                ),
                title: Text("Profile"),
                subtitle: Text("This is Female"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(
                thickness: 2,
                height: 0,
                color: Colors.grey,
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.cyan,
                ),
                title: Text("Profile"),
                subtitle: Text("This is Female"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(
                thickness: 2,
                height: 0,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
