//import 'package:custom_bottom_navigation_bar/custom_bottom_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
// ignore: unused_import
import 'dart:developer';

import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

void main() {
  runApp(MyApp(
      // title:"Drewar App",
      // home:MyHomePage(),
      ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Flutter Drawer Long List",
              style: TextStyle(color: Colors.black),
            ),
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: <Color>[
                    Colors.purple,
                    Colors.purpleAccent,
                  ])),
                  child: Container(
                      child: Column(
                    children: <Widget>[
                      Material(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        elevation: 10,
                        child: Image.asset(
                          "assets/avatar1.png",
                          width: 80,
                          height: 80,
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(8.0)),
                      Text(
                        "Flutter Devloper",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                    ],
                  )),
                ),
                CustomListTile(Icons.person, "Profile", () => {}),
                CustomListTile(Icons.notifications, "Notifications", () => {}),
                CustomListTile(Icons.email, "Email", () => {}),
                CustomListTile(Icons.account_box, "Account", () => {}),
                CustomListTile(Icons.add_box, "Check", () => {}),
                CustomListTile(Icons.message, "Messages", () => {}),
                CustomListTile(Icons.list, "Sing Up", () => {}),
                CustomListTile(Icons.settings, "Settings", () => {}),
                CustomListTile(Icons.login, "Login", () => {}),
                CustomListTile(Icons.lock, "Log Out", () => {}),
              ],
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            ),
          ),
          bottomNavigationBar: FancyBottomNavigation(
            tabs: [
              TabData(iconData: Icons.home, title: "Home"),
              TabData(iconData: Icons.search, title: "Search"),
              TabData(iconData: Icons.shopping_cart, title: "Basket")
            ],
            onTabChangedListener: (position) {
              setState(() {
                // ignore: unused_local_variable
                var currentPage = position;
              });
            },
          )
          // bottomNavigationBar: CurvedNavigationBar(
          //   height: 60,
          //   color: Colors.grey[200],
          //   backgroundColor: Colors.purple,
          //   items: <Widget>[
          //     Icon(Icons.home, size: 30),
          //     Icon(Icons.add_chart, size: 30),
          //     Icon(Icons.list, size: 30),
          //   ],
          //   onTap: (index) {
          //     //Handle button tap
          //   },
          // ),
          ),
    );
  }
}

// ignore: must_be_immutable
class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;

  CustomListTile(this.icon, this.text, this.onTap);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade300))),
        child: InkWell(
          splashColor: Colors.purple,
          //onTap: () => {},
          onTap: () => {Navigator.of(context).pop()},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 50,
                child: Row(
                  children: <Widget>[
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        text,
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    Icon(Icons.arrow_right)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
