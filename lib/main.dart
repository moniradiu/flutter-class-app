import 'package:flutter/material.dart';
import 'dart:ui';
// ignore: unused_import
import 'dart:developer';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // MyHomePage({Key key, this.title}) : super(key: key);

  // final String title;

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
            "Product Data",
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
                          "Fahad Bhuyain",
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
                      Icons.home,
                      color: Colors.green,
                      size: 28,
                    ),
                    title: Text(
                      "Home",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text("Product Page"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.pop(context);
                    }),
                Divider(
                  thickness: 2,
                  color: Colors.grey,
                ),
                ListTile(
                    leading: Icon(
                      Icons.data_usage,
                      color: Colors.red,
                      size: 28,
                    ),
                    title: Text("Product"),
                    subtitle: Text("Product Page"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.pop(context);
                    }),
                Divider(
                  thickness: 2,
                  color: Colors.grey,
                ),
                ListTile(
                    leading: Icon(
                      Icons.login_rounded,
                      color: Colors.teal[200],
                      size: 28,
                    ),
                    title: Text("Log In"),
                    subtitle: Text("Log Page"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.pop(context);
                    }),
                Divider(
                  thickness: 2,
                  color: Colors.grey,
                ),
                ListTile(
                    leading: Icon(
                      Icons.list_alt_rounded,
                      color: Colors.green[900],
                      size: 28,
                    ),
                    title: Text("Sing Up"),
                    subtitle: Text("Fill From Information"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.pop(context);
                    }),
                Divider(
                  thickness: 2,
                  color: Colors.grey,
                ),
                ListTile(
                    leading: Icon(
                      Icons.message,
                      color: Colors.pink[900],
                      size: 28,
                    ),
                    title: Text("Message"),
                    subtitle: Text("check Message Box"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.pop(context);
                    }),
                Divider(
                  thickness: 2,
                  color: Colors.grey,
                ),
                ListTile(
                    leading: Icon(
                      Icons.notifications,
                      color: Colors.blue[700],
                      size: 28,
                    ),
                    title: Text("Notification"),
                    subtitle: Text("Check Updates Information"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.pop(context);
                    }),
                Divider(
                  thickness: 2,
                  color: Colors.grey,
                ),
                ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Colors.purple[900],
                      size: 28,
                    ),
                    title: Text("Setting"),
                    subtitle: Text("please profile seeting"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.pop(context);
                    }),
                Divider(
                  thickness: 2,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[],
          ),
        ),
      ),
    );
  }
}
