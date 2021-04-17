import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_app4/page_one.dart';
import 'package:flutter_app4/page_two.dart';

class PageOne extends StatelessWidget {
  static final String path = "PageOne";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Page One",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.teal),
                  shadowColor: MaterialStateProperty.all(Colors.red),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageTwo()));
                },
                child: Text("Page One")),
          ],
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
    );
  }
}
