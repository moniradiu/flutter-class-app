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
      // backgroundColor: Colors.white,
      backgroundColor: Colors.purple,

      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/avatar.png"),
            ),
            Text(
              "Miss.Munira",
              style: TextStyle(
                fontFamily: "Pacifico",
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Flutter Developer",
              style: TextStyle(
                fontFamily: "SourceSansPro",
                fontSize: 24,
                color: Colors.white,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              thickness: 3,
              color: Colors.purple.shade400,
              indent: 100,
              endIndent: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              // elevation: 10,
              // color: Colors.teal,

              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 56,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(children: [
                  Icon(
                    Icons.phone,
                    color: Colors.purple,
                    size: 28,
                  ),
                  SizedBox(
                    width: 20,
                    //height: 20,
                  ),
                  Text(
                    "+01303457400",
                    style: TextStyle(
                      fontFamily: "SourceSansPro",
                      fontSize: 24,
                      color: Colors.purple,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Card(
              // elevation: 10,
              // color: Colors.teal,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 56,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(children: [
                  Icon(
                    Icons.email,
                    color: Colors.purple,
                    size: 28,
                  ),
                  SizedBox(
                    width: 20,
                    //height: 20,
                  ),
                  Text(
                    "moniradiu@gmail.com",
                    style: TextStyle(
                      fontFamily: "SourceSansPro",
                      fontSize: 24,
                      color: Colors.purple,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
